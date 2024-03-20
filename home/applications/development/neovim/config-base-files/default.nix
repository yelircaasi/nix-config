{
  pkgs,
  lib,
  neovimConfig,
  langs,
  feats,
  ...
}: let
  langRequires = langs: lib.strings.concatLines (map (lang: ''require("language_specific.${lang}")'') langs);
  featRequires = feats: lib.strings.concatLines (map (lang: ''require("features.${lang}")'') langs);
in {
  "./nvim/init.lua".text = ''
    require("colors")
    require("mapping")
    require("options")

    ${langRequires}

    ${featRequires}
  '';

  "./nvim/lua/colors.lua".text = import ./colors {inherit pkgs lib neovimConfig;};
  "./nvim/lua/mappings.lua".text = import ./mappings {inherit pkgs lib neovimConfig;};
  "./nvim/lua/options.lua".text = import ./options {inherit pkgs lib neovimConfig;};
}
