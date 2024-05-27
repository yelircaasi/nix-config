{
  inputs,
  lib,
  pkgs,
  deviceConfig,
  ...
}: {
  environment.systemPackages = with pkgs; [kitty];
  imports = [
    ./config-constructor.nix
  ];
}
