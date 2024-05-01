{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.navigation.enable {
  plugins =
    (with pkgs.vimPlugins; [
      custom.navigator-lua
      numb-nvim
      dropbar-nvim
      leap-nvim
      flash-nvim
    ])
    ++ (with custom; [
      custom.gx-extended-nvim
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
