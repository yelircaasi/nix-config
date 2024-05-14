import json
from pathlib import Path

p = Path("/home/isaac/nix-config/notes/F_technology/F_B_computer_science/config/software-lists/for-nix-config/flat/flat.json")
out = Path("/home/isaac/nix-config/notes/F_technology/F_B_computer_science/config/software-lists/for-nix-config/split")

with open(p) as f:
    dl = json.load(f)

selected = [d for d in dl if d["status"] in {"selected", "added"}]
todos = 
selected
needs work
TODO: decide between alternatives
decided against
not decided yet
selected for later
honorable mention
TODO: read
use as reference
back pocket; may be useful someday
added
selected; needs nix packaging
need to try