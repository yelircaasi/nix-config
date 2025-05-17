{
  inputs,
  config,
  deviceConfig,
  lib,
  pkgs,
  ...
}: {
  imports =
    [
      ./hardware-configuration.nix
      ./modules/compositor/hyprland.nix
      ./modules/container.nix
      ./modules/desktop-environment/gnome
      ./modules/desktop-environment/kde
      ./modules/desktop-environment/xfce
      ./modules/display-manager.nix
      ./modules/gui-file-browser/thunar.nix
      ./modules/hardware.nix
      ./modules/input/kanata
      ./modules/miscellaneous-services.nix
      ./modules/networking.nix
      ./modules/nvidia.nix
      # (lib.mkIf deviceConfig.isWork )
      ./modules/security.nix
      ./modules/sound.nix
      ./modules/ssh.nix
      ./modules/system-packages.nix
      ./modules/ui/fonts
      ./modules/users.nix
      ./modules/variables.nix
      ./modules/windowing-protocol/wayland.nix
      # ./modules/windowing-protocol/x11.nix
      # (lib.mkIf deviceConfig.isWork ./modules/work.nix)
    ]
    ++ (
      if deviceConfig.isWork
      then [./modules/work.nix ./modules/password.nix]
      else []
    );

  environment.systemPackages = with pkgs; [git home-manager];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_6_12;

  # Allow unfree packages
  nixpkgs.config = {
    allowUnfree = true;
  };

  # This will add each flake input as a registry to make nix3 commands consistent with your flake
  nix = {
    settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;
      trusted-public-keys = [
        "hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ="
      ];
      substituters = [
        "https://cache.iog.io"
      ];
    };
    registry = (lib.mapAttrs (_: flake: {inherit flake;})) ((lib.filterAttrs (_: lib.isType "flake")) inputs);

    # This will additionally add your inputs to the system's legacy channels
    # Making legacy nix commands consistent as well, awesome!
    nixPath = ["/etc/nix/path"];
  };

  environment.etc =
    lib.mapAttrs'
    (name: value: {
      name = "nix/path/${name}";
      value.source = value.flake;
    })
    config.nix.registry;

  services = {};

  xdg.portal.enable = true;
  # xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ]; <- this was causing a build error

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };
  time.timeZone = "Europe/Berlin";

  system.stateVersion = "24.11";
}
