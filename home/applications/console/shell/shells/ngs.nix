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
  home.packages = []; # TODO: FIX BROKEN PACKAGE [mypkgs.${shellName}];
}
