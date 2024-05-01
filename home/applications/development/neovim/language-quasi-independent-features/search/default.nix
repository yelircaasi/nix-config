{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.search.enable {
  plugins =
    (with pkgs.vimPlugins; [
      telescope-nvim
      custom.telescope-alternate-nvim
      telescope-ui-select-nvim
      telescope-frecency-nvim
      telescope-zoxide
      telescope-fzf-native-nvim
      telescope-zf-native-nvim
      telescope-vim-bookmarks-nvim
      telescope-symbols-nvim
      telescope-sg
      telescope-project-nvim
      telescope-media-files-nvim
      telescope-lsp-handlers-nvim # ?
      telescope-live-grep-args-nvim # ?
    ])
    ++ (with custom; [
      #custom.harpoon2
      custom.marks-nvim
      custom.spaceport-nvim
      custom.improved-search-nvim
      custom.highlight-current-n-nvim # hlsearch-nvim
      custom.search-nvim
      nvim-hlslens
      custom.hlsearch-nvim
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
