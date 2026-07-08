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
  shellName = "hilbish";
in {
  # programs.${shellName}.enable = deviceConfig.defaultShell == "${shellName}";
  home.packages = [pkgs.${shellName}];
}
