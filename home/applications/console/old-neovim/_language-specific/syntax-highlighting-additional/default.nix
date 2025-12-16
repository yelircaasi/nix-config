{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.syntaxHighlightingAdditional;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins = [
      {
        plugin = custom.hlargs-nvim;
        optional = true;
      }
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./clipboard.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
