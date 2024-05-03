{
  inputs,
  lib,
  config,
  pkgs,
  custom,
  ...
}: {
  programs.kitty.enable = true;
  programs.kitty.extraConfig = builtins.readFile ./kitty;
}
