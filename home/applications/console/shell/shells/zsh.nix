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
  shellName = "zsh";
in {
  programs.${shellName}.enable = deviceConfig.defaultShell == "${shellName}";
  home.packages = [pkgs.${shellName}];
}
