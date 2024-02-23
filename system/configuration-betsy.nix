{
  inputs,
  lib,
  pkgs,
  deviceConfig,
  ...
}: {
  imports = [
    ./config-constructor.nix 
}
