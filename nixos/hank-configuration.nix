{
  inputs,
  lib,
  pkgs,
  deviceConfig,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./config-from-device-config.nix
    ./landscape-client
  ];
}
