{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
      nvim-colorizer-lua
      venn-nvim
      distant-nvim
      compiler-explorer-nvim
      flatten-nvim
      urlview-nvim
    ])
    ++ (with custom; [
      custom.nvim-regexplainer # #custom.hypersonic-nvim
      custom.quicknote-nvim
      custom.carbon-now-nvim
    ]);
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
