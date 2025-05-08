#!/bin/sh

set -e

packages_file=/home/isaac/.cache/nix-packages.txt
/home/isaac/.nix-profile/bin/list-all-nix-packages > $packages_file
export MDM_PACKAGES_LIST_FILE=$packages_file
export MDM_PASSWORD_PAM_FILE="/etc/pam.d/passwd"
export MDM_SCREEN_LOCK_TIMEOUT=$(/home/isaac/.nix-profile/bin/get-screen-lock-timeout)

/home/isaac/.nix-profile/bin/inovex-mdm-inventory-py --put
