import os
import subprocess
import sys
from pathlib import Path

FILTER_OUT = {".cache", ".nix-profile", "Code", ".vscode", "hoarded"}
BAR = 50 * "═"
CLEAN: list[Path] = []


def is_git_repo(candidate_path: Path) -> bool:
    return (candidate_path / ".git").exists()


def is_nongit_dir(candidate: Path) -> bool:
    return candidate.is_dir() and not (candidate / ".git").exists()


def list_full(dir: Path) -> list[Path]:
    return [dir / p for p in os.listdir(dir) if p not in FILTER_OUT]


def list_git_repos(
    directory: Path, to_prepend: set[Path] = set(), recursions: int = 3
) -> set[Path]:
    if recursions == 0:
        return set()
    if not directory.exists():
        return set()

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


def show_git_status_or_pull(d: Path) -> None:

    os.chdir(d)
    assert os.getcwd() == str(d), f"{os.getcwd()} != {str(d)}"

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
    else:
        CLEAN.append(d)


if __name__ == "__main__":
    home = Path(os.environ["HOME"])
    repo_home = (
        home / "repos"
        if (len(sys.argv) < 2)
        else Path(sys.argv[1]).resolve()
    )
    git_dirs = list_git_repos(repo_home) | list_git_repos(home, recursions=1)
    for gd in sorted(git_dirs):
        if gd.is_symlink():
            continue
        show_git_status_or_pull(gd)

    print(f"{BAR}\nCLEAN\n{BAR}\n  {'\n  '.join(sorted(map(str, CLEAN)))}")
