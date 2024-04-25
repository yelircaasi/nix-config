{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
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
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
