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
        compositors = ["hyprland"];
        editors = ["neovim"];
        browsers = ["nyxt" "qutebrowser" "ungoogled-chromium" "vieb" "firefox"];
        desktopEnvironments = [];
        desktopShell = ["fuzzel" "wlogout" "mako" "waybar"];
        terminalEmulators = ["wezterm" "termonad"];
        consoleSet = "maximal";
        prompt = "oh-my-posh";
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
      # url = "github:nixos/nixpkgs/5b346fcd0a2f94314ca3951961ad0e43d83d97fe";
      url = "github:yelircaasi/nixpkgs/9e99209fa79d6aa1cd282f3029ae4635c07d043c";

      #url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager/3d65009effd77cb0d6e7520b68b039836a7606cf";
      #url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Neovim
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay/60a8a1b221308566c51aa9a66e11145a3f141fc8";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Secret management via sops
    sops-nix = {
      url = "github:Mic92/sops-nix/d071c74a7de1e26d211b69b6fbae37ae2e31a87f";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions/641fc30885d4a8d1c9f0c721f03fcd5a9f8c3892?dir=pkgs/firefox-addons";
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
