{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.fileBrowserTree;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else rec {
    packages = [];

    plugins = [
      {
        plugin = pkgs.vimPlugins.neo-tree-nvim; # nvim-tree-lua, nvim-tree-lua
        optional = true;
      }
    ];

    pluginStrings = [
      "-- {{neo-tree RTP command}}"
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text =
        builtins.replaceStrings
        pluginStrings
        (map (set: ''vim.opt.rtp:prepend("${set.plugin}")'') plugins)
        (g.utils.readAndInterpolate g ./file_browser_tree.lua);
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
