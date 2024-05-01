{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.searchAndReplace.enable {
  plugins =
    (with pkgs.vimPlugins; [
      substitute-nvim # alts: search-repace-nvim, nvim-spectre
      replacer-nvim # alt: nvim-search-and-replace
    ])
    ++ (with custom; [
      rgflow-nvim
      nvim-alt-substitute
      nvim-rg # vim-ripgrep
      muren-nvim
      sad-nvim
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
