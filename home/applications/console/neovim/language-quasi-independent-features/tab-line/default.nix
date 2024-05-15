{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.tabLine;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins = with pkgs.vimPlugins; [
      {
        plugin = tabby-nvim;
        optional = true;
      }
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./_.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
