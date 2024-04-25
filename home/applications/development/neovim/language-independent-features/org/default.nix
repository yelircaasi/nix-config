{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins = [
    pkgs.neorg-telescope
    custom.neorg # alt: zk-nvim (or complement?), orgmode-nvim
  ];

  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
