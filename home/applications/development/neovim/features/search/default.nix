{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
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
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
