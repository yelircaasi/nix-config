{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.bufferLine;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins = [
      {
        plugin = pkgs.vimPlugins.bufferline-nvim;
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
