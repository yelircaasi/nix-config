{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.editingEnhancements.enable {
  plugins =
    (with pkgs.vimPlugins; [
      text-case-nvim
      ssr
      treesj
      dial-nvim
      live-command-nvim
      renamer-nvim
      boole-nvim
      sort-nvim
      smartcolumn-nvim # alts: deadcolumn-nvim, virtcolumn-nvim
      trim-nvim
      vim-sneak
      indent-blankline-nvim
    ])
    ++ (with custom; [
      sibling-swap-nvim
      move-nvim # alt: custom.moveline-nvim
      # part-edit-nvim
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
