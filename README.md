# nixos-config

My NixOS configuration files. I'm new to NixOS, so take all of this with a grain of salt.


## Tree

Modules are organized in a hierarchical structure and imported into each device's custom file, e.g. betsy.nix, hank.nix.

The `default.nix` file is omitted, since it appears in every single module.
```
common (imports configs shared across all devices from `features`)
features
  ┃
  ┣━━ desktop
  ┃    ┃
  ┃    ┣━━ common (configuration shared between all desktop environments)
  ┃    ┃    ┣ eww
  ┃    ┃    ┃ 
  ┃    ┃    ┣ i3status-rust
  ┃    ┃    ┃ 
  ┃    ┃    ┗ qtile
  ┃    ┃
  ┃    ┣━━ non-nixos
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┗ 
  ┃    ┃
  ┃    ┣━━ wayland
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┗ 
  ┃    ┃
  ┃    ┗━━ x11
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┗ 
  ┃
  ┣━━ development
  ┃    ┃
  ┃    ┣━━ bash
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┗ 
  ┃    ┃ 
  ┃    ┣━━ git
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┗ 
  ┃    ┃
  ┃    ┣━━ neovim-from-zero
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┗ 
  ┃    ┃
  ┃    ┣━━ neovim-gaelle
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┗ 
  ┃    ┃
  ┃    ┣━━ wezterm
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┣ 
  ┃    ┃    ┃ 
  ┃    ┃    ┗ 
  ┃    ┃
  ┃    ┗━━ zsh
  ┃
  ┣━━ global
  ┃    ┃
  ┃    ┣━━ 
  ┃    ┃
  ┃    ┣━━ 
  ┃    ┃
  ┃    ┗━━ 
  ┃ 
  ┗━━ productivity
       ┃
       ┣━━ 
       ┃
       ┣━━ 
       ┃
       ┗━━ 

```