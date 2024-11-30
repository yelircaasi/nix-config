import os
import subprocess
import sys
from pathlib import Path

FILTER_OUT = {".cache", ".nix-profile", "Code", ".vscode", "hoarded"}
BAR = 50 * "═"


def is_git_repo(candidate_path: Path) -> True:
    return (candidate_path / ".git").exists()


def is_nongit_dir(candidate: Path) -> True:
    return candidate.is_dir() and not (candidate / ".git").exists()


def list_full(dir: Path) -> list[Path]:
    return [dir / p for p in os.listdir(dir) if p not in FILTER_OUT]


def list_git_repos(
    directory: Path, to_prepend: set[Path] = set(), recursions: int = 3
) -> list[Path]:
    if recursions == 0:
        return []

    subdirs = list_full(directory)
    to_prepend.update(set(filter(is_git_repo, subdirs)))
    nongit = list(filter(is_nongit_dir, subdirs))

    for subdir in nongit:
        to_prepend.update(
            list_git_repos(
                subdir, to_prepend=to_prepend, recursions=recursions - 1
            )
        )

    return to_prepend


def show_git_status(d: Path) -> None:

    os.chdir(d)
    assert os.getcwd() == str(d)

    result = str(
        subprocess.run(
            ["git", "status"],
            capture_output=True,
            text=True,
        ).stdout
    )

    if "working tree clean" not in result:
        print(BAR)
        print(str(d))
        print(BAR)
        print(result)


if __name__ == "__main__":
    home = (
        Path(os.environ["HOME"]) / "repos"
        if (len(sys.argv) < 2)
        else Path(sys.argv[1]).resolve()
    )
    git_dirs = list_git_repos(home)
    for gd in git_dirs:
        show_git_status(gd)
