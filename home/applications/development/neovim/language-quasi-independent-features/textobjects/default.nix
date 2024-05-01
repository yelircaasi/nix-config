{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.textobjects.enable {
  plugins =
    (with pkgs.vimPlugins; [
      nvim-surround
      nvim-treesitter-textsubjects
      nvim-treesitter-textobjects
    ])
    ++ (with custom; [
      nvim-various-textobjs
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
