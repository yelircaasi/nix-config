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
      consoleSet = "core"; # none | minimal | core | extended | maximal
      guiSet = "none"; # none | minimal | core | extended | maximal
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
        description = "GPU laptop. Tuxedo Stellaris 15 (with NVIDIA GeForce RTX 3080 GPU) running NixOS";
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
      innokenti = {
        name = "innokenti";
        description = "Work laptop. Lenovo Thinkpad running NixOS.";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = ["hyprland"];
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
    mylib = import ./mylib.nix {inherit inputs g;}; # move to nixos-utils flake (called mylib)  TODO::prio2
  in {
    nixosConfigurations = mylib.makeNixosConfigurations deviceDeclarations;
    homeConfigurations = mylib.makeHomeManagerConfigurations deviceDeclarations;
    devShells = mylib.makeDevShells deviceDeclarations;
    packages.x86_64-linux = {
      # TODO::prio1: ADD flake-utils.lib.eachDefaultSystem
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
    nixpkgs = {
      url = "github:nixos/nixpkgs/98d4992121235f3642ffc3ab29bd6777a6447bcd";
    };

    home-manager = {
      url = "github:nix-community/home-manager/7ede02c32a729db0d6340bdb41d10e73ec511ca0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neovim-nightly-overlay = {
      # NEWER: url = "github:nix-community/neovim-nightly-overlay/3fe45a5c38a9dfe182f20079ebdab9b20670197e";
      url = "github:nix-community/neovim-nightly-overlay/31c50a1318f9ba2e7236e150dce28189c5d8fc31";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # TODO::prio1
    # neovim-flake = {
    #   #url = git+file:///home/gvolpe/workspace/neovim-flake;
    #   url = github:yelircaasi/neovim-ide-flake;
    #   inputs.nixpkgs.follows = "nixpkgs";
    #   # inputs.flake-schemas.follows = "flake-schemas";
    # };

    sops-nix = {
      url = "github:Mic92/sops-nix/61154300d945f0b147b30d24ddcafa159148026a";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions/f6dff741f9f485b3596a368704ec171d9eb8c7cd?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixgl = {
      url = "github:nix-community/nixGL/310f8e49a149e4c9ea52f1adf70cdc768ec53f8a";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-treesitter = {
      url = "github:ratson/nix-treesitter/d9d35e37a5b2aee2f3f4d14c66e2bf0604dae4ce";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nix-utils = {  TODO::prio2
    #   url = "github:yelircaasi/nix-utils/...";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # TODO::prio5
    # swayfx = {
    #   url = "github:WillPower3309/swayfx/f0ecffe593574593ec99c104fa12e4bfd593b0f2";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };
}
