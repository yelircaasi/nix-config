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
  languageSet = import ./languages {inherit pkgs g;};
  py = pkgs.python310Packages;
  node = pkgs.nodePackages;
  helpers = import ./neovim-helpers.nix {inherit pkgs lib g;};
  createNeovimHMSet = helpers.createNeovimHMSet;

  mergeAttrs = attrs: lib.foldl' (acc: x: acc // x) {} attrs;
in (createNeovimHMSet neovimConfig)
