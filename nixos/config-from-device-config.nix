{
  inputs,
  config,
  deviceConfig,
  lib,
  ...
}: {
  imports = [
    ./hardware-configurations/${deviceConfig.name}-hardware-configuration.nix
    ./components/compositor/hyprland.nix
    ./components/compositor/sway.nix
    ./components/compositor/swayfx.nix
    ./components/desktop-environment/gnome
    ./components/desktop-environment/xfce
    ./components/desktop-environment/kde
    ./components/kanata
    ./components/windowing-protocol/wayland.nix
    ./components/windowing-protocol/x11.nix
    ./components/containers.nix
    ./components/hardware.nix
    ./components/miscellaneous-services.nix
    ./components/networking.nix
    ./components/nvidia.nix
    ./components/security.nix
    ./components/sound.nix
    ./components/ssh.nix
    ./components/system-packages.nix
    ./components/users.nix
    ./components/variables.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Allow unfree packages
  nixpkgs.config = {
    allowUnfree = true;
  };

  # This will add each flake input as a registry to make nix3 commands consistent with your flake
  nix = {
    settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;
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

  system.stateVersion = "23.11";
}
