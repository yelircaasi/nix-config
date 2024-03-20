{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins = with custom; [
    custom.taskwarrior-nvim
    custom.xit-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
