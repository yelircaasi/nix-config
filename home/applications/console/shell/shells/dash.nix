{
  inputs,
  config,
  lib,
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: let
  shellName = "dash";
in {
  home.packages = [pkgs.${shellName}];
}
