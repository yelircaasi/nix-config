import json
import os
import re
from pathlib import Path
* def join_array(array_string: str) -> str:
    return re.sub(r"\s+", " ", array_string, flags=re.DOTALL)
* files = map(Path, filter(lambda x: x.endswith(".json"), os.listdir()))
for file in files:
    with open(file, encoding="utf-8") as f:
        raw = f.read()
    with open(Path("/tmp") / file, 'w', encoding='utf-8') as f:
        f.write(raw)
    preformatted = json.dumps(json.loads(raw), indent=4)

    for arr in re.findall(r"\[[^\[]+?\]", preformatted, flags=re.DOTALL):
        preformatted = preformatted.replace(arr, join_array(arr))
    formatted = re.sub(
        r'{\s*?"(\w*?)": *?"(.*?)"\s*?}',
        '{ "\1": "\2" }',
        preformatted,
        flags=re.DOTALL
    )
    #print(formatted)
    with open(file, 'w', encoding="utf-8") as f:
        f.write(formatted)
