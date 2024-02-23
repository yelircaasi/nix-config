{
  inputs,
  lib,
  pkgs,
  deviceConfig,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./config-constructor.nix
    ./landscape-client
  ];
}
