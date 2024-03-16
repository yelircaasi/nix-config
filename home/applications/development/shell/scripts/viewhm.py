import os
from pathlib import Path
from stat import S_ISDIR as is_dir
from stat import S_ISLNK as is_link

HOME = Path("/home/isaac")
CLEAR = "\033[0m"
RED = "\033[0;31m"
BLUE = "\033[0;34m"
exempt = {
    ".cache",
    ".config",
    "Knecon",
    "Learning",
    "Documents",
    "Downloads",
    "OLD",
}


def red(s: str) -> None:
    return f"{RED}{s}{CLEAR}"


def blue(s: str) -> None:
    return f"{BLUE}{s}{CLEAR}"


def list_directory(
    directory_path: Path, top_level: bool = True, indent: str = ""
) -> None:
    for item in sorted(os.listdir(directory_path)):
        abspath = directory_path / item
        if item in exempt:
            continue
        if not is_dir(os.lstat(abspath).st_mode):
            if is_link(os.lstat(abspath).st_mode):
                print(f"{indent}{abspath} -> {blue(os.readlink(abspath))}")
            else:
                print(indent + red(abspath))
        else:
            junk = str(abspath).endswith(".config") or "nvim-" in str(abspath)
            if not junk:
                if top_level:
                    list_directory(abspath, top_level=False, indent="")
                else:
                    print(abspath)
    # print()


list_directory(HOME)
print()
list_directory(HOME / ".config")
