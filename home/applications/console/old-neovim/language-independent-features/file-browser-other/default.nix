{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.fileBrowserOther;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    plugins = [
      {
        plugin = pkgs.oil-nvim; # ### triptych.nvim, ### tfm.nvim,
        optional = true;
      }
      {
        plugin = custom.nvim-genghis;
        optional = true;
      }
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./file_browser_other.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
