import json
import re

backup = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/nebokrai-software-backup.json"
incorporate = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-incorporate.json"
adapt = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-adapt.json"
read = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-read.json"
glean = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-glean.json"
backpocket = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-backpocket.json"
selected = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-selected.json"
pursue = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-pursue.json"
move = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-move.json"
rejected = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-rejected.json"
added = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-added.json"
other = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/software-other.json"

dl = []
for p in [incorporate, adapt, read, glean, backpocket, selected, pursue, move, rejected, added, other]:
    with open(p) as f:
        dl.extend(json.load(f))
with open(backup, "w") as f:
    json.dump(dl, f)


def display_counts(key: str, depth: int) -> None:
    print(f"\n=== {key} ===")
    for d in dl:
        if not key in d:
            print(d["name"])
    cats = [d[key] for d in dl]
    cats = [".".join(re.split("\.|, ", c)[:depth]) for c in cats]
    counts = sorted([(cats.count(c), c) for c in sorted(set(cats))], reverse=True)
    for count, item in counts:
        print(f"{count:>4} {item}")
    

def print_tree(strings):
    from collections import defaultdict

    # Nested dictionary to hold tree structure
    def tree() -> defaultdict: 
        return defaultdict(tree)

    root = tree()

    # Build the tree
    for string in strings:
        parts = string.split('.')
        current_level = root
        for part in parts:
            current_level = current_level[part]

    # Function to print the tree recursively
    def print_subtree(node, prefix=""):
        children = list(node.keys())
        for i, child in enumerate(children):
            is_last = (i == len(children) - 1)
            if is_last:
                print(prefix + "└─ " + child)
                new_prefix = prefix + "   "
            else:
                print(prefix + "├─ " + child)
                new_prefix = prefix + "│  "
            print_subtree(node[child], new_prefix)

    # Print the root
    print_subtree(root)

#####
# dl = [d for d in dl if d["class"]=="incorporate"]
# display_counts("category", 2)
# print_tree([d["category"] for d in dl])
# exit()
#####

# dl = [d for d in dl if d["class"]=="decide"]
display_counts("category", 6)

# print_tree([d["category"] for d in dl])
display_counts("class", 2)
display_counts("rating", 2)
# display_counts("language", 1)
# display_counts("recency", 1)

dl.sort(key=lambda d: (d["category"], d["class"], d["rating"], d["name"]))
# dl.sort(key=lambda d: (d["class"]))
with open(p, "w") as f:
    json.dump(dl, f, indent=4)

with open(incorporate, "w") as f:
    json.dump([d for d in dl if d["class"]=="incorporate"], f, indent=4)
with open(adapt, "w") as f:
    json.dump([d for d in dl if d["class"]=="adapt"], f, indent=4)
with open(read, "w") as f:
    json.dump([d for d in dl if d["class"]=="read"], f, indent=4)
with open(glean, "w") as f:
    json.dump([d for d in dl if d["class"]=="glean"], f, indent=4)
with open(backpocket, "w") as f:
    json.dump([d for d in dl if d["class"]=="backpocket"], f, indent=4)
with open(selected, "w") as f:
    json.dump([d for d in dl if d["class"]=="selected"], f, indent=4)
with open(pursue, "w") as f:
    json.dump([d for d in dl if d["class"]=="pursue"], f, indent=4)
with open(move, "w") as f:
    json.dump([d for d in dl if d["class"]=="move"], f, indent=4)
with open(rejected, "w") as f:
    json.dump([d for d in dl if d["class"]=="rejected"], f, indent=4)
with open(added, "w") as f:
    json.dump([d for d in dl if d["class"]=="added"], f, indent=4)
with open(other, "w") as f:
    json.dump([d for d in dl if d["class"] not in {"incorporate", "adapt", "read", "glean", "backpocket", "selected", "pursue", "move", "rejected", "added"}], f, indent=4)

key = "name"
probs = [d for d in dl if not key in d]
if probs:
    print(probs)
dl.sort(key=lambda d: (d[key]))
for i, d in enumerate(dl[:-1]):
    name = d[key]
    if name and (name == dl[i+1][key]):
        print(d[key])

'''
{ "category": ["https://apps.nextcloud.com/apps/cookbook https://github.com/nextcloud/cookbook/blob/master/docs/user/clients/Index.md",
    "https://micmun.de/nextcloud-cookbook-english/ | https://codeberg.org/MicMun/nextcloud-cookbook",
    "https://github.com/Teifun2/nextcloud-cookbook-flutter ",
    "https://github.com/lneugebauer/nextcloud-cookbook",
    "https://apps.nextcloud.com/apps/timemanager",
    "https://apps.nextcloud.com/apps/qownnotesapi",
    "https://github.com/nextcloud/bookmarks",
    "https://apps.nextcloud.com/apps/onlyoffice",
    "https://github.com/mtierltd/timetracker",
    "https://apps.nextcloud.com/apps/contacts",
    "https://github.com/nextcloud/integration_google",
    "https://apps.nextcloud.com/apps/tables",
    "https://apps.nextcloud.com/apps/mail",
    "https://github.com/julien-nc/gpxpod",
    "https://apps.nextcloud.com/apps/calendar",
    "https://github.com/sigoden/dufs $$$$$",
    "https://www.cloudron.io/pricing.html",
    "https://github.com/actualbudget/actual",
    "-> https://www.cloudron.io/store/index.html",
    "https://www.reddit.com/r/selfhosted/comments/120uyba/what_is_your_go_to_notification_service/"
    ]
    },
    {
        "category": "",
        "rating": "",
        "class": "",
        "name": "",
        "link": "",
        "language": "",
        "features": "",
        "notes": "",
        "description": "",
        "commits": "",
        "recency": ""
    },
'''