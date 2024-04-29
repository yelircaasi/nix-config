from pathlib import Path
import os
import re

ROOT = Path("/home/isaac/nix-config/notes")
def list_files(directory):
    """
    List all files under a directory recursively.
    """
    output = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            output.append(file_path)
    return output

mdfiles = list(filter(lambda s: s.endswith(".md"), list_files(ROOT)))


def fix_link(line: str) -> str:
    ...
# print("\n".join(mdfiles))

def make_mdlinks(file_string: str) -> str:
    file_string = re.sub(r"([\s\*])(https?://)([^\s]+)", r"\1[\3](\2\3)", file_string)
    # file_string = re.sub("([^\(])(https?://)([^\s]+?)", "\1[\3](\2\3)", file_string)

    return file_string

def lint_md(file_string: str) -> str:
    # file_string = re.sub(r"([\s\*])(https?://)([^\s]+)", r"\1[\3](\2\3)", file_string)
    # file_string = re.sub(r"\[github.com/(.+?)\]", r"[\1]", file_string)
    # file_string = re.sub(r"\[reddit.com/(.+?)\]", r"[\1]", file_string)
    # file_string = re.sub(r"\[www.reddit.com/(.+?)\]", r"[\1]", file_string)
    # file_string = re.sub(r"\[.+?youtube.+?\]\(", r"[...](", file_string)
    # file_string = re.sub(r"\[https://(.+?)\]", r"[\1]", file_string)
    # file_string = re.sub(r"\[www\.(.+?)\]", r"[\1]", file_string)
    # file_string = re.sub(r"[\?&]utm[^\(\)\[\]]+?([\)\]])", r"\1", file_string)
    file_string = re.sub(r"^#+ ", r"# ", file_string)
    file_string = re.sub(r"\n+$", r"\n", file_string)
    return file_string

if __name__ == "__main__":
    # with open("/home/isaac/nix-config/notes/F_technology/F_B_computer_science/ml-ai-etc/nlp-resources.md") as f:
    # txt = f.read()
    # print(make_mdlinks(txt))

    for mdpath in mdfiles:
        print(mdpath)
        with open(mdpath) as f:
            txt = f.read()
        with open(mdpath, "w") as f:
            txt = f.write(lint_md(txt))

