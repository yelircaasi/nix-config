#!/bin/sh

set -e

MDM_SCREEN_LOCK_TIMEOUT="$(grep -Po '(?<=timeout )[0-9]+(?= .*swaylock)' ~/.config/swayidle/config)"
export MDM_SCREEN_LOCK_TIMEOUT

/path/to/inovex_mdm.py --put
