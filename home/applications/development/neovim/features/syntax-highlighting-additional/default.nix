{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins = [
    custom.hlargs-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
