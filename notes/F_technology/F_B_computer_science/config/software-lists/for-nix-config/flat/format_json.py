
import json
import re

p = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/config/software-lists/for-nix-config/flat/raw.json"
tmp = "/tmp/tmp.json"

with open(p) as f:
    dicti = json.load(f)

with open(tmp, "w") as f:
    json.dump(dicti, f, indent=2)

s = json.dumps(dicti, indent=4)
s = re.sub("\{\n +\"status", "{\"status", s)
s = re.sub(",\n +\"link\"", ", \"link\"", s)
s = re.sub(",\n +\"notes\"", ", \"notes\"", s)
s = re.sub(",\n +\"language\"", ", \"language\"", s)
s = re.sub(",\n +\"complements\"", ", \"complements\"", s)
s = re.sub("\"\n +\}", "\"}", s)

with open(p, "w") as f:
    f.write(s)

stati = re.findall("(?<=\"status\": \")[^\"]+", s)
unique = list(set(stati))
counts = sorted([(stati.count(u), u) for u in unique], reverse=True)
for c, u in counts:
    print(f"{c:>4} : {u}")


p2 = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/config/software-lists/for-nix-config/flat/flat.json"
tmp = "/tmp/tmp.json"

with open(p2) as f:
    dicti = json.load(f)

with open(tmp, "w") as f:
    json.dump(dicti, f, indent=2)

print([d for d in dicti if not d.get("status")])
dicti.sort(key=lambda d: (d["category"], d["status"], d["name"]))
dicti.sort(key=lambda d: d["status"])
s = json.dumps(dicti, indent=4)
s = re.sub("\{\n +\"category", "{\"category", s)
s = re.sub(",\n +\"name\"", ", \"name\"", s)
s = re.sub(",\n +\"status\"", ", \"status\"", s)
s = re.sub(",\n +\"link\"", ", \"link\"", s)
s = re.sub(",\n +\"language\"", ", \"language\"", s)
s = re.sub(",\n +\"notes\"", ", \"notes\"", s)
s = re.sub(",\n +\"complements\"", ", \"complements\"", s)
s = re.sub("\"\n +\}", "\"}", s)

with open(p2, "w") as f:
    f.write(s)

stati = re.findall("(?<=\"status\": \")[^\"]+", s)
unique = list(set(stati))
counts = sorted([(stati.count(u), u) for u in unique], reverse=True)
print()
for c, u in counts:
    print(f"{c:>4} : {u}")

print()
unique = list(set([sd["category"] for sd in dicti]))
for u in sorted(unique):
    print(u)
# ---------------- flattener functions below this line ------------------------

def flatten_nested(master_d: dict, prefix: str) -> list[dict]:
    flattened = []
    for k, v in master_d.items():
        if isinstance(v, dict):
            if "status" in v.keys():
                v.update({"category": prefix, "name": k})
                flattened.append(v)
            else:
                flattened.extend(flatten_nested(v, prefix + bool(prefix) * "." + k))
        else:
            print(k, v)
    return flattened


def flatten(dictionary: dict) -> list[dict]:
    keys = ['category', 'name', 'status', 'link', 'language', 'notes']
    dlist = flatten_nested(dictionary, "")
    dlist = [{k: (d.get(k, "") or "") for k in keys} for d in dlist]
    return dlist
