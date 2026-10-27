""" """

from datetime import datetime
import json
from pathlib import Path
import argparse
from collections.abc import Sequence
import re
import sys
from typing import Callable
import shutil
import subprocess


HOME = Path.home()
TODAY = datetime.today().strftime(r"%Y-%m-%d")
NOW = datetime.now().strftime(r"%Y-%m-%dT%H:%H:%S")
print(NOW)


def find_flakes() -> set[Path] | None:
    if shutil.which("fd") is None:
        print("Warning: 'fd' not found on PATH; skipping discovery.")
        return

    result = (
        subprocess.run(
            ["fd", r"flake.*\.nix", str(Path.home()), "--color", "never"],
            check=False,
            capture_output=True,
        )
        .stdout.decode()
        .strip()
    )

    return set(map(Path, result.splitlines()))


def check(*, hashes: dict[str, str], locations: list[Path]) -> None:
    check_and_maybe_update(
        hashes=hashes, locations=locations, check_only=True, backup_dir=None
    )


def update(
    *, hashes: dict[str, str], locations: list[Path], backup_dir: Path
) -> None:
    check_and_maybe_update(
        hashes=hashes,
        locations=locations,
        check_only=False,
        backup_dir=backup_dir,
    )


def check_and_maybe_update(
    *,
    hashes: dict[str, str],
    locations: list[Path],
    check_only: bool,
    backup_dir: Path | None,
) -> None:
    if not (check or backup_dir):
        raise ValueError("Can not update without backup_dir.")
    print(f"\n=========Running update (check={check}) =========\n")
    nixpkgs_finder = make_find_hash(prefix="nixpkgs/")
    flake_utils_finder = make_find_hash(prefix="flake-utils/")
    bsp_finder = make_find_hash(prefix="build-system-pkgs/")
    uv2nix_finder = make_find_hash(prefix="uv2nix/")
    pyproject_nix_finder = make_find_hash(prefix=r"pyproject\.nix/")
    rust_finder = make_find_hash(prefix="rust-overlay/")

    print(f"\n=========Expecting nixpkgs hash {hashes['nixpkgs']} =========\n")

    for flake in locations[20:]:
        if not flake.exists():
            print(f"!!! Nonexistent path: {flake}")
            continue

        text = flake.read_text()
        if backup_dir:
            backup_path = backup_dir / str(flake.relative_to(HOME)).replace(
                "/", "__"
            )
            backup_path.write_text(text)
        new_text = str(text)
        display = f"~/{flake.relative_to(HOME)}:"

        def _search_and_display(
            finder: Callable[[str], str],
            name: str,
            print_missing: bool = False,
        ) -> None:
            expected = hashes[name]
            if found_hash := finder(text):
                if found_hash != expected:
                    print(
                        f"!!! Deviating {name:<20} hash in "
                        f"{display:<60}   {found_hash}"
                    )
            else:
                if print_missing:
                    print(f"!!! Missing {name:<20} hash in {display[:-1]}")

            if not check_only:
                if not backup_dir:
                    raise ValueError
                if found_hash and (found_hash != expected):
                    nonlocal new_text
                    new_text = re.sub(
                        f'{name}/{found_hash}"; +# updated[^\n]+',
                        f'{name}/{expected}"; # updated {TODAY}',
                        new_text,
                    )

                    flake.write_text(new_text)
                    print(f"Updated {name} hash in {flake}")

        _search_and_display(nixpkgs_finder, name="nixpkgs", print_missing=True)
        _search_and_display(
            flake_utils_finder, name="flake-utils", print_missing=False
        )
        _search_and_display(bsp_finder, name="build-system-pkgs")
        _search_and_display(uv2nix_finder, name="uv2nix")
        _search_and_display(pyproject_nix_finder, name="pyproject.nix")
        _search_and_display(rust_finder, name="rust-overlay")


def discover(*, locations: list[Path], exclude: set[Path]) -> None:
    print("Running discover")
    location_set = set(locations)
    found = find_flakes()
    if found:
        untracked_flakes = found.difference(location_set).difference(exclude)
        if untracked_flakes:
            print("\n========= Untracked flakes: =========\n")
        for flake in sorted(untracked_flakes):
            print("   ", flake)


def make_find_hash(
    prefix: str, suffix='/?";', escape=False
) -> Callable[[str], str]:
    escaper = re.escape if escape else str
    compiled: re.Pattern = re.compile(
        f"{escaper(prefix)}([a-z0-9]{{32,}}){escaper(suffix)}"
    )
    print(f"{compiled=}")

    def inner(haystack: str) -> str:
        maybe_match = compiled.search(haystack)
        # print(maybe_match)
        if maybe_match is None:
            return ""
        return maybe_match.group(1)

    return inner


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Update and discover resources."
    )
    parser.add_argument(
        "-d",
        "--dry-run",
        action="store_true",
        help="Print what would be done, without actually performing it.",
    )
    parser.add_argument(
        "-c",
        "--config",
        type=Path,
        default=Path.home() / ".config/nixpins/config.json",
        help="Config file (default: $HOME/.config/nixpins/config.json)",
    )

    subparsers = parser.add_subparsers(dest="command", required=True)

    subparsers.add_parser("update", help="Update resources.")
    subparsers.add_parser("check", help="Check hashes against a given hash.")
    subparsers.add_parser("discover", help="Discover resources.")

    return parser


def process_config(
    cfg_path: Path,
) -> tuple[dict[str, str], list[Path], set[Path], Path]:

    def resolve_path(p: str) -> Path:
        if p.startswith("/"):
            return Path(p)
        for substr in ("~/", "$HOME/"):
            if p.startswith(substr):
                return HOME / p.replace(substr, "", 1)
        return HOME / p

    def normalize_path(p: str) -> Path:

        if not p.endswith((".nix", ".nix.jinja")):
            p += ".nix"

        return resolve_path(p)

    cfg = json.loads(cfg_path.read_text())
    hashes = {str(k): str(v) for k, v in cfg["hashes"].items()}
    locations = list(map(normalize_path, sorted(set(cfg["locations"]))))
    exclude = set(map(normalize_path, cfg["exclude"]))
    backup_dir = resolve_path(cfg["backup_dir"])
    print(backup_dir)
    backup_dir.mkdir(exist_ok=True)
    backup_dir = backup_dir / TODAY
    (backup_dir).mkdir(exist_ok=True)

    return hashes, locations, exclude, backup_dir


def main(argv: Sequence[str] | None = None) -> None:
    parser = build_parser()
    args = parser.parse_args(argv)

    try:
        hashes, locations, exclude, backup_dir = process_config(args.config)
    except Exception as e:
        print("Encountered error parsing config:")
        print("    ", repr(e))
        sys.exit(1)

    match args.command:
        case "update":
            update(hashes=hashes, locations=locations, backup_dir=backup_dir)
        case "check":
            check(locations=locations, hashes=hashes)
        case "discover":
            discover(locations=locations, exclude=exclude)
        case other:
            print(f"Invalid command: '{other}'.")


if __name__ == "__main__":
    main()
