{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.macros.enable {
  plugins =
    (with pkgs.vimPlugins; [
      sqlite-lua # dependency of neocomposer
    ])
    ++ (with custom; [
      neocomposer-nvim
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
