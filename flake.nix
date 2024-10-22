{
  description = "yelircaasi's nix config, designed to declaratively share configuration across devices";

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixgl,
    ...
  } @ inputs: let
    defaultDeclaration = {
      defaultShell = "bash";
      otherShells = [];
      compositors = ["hyprland"]; # "sway" "swayfx"];
      desktopShell = ["fuzzel" "wlogout" "mako" "waybar"];
      desktopEnvironments = []; # cosmic | gnome | kde
      terminalEmulators = ["wezterm"];
      consoleSet = "core"; # minimal | core | extended | maximal
      prompt = "starship";
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
        compositors = ["hyprland"];
        editors = ["neovim"];
        browsers = ["nyxt" "qutebrowser" "vieb" "firefox"];
        desktopEnvironments = [];
        desktopShell = ["fuzzel" "wlogout" "mako" "waybar"];
        terminalEmulators = ["wezterm"];
        consoleSet = "maximal";
        prompt = "oh-my-posh";
        nvidia = false;
        pipewire = true;
        jack = false;
        networkmanager = true;
        wayland = true;
        x11 = true;
        ssh-server = false;
        docker = false;
        podman = false;
        printing = false;

        additionalModules = [];
      };
      hank = {
        name = "hank";
        description = "Work laptop. Tuxedo Stellaris 15 (with NVIDIA GeForce RTX 3080 GPU) running Ubuntu Server + Nix";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = ["i3-picom"];
        editors = ["neovim"];
        browsers = ["qutebrowser" "ungoogled-chromium" "vieb"];
        desktopEnvironments = [];
        desktopShell = []; #"fuzzel" "wlogout" "mako" "waybar"];
        terminalEmulators = ["wezterm" "termonad"];
        consoleSet = "maximal";
        prompt = "starship";
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
      delilah = {
        name = "delilah";
        # username = "root";
        description = "Lightweight non-GUI environment, primarily for experimentation";
        defaultShell = "bash";
        otherShells = ["bash" "zsh" "fish" "xonsh"];
        compositors = [];
        additionalModules = [];
      };
      henrique = {
        name = "henrique";
        description = "Minimal install ISO for work laptop. Tuxedo Stellaris 15 (with NVIDIA GeForce RTX 3080 GPU)";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = ["hyprland"];
        terminalEmulators = ["kitty" "wezterm" "foot"];
        editors = ["neovim"];
        browsers = ["nyxt" "qutebrowser" "ungoogled-chromium" "vieb" "firefox"];
        desktopShell = ["fuzzel" "wlogout" "mako" "waybar"];
        desktopEnvironments = [];
        consoleSet = "maximal";
        prompt = "starship";
        nvidia = true;
        pipewire = true;
        jack = false;
        networkmanager = true;
        wayland = true;
        x11 = true;
        ssh-server = false;
        docker = false;
        podman = false;
        printing = false;
      };
      jabari = {
        name = "jabari";
        description = "same work laptop, but running Ubuntu Server with custom DE, flatpak, and Nix";
        isNixOS = false;
      };
      elsie = {
        name = "elsie";
        description = "Dell Inspiron 14. Old, underpowered, and 32-bit (i686), used primarily for reading and note-taking while traveling; also good for experimentation; dual-boots Guix System";
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
        description = "Lightweight non-GUI development environment, suitable for use in containers (see yelircaasi/nix on Dockerhub)";
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
    mylib = import ./mylib.nix {inherit inputs g;}; # move to nixos-utils flake (called mylib)
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
      # url = "path:/home/isaac/nixpkgs";
      url = "github:nixos/nixpkgs/f7542cb59c3215123304811023035d4470751b2f";
      # url = "github:yelircaasi/nixpkgs/9e99209fa79d6aa1cd282f3029ae4635c07d043c";

      #url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager/21c021862fa696c8199934e2153214ab57150cb6";
      #url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Neovim
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay/31c50a1318f9ba2e7236e150dce28189c5d8fc31";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # neovim-flake = {
    #   #url = git+file:///home/gvolpe/workspace/neovim-flake;
    #   url = github:yelircaasi/neovim-ide-flake;
    #   inputs.nixpkgs.follows = "nixpkgs";
    #   # inputs.flake-schemas.follows = "flake-schemas";
    # };

    # Secret management via sops
    sops-nix = {
      url = "github:Mic92/sops-nix/e2d404a7ea599a013189aa42947f66cede0645c8";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions/1f8ac3b4f0632fc9da864ecd4b1bbe51d61dde01?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixgl = {
      url = "github:nix-community/nixGL/310f8e49a149e4c9ea52f1adf70cdc768ec53f8a";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-treesitter = {
      url = "github:ratson/nix-treesitter/b6311f2c4567c7f59e879ee12dabef72df8c3bb6";
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
