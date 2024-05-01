{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.multiplexer.enable {
  plugins = [
    pkgs.smart-splits-nvim
    custom.zellij-nvim # (not working) custom.zellij-nav-nvim, Navigator-nvim, #, nvim, neomux, tmux-nvim, tmux-awesome-manager-nvim, nvimux
    custom.windex-nvim
  ];
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
