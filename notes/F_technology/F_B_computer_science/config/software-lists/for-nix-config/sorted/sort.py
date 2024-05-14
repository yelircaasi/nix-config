import json
import re
from pathlib import Path
import os


p = Path("/home/isaac/nix-config/notes/F_technology/F_B_computer_science/config/software-lists/for-nix-config/sorted")

files = {
    "added": "added",
    "selected": "selected",
    "needs work": "needs_work",
    "decided against": "not_selected",
    "honorable mention": "not_selected",
    "maybe later": "later",
    "selected for later": "later",
    "TODO: read": "to_read",
    "back pocket; may be useful someday": "not_selected",
    "use as reference": "use_as_reference",
    "selected; needs nix packaging": "selected_needs_nix",
    "need to try": "need_to_try",
}
files = {k: p / f"{name}.json" for k, name in file.items()}

combined = []
for status, file in files.items():
    with open(file) as f:
        combined.extend(json.load(f))
for status, file in files.items():
    with open(file, "w") as f:

