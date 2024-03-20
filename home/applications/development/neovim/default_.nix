{
  inputs,
  lib,
  pkgs,
  g,
  ...
}: let
  neovimConfig = {};
  fullConfig = import ./full-config.nix;
  neovim-nightly = inputs.neovim-nightly-overlay.packages.${pkgs.system}.neovim;
  custom = import ./plugins/custom-plugins.nix {inherit pkgs;};
  languages = import ./languages {inherit pkgs g;};
  py = pkgs.python310Packages;
  node = pkgs.nodePackages;
  createNeovimHMSet = import ./neovim-helper.nix {inherit pkgs lib g;};
in (createNeovimHMSet neovimConfig)
