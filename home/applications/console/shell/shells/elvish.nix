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
  shellName = "elvish";
in {
  # programs.${shellName}.enable = deviceConfig.defaultShell == "${shellName}";
  home.packages = [pkgs.${shellName}];
}
