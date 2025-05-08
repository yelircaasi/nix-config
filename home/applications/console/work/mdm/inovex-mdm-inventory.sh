#!/bin/sh

set -e


export MDM_SCREEN_LOCK_TIMEOUT="$(grep -Po '(?<=timeout )[0-9]+(?= .*swaylock)' ~/.config/swayidle/config)"
export MDM_PACKAGES_LIST_FILE=<(list-all-nix-packages)
export MDM_PASSWORD_PAM_FILE=/etc/pam.d/passwd
export MDM_SCREEN_LOCK_TIMEOUT=$(get-screen-lock-timeout)

/path/to/inovex_mdm.py --put