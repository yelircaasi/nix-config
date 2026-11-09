{
  pkgs,
  lib,
  deviceConfig,
  ...
}: {
  services.upower.enable = true;
}
