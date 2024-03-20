{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
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
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
