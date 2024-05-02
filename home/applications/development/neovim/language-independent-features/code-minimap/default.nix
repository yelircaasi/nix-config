{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.codeMinimap;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins = with pkgs; [
      {
        plugin = minimap-vim;
        optional = true;
      }
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./code_minimap.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
