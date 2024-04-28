import json
import re
import sys
* name_in, name_out = sys.argv[1:3]
* with open(name_in) as f:    md = f.read()
* md = md.replace('"', "'")
md = re.sub("^.+?\n", "\n", md)
md = '{"' + md + "}"
md = re.sub("\n\n(?=[^\#])", '", "', md)
md = re.sub("\n+\#+ ([^\n]+)", '\n"\g<1>": [', md)
md = re.sub('\n(?=[^"])', '": ["', md)
md = re.sub('(?<=[^"])\n', '"],\n"', md)
md = re.sub('\n(?=")', '": ["', md)
md = re.sub('\[""', '{"', md)
md = md.replace('", ', '",\n\t')
md = md.replace('"],":', '":')
md = md.replace('": {""', '"], "')
md = md.replace('"], "', '": {"')
md = md.replace('": ["}', '"]}')
md = md.replace('": {"', '"], "')
md = re.sub('\{"([^"]+)"\], "', '{"\g<1>": {"', md)
md = md.replace('["', '[\n\t"')
md = md.replace('], "', '],\n"')
md = md.replace(',\n\t"": [\n\t"', ": [\n")
md = md.replace('[\n\t"]', "[]")
md = md.replace('": [\n": [', '": [\n')
md = re.sub('(?<=\],\n)([^\[]+)"\],', '],\n\g<1>": [],', md)
md = md.replace('[\n\t": [\n', "[\n")
md = md.replace('{""],', '{')
print(md)

# print(md[1500:1520])

* with open(name_out, "w") as f:    # f.write(json.dumps(json.loads(md), indent=2, ensure_ascii=False))    f.write(md)
