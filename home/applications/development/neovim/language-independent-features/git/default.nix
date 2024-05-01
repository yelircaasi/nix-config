{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.git.enable {
  plugins =
    (with pkgs.vimPlugins; [
      neogit # alt: nvim-tinygit
      lazygit-nvim
      gitsigns-nvim
      diffview-nvim
      git-blame-nvim # #custom.nvim-blame-line
      gitlinker-nvim
    ])
    ++ (with custom; [
      git-sessions-nvim
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
