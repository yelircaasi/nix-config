{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.macros;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins = [
      {
        plugin = pkgs.vimPlugins.sqlite-lua;
        optional = true;
      } # dependency of neocomposer
      {
        plugin = custom.neocomposer-nvim;
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
