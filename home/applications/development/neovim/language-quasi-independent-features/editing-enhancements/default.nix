{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
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
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
