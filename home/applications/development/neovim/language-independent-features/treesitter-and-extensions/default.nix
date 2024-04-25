{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
