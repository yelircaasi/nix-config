{
  inputs,
  lib,
  pkgs,
  g,
  ...
}:
# let
#   createNeovimHMSet = inherit (import ./neovim-helpers {inherit inputs lib pkgs g;}) createNeovimHMSet;
#   # mergeAttrs = attrs: lib.foldl' (acc: x: acc // x) {} attrs;
# in (createNeovimHMSet nvimConfig)
let
  neovimConfig = lib.attrsets.recursiveUpdate (import ./default-declaration.nix) (import ./declaration.nix);
  neovimHMPre = import ./neovim-helpers.nix {inherit inputs pkgs lib neovimConfig g;};
in {
  home.packages = neovimHMPre.otherPackages;
  programs.neovim = neovimHMPre.neovimSet;
  xdg.configFile = neovimHMPre.xdgConfig;
}
