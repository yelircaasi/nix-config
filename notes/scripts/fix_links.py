from sys import argv
import json
import re
from itertools import chain


lines_txt = argv[1]
keyword_dict_json = argv[2]
out_path = argv[3]
filter_words = argv[4]

FILTER_OUT = {"", "https", "by", "it", "и", "are", "an", "about", "how", "htl", "php", "your", "my", "what", "where", "when", "if", "not", "does", "has", "a", "on", "with", "v", "io", "the", "for", "http", "www", "from", "edu", "as", "is", "in", "was", "com", "to", "of", "html", "and", "org", "or", "en", "в"}
new = set(filter_words.split(','))
print(new)
FILTER_OUT.update(new)
FILTER_OUT.update(map(str, range(100)))
print(FILTER_OUT)
MIN_FREQ = 3
SEP = " <|> "

def open_lines_and_keyword_dict():
    lines_txt, keyword_dict_json
    with open(lines_txt) as f:
        lines = list(map(lambda s: s.split(SEP)[-1], filter(bool, f.read().split("\n"))))
    with open(keyword_dict_json) as f:
        keyword_dict = json.load(f)
    return lines, keyword_dict


def tokenize(line: str) -> list[str]:
    def normalize(tok: str) -> str:
        if len(tok) > 3:
            if tok.endswith("s"):
                return tok[:-1]
        return tok

    def programmatic_filter(s:str) -> bool:
        return not s.isnumeric()

    tokens = re.split("\W", line.lower())
    tokens = set(tokens).difference(FILTER_OUT)
    tokens = list(filter(programmatic_filter, map(normalize, tokens)))

    return tokens


def count_word_frequency(
    lines: list[str],
    tokens: list[set[str]],
    min_freq=MIN_FREQ
) -> dict[str, int]:
    all_tokens = list(chain.from_iterable(tokens))
    unique = set(all_tokens)
    counts = {tok: all_tokens.count(tok) for tok in unique}
    return {k: v for k, v in counts.items() if v > min_freq}


def assign_topics(lines, line_tokens, token_counts) -> list[str]:
    categorized_lines = []
    for line, tokens in zip(lines, line_tokens):
        # print(line)
        # print(tokens)
        tags = []
        for token in tokens:
            count = token_counts.get(token)
            if count:
                tags.append(token)
        tags.sort(key=token_counts.get, reverse=True)
        prefix = " ".join(tags) or "?"
        categorized_line = f"{prefix:<50}{SEP}{line}"
        categorized_lines.append(categorized_line)
    return sorted(categorized_lines)


def main():
    lines, keyword_dict = open_lines_and_keyword_dict()
    line_tokens = list(map(tokenize, lines))
    token_counts = count_word_frequency(lines, line_tokens)
    print(json.dumps(token_counts, indent=2))

    cat_lines = assign_topics(lines, line_tokens, token_counts)
    with open(out_path, "w") as f:
        f.write("\n".join(cat_lines))


if __name__ == "__main__":
    main()
