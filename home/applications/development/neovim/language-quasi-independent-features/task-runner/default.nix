{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins = [
    pkgs.overseer-nvim # vs-tasks
    custom.toggletasks-nvim # nvim-moonicipal, jaq-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
