{
  description = "yelircaasi's nix config, designed to declaratively share configuration across devices";

  outputs = {
    self,
    nixpkgs,
    home-manager,
    rust-overlay,
    nixgl,
    ...
  } @ inputs: let
    defaultDeclarationTty = {
      userName = "isaac";
      isWork = false;
      isGUI = false;
      isNixOS = true;

      consoleSet = "core"; # none | minimal | core | extended | maximal
      guiSet = "none"; # none | minimal | core | extended | maximal
      setOverrides = {
        add = [];
        remove = [];
      };

      defaultShell = "bash";
      otherShells = [];
      prompt = "starship";

      compositors = [];
      desktopShell = {
        launcher = null;
        logoutManager = null;
        notificationDaemon = null;
        widgetTools = [];
        wallpaper = null;
      };
      wayland = false;
      nvidia = false;
      pipewire = true;
      jack = true;
      networkmanager = true;

      terminalEmulators = [];
      browsers = [];
      readers = [];
      editors = ["neovim"];
      messagers = [];

      docker = false;
      podman = false;
      distrobox = false;

      sops = false;
      ssh-server = true;
      printing = false;
      extraGroups = ["networkmanager" "wheel"];
      extraSystemPackageNames = [];

      additionalModules = [];
    };
    defaultDeclarationGui =
      defaultDeclarationTty
      // {
        isGUI = true;
        guiSet = "core";

        prompt = "ohmyposh";

        wallpaper = "white-sage";
        monitorSetups = [];
        compositors = ["hyprland"]; # "sway" "swayfx"];
        desktopShell = {
          launcher = "fuzzel";
          logoutManager = "wlogout";
          notificationDaemon = "mako";
          widgetTools = ["waybar"];
        };

        wayland = true;

        terminalEmulators = ["wezterm"];
        readers = ["sioyek"];
        browsers = ["nyxt" "qutebrowser" "vieb" "firefox"];
        messagers = [];

        ssh-server = false;
      };
    defaultDeclarationNonnixos = defaultDeclarationGui // {};
    deviceDeclarations = {
      olivia =
        defaultDeclarationGui
        // {
          name = "olivia";
          description = "Work laptop. Lenovo Thinkpad running NixOS.";
          isWork = true;
          consoleSet = "minimal";
          guiSet = "minimal";
          monitorSetups = ["olivia-work1-3" "olivia-work2-3" "olivia-work3-3" "olivia-home-3"];
          editors = ["vscode" "neovim"];
          browsers = ["qutebrowser" "chromium" "vieb" "nyxt"];
          terminalEmulators = ["wezterm" "termonad"];
          readers = ["sioyek" "pympress"];
          messagers = ["telegram"];
          sops = true;
          docker = true;
          desktopShell = {
            launcher = "fuzzel";
            logoutManager = "wlogout";
            notificationDaemon = "mako";
            widgetTools = ["quickshell"];
          };
        };
      betsy =
        defaultDeclarationGui
        // {
          name = "betsy";
          description = "Personal laptop. Tuxedo Aura 15";
          consoleSet = "minimal";
          sops = true;
          wallpaper = "lavender";
          monitorSetups = ["betsy-home-3" "betsy-1"];
          editors = ["vscode" "neovim"];
          browsers = ["qutebrowser" "chromium" "vieb" "nyxt"];
          terminalEmulators = ["wezterm" "termonad"];
          readers = ["sioyek" "pympress"];
          messagers = ["telegram"];
          docker = true;
        };
      hank =
        defaultDeclarationGui
        // {
          name = "hank";
          description = "GPU laptop. Tuxedo Stellaris 15 (with NVIDIA GeForce RTX 3080 GPU) running NixOS";
          consoleSet = "minimal";
          guiSet = "minimal";
          nvidia = true;
          jack = false;
          wayland = true;
          sops = true;
        };
      delilah =
        defaultDeclarationTty
        // {
          name = "delilah";
          description = "Lightweight non-GUI environment, primarily for experimentation";
          otherShells = ["zsh" "fish" "xonsh"];
        };
      henrique =
        defaultDeclarationGui
        // {
          name = "henrique";
          description = "Minimal install ISO for Tuxedo Stellaris 15 (with NVIDIA GeForce RTX 3080 GPU)";
          terminalEmulators = ["kitty" "wezterm" "foot"];
          consoleSet = "minimal";
          guiSet = "minimal";
          nvidia = true;
          jack = false;
        };
      jabari =
        defaultDeclarationGui
        // {
          name = "jabari";
          description = "Tuxedo Stellaris 15 laptop, but running Ubuntu Server with custom DE, flatpak, and Nix";
          isNixOS = false;
        };
      elsie = {
        # TODO::prio1
        name = "elsie";
        description = "Dell Inspiron 14. Old, underpowered, and 32-bit (i686), used primarily for reading and note-taking while traveling; also good for experimentation; dual-boots Guix System";
      };
      malina =
        defaultDeclarationTty
        // {
          name = "malina";
          description = "Raspberry Pi 3b+, aarch64 - non-GUI, primarily home server";
        };
      khmara =
        defaultDeclarationTty
        // {
          name = "khmara";
          description = "Linode cloud device";
        };
      doxie =
        defaultDeclarationTty
        // {
          name = "doxie";
          description = "Lightweight non-GUI development environment, suitable for use in containers (see yelircaasi/nix on Dockerhub)";
          isNixOS = false;
        };
      ferris =
        defaultDeclarationTty
        // {
          name = "ferris";
          description = "nix-on-droid on LineageOS running on Fairphone 4";
          isNixOS = false;
        };
      charlie =
        defaultDeclarationTty
        // {
          name = "charlie";
          description = "nix-mobile on Fairphone 4";
        };
      jamie =
        defaultDeclarationTty
        // {
          name = "jamie";
          description = "nix-mobile on Pinephone64";
        };
    };

    g = import ./global-defs {lib = inputs.nixpkgs.lib;}; # -> move g.utils to nixos-utils flake
    mylib = import ./mylib.nix {inherit inputs g;}; # move to nixos-utils flake (called mylib)  TODO::prio2
  in {
    nixosConfigurations = mylib.makeNixosConfigurations deviceDeclarations;
    homeConfigurations = mylib.makeHomeManagerConfigurations deviceDeclarations;
    devShells = mylib.makeDevShells deviceDeclarations;
    packages.x86_64-linux = {
      # TODO::prio1: ADD flake-utils.lib.eachDefaultSystem; make derivations instead of thunks
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
      url = "github:nixos/nixpkgs/91849ded6ed12d309e6697bea17e0bda5fdc7ad3";
    };

    home-manager = {
      url = "github:nix-community/home-manager/769e07ef8f4cf7b1ec3b96ef015abec9bc6b1e2a";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay/7966a9c203276bea3b7e8dd2e125fd2b4c8b6753";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay = {
      url = "github:oxalica/rust-overlay/08b4f3633471874c8894632ade1b78d75dbda002";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    neovim-flake = {
      url = github:yelircaasi/neovim-flake/f15c64c721838dd230125f65e4362429f871830a;
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nix-treesitter.follows = "nix-treesitter";
    };
    somewm = {
      url = "github:trip-zip/somewm/cb0b8e47125f3f167610f335ec8ce12b6d52d8fd";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sops-nix = {
      url = "github:Mic92/sops-nix/8adb84861fe70e131d44e1e33c426a51e2e0bfa5";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    firefox-addons = {
      url = "gitlab:rycee/nur-expressions/de69b47670b359630d2be0ad4dbcab05554d8fb7?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixgl = {
      url = "github:nix-community/nixGL/b6105297e6f0cd041670c3e8628394d4ee247ed5";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-treesitter = {
      url = "github:ratson/nix-treesitter/d9d35e37a5b2aee2f3f4d14c66e2bf0604dae4ce";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions/134c052c3213dc69ed881e41383b8ed29c5ffe72";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
