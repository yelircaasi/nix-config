{
  inputs,
  config,
  lib,
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ngsPackage,
  ...
}: let
  shellName = "ngs";
in {
  home.packages = [mypkgs.${shellName}];
}
