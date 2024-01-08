{ inputs, lib, config, pkgs, ... }:
# let
#   unstableTarball =
#     fetchTarball {
#       url = https://github.com/NixOS/nixpkgs/archive/refs/tags/23.11-beta.tar.gz;
#       sha256 = "154x7mk2mxjza0djnq35n22539n740rwz12my77nqmq5a94jjf30";#6f5e4666837c63e29ce0e7fe997561fd218f5a9c8af28193f92e861a1bbb2a56";#0miapcdim1ifz69q3wlakid8y8gxc5srkzp7w2ff4qvwhdk4cpkg";
#     };
# in
{
  imports =
    [ # Include the results of the hardware scan.
      ../hardware-configurations/betsy-hardware-configuration.nix
      ./modules/kanata
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Allow unfree packages
  nixpkgs.config = {
    allowUnfree = true;
    # packageOverrides = pkgs: with pkgs; {
    #   unstable = import unstableTarball {
    #     config = config.nixpkgs.config;
    #   };
    # };
  };

  # This will add each flake input as a registry
  # To make nix3 commands consistent with your flake
  nix.registry = (lib.mapAttrs (_: flake: {inherit flake;})) ((lib.filterAttrs (_: lib.isType "flake")) inputs);

      # This will additionally add your inputs to the system's legacy channels
  # Making legacy nix commands consistent as well, awesome!
  nix.nixPath = ["/etc/nix/path"];
  environment.etc =
    lib.mapAttrs'
    (name: value: {
      name = "nix/path/${name}";
      value.source = value.flake;
    })
    config.nix.registry;

  nix.settings = {
    # Enable flakes and new 'nix' command
    experimental-features = "nix-command flakes";
    # Deduplicate and optimize nix store
    auto-optimise-store = true;
  };
    
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # fonts
    fira-code
    fira-code-nerdfont
    fira-code-symbols
    nerdfix

    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    git
    wget
    kanata
    nyxt
    neovim
    # lite-xl
    wezterm
    kitty
    alacritty
    waybar
    mako
    libnotify
    swww
    rofi-wayland
    networkmanagerapplet
    # eww
    (waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      })
    )
  ];
  
  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  xdg.portal.enable = true;
  # xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  # ^ this was causing a build error

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
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

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
    pulseaudio.enable = false;
  };



  # Enable sound with pipewire.
  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.isaac = {
    isNormalUser = true;
    description = "Isaac Riley";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
      neofetch
      # wezterm
      bat
      fd
      ripgrep
      fzf
      zsh
      xonsh
      # nushell
    #  thunderbird
    ];
    
  };
  
  # This setups a SSH server. Very important if you're setting up a headless system.
  # Feel free to remove if you don't need it.
  services.openssh = {
    enable = true;
    settings = {
      # Forbid root login through SSH.
      PermitRootLogin = "no";
      # Use keys only. Remove if you want to SSH using password (not recommended)
      PasswordAuthentication = false;
    };
  };
  programs.hyprland = {
    enable = true;
    enableNvidiaPatches = true;
    xwayland.enable = true;
  };
  
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "23.11";
}
