import re
import sys

'''
* p = sys.argv[1]
* with open(p) as f:
    doc = f.read()
* ents = re.findall("\[.+?\]\(.+\)", doc)
print(len(ents))
counts = {k: ents.count(k) for k in list(set(ents))}
print(len(counts))

# exit()

* for ent, count in counts.items():
    if count > 1:
        index = doc.rfind(ent)
        doc = doc[:index] + "@@@" + doc[index+len(ent):]
        # doc = doc.replace(ent, "@@@", -1)
        # print(ent)

# repeat

ents = re.findall("\[.+?\]\(.+\)", doc)
print(len(ents))
counts = {k: ents.count(k) for k in list(set(ents))}
print(len(counts))

# exit()

* for ent, count in counts.items():
    if count > 1:
        index = doc.rfind(ent)
        doc = doc[:index] + "@@@" + doc[index+len(ent):]
        # doc = doc.replace(ent, "@@@", -1)
        # print(ent)

# repeat again

ents = re.findall("\[.+?\]\(.+\)", doc)
print(len(ents))
counts = {k: ents.count(k) for k in list(set(ents))}
print(len(counts))

# exit()

* for ent, count in counts.items():
    if count > 1:
        index = doc.rfind(ent)
        doc = doc[:index] + "@@@" + doc[index+len(ent):]
        # doc = doc.replace(ent, "@@@", -1)
        # print(ent)
* ents = re.findall("\[.+?\]\(.+\)", doc)
print(len(ents))
counts = {k: ents.count(k) for k in list(set(ents))}
print(len(counts))

# exit()

for k,v in counts.items():
    if v > 1:
        print(k)
        print(v)
* newpath = p.replace(".md", "_.md")
with open(newpath, 'w') as f:
    f.write(doc)

'''