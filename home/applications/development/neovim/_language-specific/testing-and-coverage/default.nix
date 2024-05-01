{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins = [
    custom.neotest # alt: nvim-test
    pkgs.nvim-coverage
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
