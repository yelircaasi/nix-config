import json
import re

p = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/nebokrai-software.json"
with open(p) as f:
    dl = json.load(f)
with open(p.replace(".json", "_backup.json"), "w") as f:
    json.dump(dl, f)

cats = [d["category"] for d in dl]
counts = {c: cats.count(c) for c in sorted(set(cats))}
for k, v in counts.items():
    print(f"{v:>4} {k}")


dl.sort(key=lambda d: (d["category"], d["name"]))
with open(p, "w") as f:
    json.dump(dl, f, indent=4)
