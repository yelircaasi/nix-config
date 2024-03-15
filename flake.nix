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
        # windowManagers = ["hyprland" "sway" "swayfx"];
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

    g = import ./global-defs {lib = inputs.nixpkgs.lib;}; # -> move g.utils to nixos-utils flake
    mylib = import ./helper-functions.nix {inherit inputs g;}; # move to nixos-utils flake (called mylib)
    # mylib = inputs.nix-helpers;
  in {
    nixosConfigurations = mylib.makeNixosConfigurations deviceDeclarations;
    homeConfigurations = mylib.makeHomeManagerConfigurations deviceDeclarations;
    devShells = mylib.makeDevShells deviceDeclarations;
    packages.x86_64-linux = {
      # TODO: ADD flake-utils.lib.eachDefaultSystem
      colors = {
        json = builtins.toJSON g.color;
        nix = g.color;
      };
      keys = {
        json = builtins.toJSON g.key;
        nix = g.key;
      };
    };
  };

  inputs = {
    # Nixpkgs
    nixpkgs = {
      url = "github:nixos/nixpkgs/44c70a37071aff4360ff5453fb04e107680d1f70";
      #url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager/2f3367769a93b226c467551315e9e270c3f78b15";
      #url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Neovim
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay/ba07638ead045e7e2ecf9415727a694ad7cb7a66";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Secret management via sops
    sops-nix = {
      url = "github:Mic92/sops-nix/a1c8de14f60924fafe13aea66b46157f0150f4cf";
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
