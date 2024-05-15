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
files = {k: p / f"{name}.json" for k, name in files.items()}
print(files)

combined = []
for file in set(files.values()):
    print(file)
    with open(file) as f:
        combined.extend(json.load(f))

categories = set([d["category"] for d in combined])
print("\n".join(sorted(categories)))
print()
stati = [d["status"] for d in combined]
print("\n".join(sorted([f"{stati.count(stat):>4} {stat}" for stat in set(stati)])))

for status, file in files.items():
    with open(file, "w") as f:
        subjson = [d for d in combined if d["status"] == status]
        subjson.sort(key=lambda d: (d["category"], d["name"]))
        json.dump(subjson, f, indent=4)
