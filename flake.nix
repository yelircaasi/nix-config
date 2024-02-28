{
  description = "yelircaasi's nix config, designed to declaratively share configuration across devices";

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    defaultDeclaration = {
      defaultShell = "bash";
      otherShells = [];
      compositors = [];
      desktopEnvironments = [];
      nvidia = false;
      pipewire = true;
      jack = true;
      networkmanager = true;
      wayland = false;
      x11 = false;
      ssh-server = true;
      docker = false;
      podman = false;
      printing = false;
      extraGroups = ["networkmanager" "wheel"];
      extraSystemPackageNames = [];
      additionalModules = [];
    };
    deviceDeclarations = mylib.updateAttrsWith defaultDeclaration {
      betsy = {
        name = "betsy";
        description = "Personal laptop. Tuxedo Aura 15";
        defaultShell = "bash";
        otherShells = ["bash"];
        windowManagers = ["hyprland" "sway" "swayfx"];
        additionalModules = [];
      };
      hank = {
        name = "hank";
        description = "Work laptop. Tuxedo Stellaris 15 (with NVIDIA GeForce RTX 3080 GPU)";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = ["hyprland" "sway" "swayfx"];
        desktopEnvironments = ["gnome"];
        nvidia = true;
        pipewire = true;
        jack = false;
        networkmanager = true;
        wayland = true;
        x11 = true;
        ssh-server = true;
        docker = true;
        podman = true;
        printing = true;
      };
      elsie = {
        name = "elsie";
        description = "Dell Inspiron 14. Old, underpowered, and 32-bit (i686), used primarily for reading and note-taking while traveling; also good for experimentation";
        defaultShell = "bash";
        shells = ["bash"];
        windowManager = [];
        additionalModules = [];
      };
      malina = {
        name = "malina";
        description = "Raspberry Pi 3b+, aarch64 - non-GUI, primarily home server";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      khmara = {
        name = "khmara";
        description = "Linode cloud device";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      doxie = {
        name = "doxie";
        description = "Lightweight non-GUI development environment, suitable for use containers (see yelircaasi/nix on Dockerhub)";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      delilah = {
        name = "delilah";
        description = "Lightweight non-GUI environment, primarily for experimentation";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      ferris = {
        name = "ferris";
        description = "nix-on-Droid on LineageOS running on Fairphone 4";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      charlie = {
        name = "charlie";
        description = "nix-mobile on Fairphone 4";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      jamie = {
        name = "jamie";
        description = "nix-mobile on Pinephone64";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
    };

    g = import ./global-defs {inherit inputs;}; # -> move g.lib to nixos-utils flake
    mylib = import ./helper-functions.nix {inherit inputs g;}; # move to nixos-utils flake (called mylib)
    # mylib = inputs.nix-helpers;
  in {
    nixosConfigurations = mylib.makeNixosConfigurations deviceDeclarations;
    homeConfigurations = mylib.makeHomeManagerConfigurations deviceDeclarations;
  };

  inputs = {
    # Nixpkgs
    nixpkgs = {
      url = "github:nixos/nixpkgs/b8b232ae7b8b144397fdb12d20f592e5e7c1a64d";
      #url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager/230836bb7ca318aec7bad8442954da611d06a172";
      #url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Neovim
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay/1da2e054a16309d7d7f7669438c8b9a5ef1b4642";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nix-utils
    # nix-utils = {
    #   url = "github:yelircaasi/nix-utils/...";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # SwayFX
    # swayfx = {
    #   url = "github:WillPower3309/swayfx/f0ecffe593574593ec99c104fa12e4bfd593b0f2";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # Snap
    #nix-snapd = {
    #  url = "github:io12/nix-snapd";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};
  };
}
