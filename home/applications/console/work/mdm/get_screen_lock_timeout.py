import os
import re
from pathlib import Path

hypridle_path = Path(os.environ["XDG_CONFIG_HOME"]) / "hypr" / "hypridle.conf"
with open(hypridle_path, "r") as f:
    hypridle_config = f.read()

lock_section = re.search(
    r"listener\s+\{([^\{\}]+?)loginctl lock-session",
    hypridle_config, re.DOTALL
).group(1)

lock_delay = int(re.search(r"timeout\s+=\s+(\d+)", lock_section).group(1))

print(lock_delay, end="")
