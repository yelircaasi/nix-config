# nix-store --query --requisites /run/current-system/sw | cut -d- -f2- | sort | uniq
# nix-store -q --references /var/run/current-system/sw | cut -d'-' -f2- | sort | uniq

nix-store -q --references /var/run/current-system/sw | grep -v 'doc$\|man$\|info$' |  cut -d'-' -f2- | sort | uniq > /home/isaac/.package-list.txt

# ls /run/current-system/sw/bin/
# ls ~/.nix-profile/bin/