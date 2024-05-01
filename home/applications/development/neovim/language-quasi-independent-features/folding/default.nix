{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.folding.enable {
  plugins = [
    # pretty-fold-nvim # alt: fold-cycle-nvim, nvim-ufo, nvim-origami,
    pkgs.nvim-ufo
  ];
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
