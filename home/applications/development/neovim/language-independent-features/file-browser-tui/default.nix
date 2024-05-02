{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.fileBrowserTui;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins = [
      # problem with fm-nvim:
      # alts: fm-nvim (with xplr), ### nnn-vim, -> make nvim-xplr using fm-nvim and joshuto.nvim as basis, integrate with plugins
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./file_browser_tui.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
