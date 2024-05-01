{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.fileBrowserTui.enable {
  plugins = [
    # problem with fm-nvim:
    # alts: fm-nvim (with xplr), ### nnn-vim, -> make nvim-xplr using fm-nvim and joshuto.nvim as basis, integrate with plugins
  ];
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
