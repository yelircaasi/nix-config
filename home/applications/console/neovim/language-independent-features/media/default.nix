{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.media;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = with pkgs; [];

    plugins = with pkgs; [
      {
        plugin = hologram-nvim;
        optional = true;
      }
      {
        plugin = image-nvim;
        optional = true;
      }
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./media.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
