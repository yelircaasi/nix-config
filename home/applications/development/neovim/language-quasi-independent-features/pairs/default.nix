{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.pairs.enable {
  plugins =
    (with pkgs.vimPlugins; [
      autoclose-nvim
      rainbow-delimiters-nvim
    ])
    ++ (with custom; [
      custom.ultimate-autopair-nvim # alt: nvim-autopairs
      custom.sentiment-nvim
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
