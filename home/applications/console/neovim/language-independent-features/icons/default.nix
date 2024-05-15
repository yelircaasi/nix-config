{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.icons;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins = [
      {
        plugin = pkgs.vimPlugins.nvim-web-devicons;
        optional = true;
      }
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./icons.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
