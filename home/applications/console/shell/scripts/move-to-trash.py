import os
from sys import argv
from pathlib import Path

home_string = os.environ["HOME"]
home_string += ("/" * (not home_string.endswith("/")))
home = Path(home_string)
source = Path(argv[1]).resolve()
source_string = str(source)
if home_string in source_string:
    source_relative = Path(source_string.replace(home_string, ""))
else:
    source_relative = Path("_FSROOT" + source_string)
destination = home / ".cache/trash" / source_relative
if not destination.exists():
    os.makedirs(destination.parent, exist_ok=True)
os.rename(source, destination)
print(f"Moved {str(source)} to {str(destination)}.")
