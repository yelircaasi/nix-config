{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.fileBrowserOther.enable {
  plugins = [
    pkgs.oil-nvim #       ### triptych.nvim, ### tfm.nvim,

    custom.nvim-genghis
  ];
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
