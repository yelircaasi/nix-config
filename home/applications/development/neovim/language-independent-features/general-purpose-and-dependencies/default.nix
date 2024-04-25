{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  packages = [
  ];
  plugins = with pkgs; [
    plenary-nvim
    mini-nvim
  ];

  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
