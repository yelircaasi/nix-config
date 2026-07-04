{
  pkgs,
  lib,
  deviceConfig,
  ...
}: {
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    bluetuith
  ];
  networking.hostName = "nixos-${deviceConfig.name}"; # Define your hostname.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.wireless.enable = true; # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;
  # networking.wireless.iwd.enable = true;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;
}
