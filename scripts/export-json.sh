#!/usr/bin/bash

nix-instantiate --eval --expr --json --strict '(import ~/nix-config/global-defs/colors/default.nix {lib=3;})'

nix-instantiate --eval --expr --json --strict '(import ~/nix-config/global-defs/keybindings/primitives.nix)'

