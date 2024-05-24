import json
import re

p = "/home/isaac/nix-config/notes/F_technology/F_B_computer_science/projects/nebokrai/nebokrai-software.json"
with open(p) as f:
    dl = json.load(f)
with open(p.replace(".json", "_backup.json"), "w") as f:
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


# def display_category_tree() -> None:
#     def pop_head(s: str) -> tuple[str, str]:
#         splits = key.split(".")
#         parent, childkey = splits[0], ".".join(splits[1:])
#         return parent, childkey
    
#     cats = [d["category"] for d in dl]
#     counts = [(cats.count(c), c) for c in sorted(set(cats))]
#     treedict = {}

#     def pair_as_dict(key: str, count: int):
#         newdict = {}
#         head, tail = pop_head(key)
#         if tail:
#             return {head: pair_as_dict(tail, count)}
#         else:
#             return {head: count}
    

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
# dl = [d for d in dl if d["status"]=="incorporate"]
# display_counts("category", 2)
# print_tree([d["category"] for d in dl])
# exit()
#####

# dl = [d for d in dl if d["status"]=="decide"]
# display_counts("category", 2)

# print_tree([d["category"] for d in dl])
display_counts("status", 2)
display_counts("rating", 2)
# display_counts("language", 1)
# display_counts("recency", 1)

dl.sort(key=lambda d: (d["category"], d["rating"], d["name"]))
dl.sort(key=lambda d: (d["status"]))
with open(p, "w") as f:
    json.dump(dl, f, indent=4)

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
        "status": "",
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