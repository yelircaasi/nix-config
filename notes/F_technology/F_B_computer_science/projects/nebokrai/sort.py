import json
import re

p = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/nebokrai-software.json"
with open(p) as f:
    dl = json.load(f)
with open(p.replace(".json", "_backup.json"), "w") as f:
    json.dump(dl, f)


def display_counts(key: str, depth: int) -> None:
    print(f"=== {key} ===")
    for d in dl:
        if not key in d:
            print(d["name"])
    cats = [d[key] for d in dl]
    cats = [".".join(re.split("\.|, ", c)[:depth]) for c in cats]
    counts = sorted([(cats.count(c), c) for c in sorted(set(cats))], reverse=True)
    for count, item in counts:
        print(f"{count:>4} {item}")


display_counts("status", 2)
display_counts("rating", 2)
display_counts("category", 2)
display_counts("language", 1)

dl.sort(key=lambda d: (d["category"], d["name"]))
# dl.sort(key=lambda d: (d["name"]))
with open(p, "w") as f:
    json.dump(dl, f, indent=4)

# key = "name"
# probs = [d for d in dl if not key in d]
# if probs:
#     print(probs)
# dl.sort(key=lambda d: (d[key]))
# for i, d in enumerate(dl[:-1]):
#     name = d[key]
#     if name and (name == dl[i+1][key]):
#         print(d[key])
