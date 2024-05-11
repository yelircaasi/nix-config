
import json
import re

p = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/config/software-lists/for-nix-config/raw.json"
tmp = "/tmp/tmp.json"

with open(p) as f:
    dicti = json.load(f)

with open(tmp, "w") as f:
    json.dump(dicti, f, indent=2)

s = json.dumps(dicti, indent=4)
s = re.sub("\{\n +\"status", "{\"status", s)
s = re.sub(",\n +\"link\"", ", \"link\"", s)
s = re.sub(",\n +\"notes\"", ", \"notes\"", s)
s = re.sub(",\n +\"complements\"", ", \"complements\"", s)
s = re.sub("\"\n +\}", "\"}", s)

with open(p, "w") as f:
    f.write(s)
