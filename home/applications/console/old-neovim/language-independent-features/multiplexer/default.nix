{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.multiplexer;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    plugins = [
      {
        plugin = pkgs.smart-splits-nvim;
        optional = true;
      }
      {
        plugin = custom.zellij-nvim;
        optional = true;
      } # (not working) custom.zellij-nav-nvim, Navigator-nvim, #, nvim, neomux, tmux-nvim, tmux-awesome-manager-nvim, nvimux
      {
        plugin = custom.windex-nvim;
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
