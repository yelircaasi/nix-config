{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
      nvim-surround
      nvim-treesitter-textsubjects
      nvim-treesitter-textobjects
    ])
    ++ (with custom; [
      nvim-various-textobjs
    ]);
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
