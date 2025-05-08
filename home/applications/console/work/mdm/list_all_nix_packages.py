import os
from pathlib import Path
import re


def get_paths():
    """
    Get all paths listed in $PATH
    """
    paths = os.environ.get("PATH", "").split(os.pathsep)
    paths = [Path(path) for path in paths if Path(path).exists()]
    return paths


def get_all_packages(bin_dir: str) -> set[str]:
    """
    List all paths inside the given bin_dir, reading symlinks.
    """
    bin_dir = Path(bin_dir)
    if not bin_dir.exists():
        raise FileNotFoundError(f"{bin_dir} does not exist")
    while not bin_dir.is_absolute():
        bin_dir = bin_dir.resolve()
    if not bin_dir.is_dir():
        raise NotADirectoryError(f"{bin_dir} is not a directory")

    packages = set()
    for p in bin_dir.iterdir():
        _path = p
        while _path.is_symlink():
            _path = _path.resolve()
        if _path.is_dir():
            if _path.is_dir():
                packages.update(get_all_packages(_path))
        elif _path.is_file():
            while _path.is_symlink():
                _path = _path.resolve()
            packages.add(_path)
        else:
            print(f"Unknown file type: {_path}")
    # print(f"Found {len(packages)} packages in {bin_dir}")

    return packages


def list_all_package_paths():
    """
    List all packages in the system.
    """
    paths = get_paths()
    # print(paths)
    packages = []
    for path in paths:
        # print(f"++++++++++++++++++++++++++++++++++{path}")
        packages.extend(get_all_packages(path))
    return packages


def parse_packages(packages: set[str]) -> list[Path]:
    """
    Parse the packages and return a list of tuples containing package name and version.

    Given a path of the form PosixPath('/nix/store/szlvk4bv1csjnpm96m49ah0nmngi0dwf-e2fsprogs-1.47.2-bin/bin/e2scrub_all'),
    strip the prefix '/nix/store/' and the suffix '-bin/bin/e2scrub_all' to get 'e2fsprogs-1.47.2'.
    The version is the part after the last '-' in the package name.
    """
    packages = [Path(p) for p in packages]
    parsed_packages: set[tuple[str, str]] = set()
    for package in packages:
        as_string = str(package)
        if package.name.startswith("nix-") or package.name.startswith("nixos-"):
            # print("######", package)
            continue
        if as_string.startswith("/nix/store/"):
            _package = package
            while not _package.parent == Path("/nix/store"):
                _package = _package.parent
            package_name = _package.name[33:]
            # print(package_name)
            package_name = re.sub(r"-bin$", "", package_name)

            version_search = (
                re.search(r"-(\d+-unstable-\d[-\d\.]+?\d)$", package_name)
                or re.search(r"-(unstable-\d[-\d\.]+?\d)$", package_name)
                or re.search(r"-(v?\d[-\d\.]+?\d)$", package_name)
                or re.search(r"-(v?\d[\d\.]+)$", package_name)
                or re.search(r"-(v?\d[\d\.]+)-", package_name)
                or re.search(r"-(v?[\d\.]+?\.[\dapr]+)$", package_name)
                or re.search(r"-(v?[\d\.]+?\.[\dapr]+)-", package_name)
            )
            if version_search:
                version = version_search.group(1)
                pname = package_name.split(version)[0][:-1]
            else:
                # pname, version = package_name[:-1], ""
                pass
                # print(package_name, package)
            parsed_packages.add((pname, version))
        else:
            pass
            # print(package)
    # print(f"{len(parsed_packages)} unique packages explicitly installed.")
    return parsed_packages


if __name__ == "__main__":
    packages = list_all_package_paths()
    package_tuples = parse_packages(packages)
    for name, version in sorted(package_tuples):
        print(f"{name:<35} {str(version):<25} nix")
    print()
