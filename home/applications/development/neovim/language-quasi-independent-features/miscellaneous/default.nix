{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.miscellaneous.enable {
  plugins =
    (with pkgs.vimPlugins; [
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
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
