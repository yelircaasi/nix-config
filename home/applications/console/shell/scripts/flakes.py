import re
import subprocess
import sys
from pathlib import Path


result = subprocess.run(
    ["fd", "flake.nix", Path.home()],
    capture_output=True,
    text=True,
).stdout

paths = sorted(result.strip().split("\n"))
for filter_string in sys.argv[1:]:
    print(filter_string)
    paths = list(filter(lambda x: filter_string not in x, paths))
    print(len(paths))

rgx1 = re.compile(r"\"github[^\n]+?/nixpkgs/?\?ref=(.+?)\"")
rgx2 = re.compile(r"url\s+=\s+\"github[^\n]+?/nixpkgs/(.+?)\"")
rgx3 = re.compile(r"(flakehub.com[^\";]+nixpkgs[^\";]+)")
rgx4 = re.compile(r"inputs\.nixpkgs\.url\s*=\s*\"(.+)\"")
rgx5 = re.compile(r"/nixpkgs/([^\"]+?)[\";]")
rgx6 = re.compile(r"/nixpkgs/?\?ref=([^\"]+?)[\";]")


def read_hash(path_: Path) -> str:
    with open(path_) as f:
        raw = f.read()
    for rgx in [rgx1, rgx2, rgx3, rgx4, rgx5, rgx6]:
        s = re.search(rgx, raw)
        if s:
            return s.group(1)


len_ = max(map(len, paths))
for p in paths:
    nixpkgs_hash = read_hash(p)
    print(f"{p:<{len_}} : {nixpkgs_hash or ''}")
