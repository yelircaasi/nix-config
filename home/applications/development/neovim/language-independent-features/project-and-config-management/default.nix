{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.projectAndConfigManagement.enable {
  plugins =
    (with pkgs.vimPlugins; [
      neoconf-nvim
      nvim-config-local # nvim-projectconfig
    ])
    ++ (with custom; [
      custom.projectmgr-nvim # projections-nvim, workspaces-nvim, neoproj
      custom.memento-nvim
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
