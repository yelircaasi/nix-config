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
    /*
    TODO::prio2: add fields?
      keyRemapper         ()
      bootLoader          ()

      flatpak             ()
      snap?               (https://flakehub.com/flake/io12/nix-snapd?view=usage)
    */
    defaultDeclarationTty = {
      system = "x86_64-linux";
      userName = "isaac";
      homeDir = "/home/isaac";
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

      compositors = []; # "sway" "swayfx"];
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
        editors = ["neovim"];

        ssh-server = false;
      };
    defaultDeclarationNonnixos = defaultDeclarationGui // {};
    deviceDeclarations = {
      olivia =
        defaultDeclarationGui
        // {
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
      ahab = defaultDeclarationTty // {
        # TODO::prio1
        description = "MacOS";
        system = "aarch64-darwin";
        userName = "ext_riley";
        homeDir = "/Users/ext_riley";


        isWork = true;
        isGUI = false;
        isNixOS = false;
        consoleSet = "minimal";
        guiSet = "none";

        prompt = "ohmyposh";

        wallpaper = null;
        monitorSetups = [];
        compositors = []; # "sway" "swayfx"];
        desktopShell = {
          launcher = null;
          logoutManager = null;
          notificationDaemon = null;
          widgetTools = [];
        };
        editors = ["neovim"];
        browsers = [];
        pipewire = false;
        jack = false;

        wayland = false;

        terminalEmulators = []; #["wezterm"];
        readers = []; #["sioyek"];
        # browsers = ["nyxt" "qutebrowser" "vieb" "firefox"];
        messagers = [];
        extraGroups = [];

        ssh-server = false;
      };
      hank =
        defaultDeclarationGui
        // {
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
          # TODO::prio1
          # userName = "root";
          description = "Lightweight non-GUI environment, primarily for experimentation";
          otherShells = ["zsh" "fish" "xonsh"];
        };
      henrique =
        defaultDeclarationGui
        // {
          # TODO::prio1
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
          # TODO::prio1
          description = "Tuxedo Stellaris 15 laptop, but running Ubuntu Server with custom DE, flatpak, and Nix";
          isNixOS = false;
        };
      elsie = {
        # TODO::prio1
        system = "i686-linux";
        description = "Dell Inspiron 14. Old, underpowered, and 32-bit (i686), used primarily for reading and note-taking while traveling; also good for experimentation; dual-boots Guix System";
      };
      malina =
        defaultDeclarationTty
        // {
          # TODO::prio1
          description = "Raspberry Pi 3b+, aarch64 - non-GUI, primarily home server";
        };
      khmara =
        defaultDeclarationTty
        // {
          # TODO::prio1
          description = "Linode cloud device";
        };
      doxie =
        defaultDeclarationTty
        // {
          # TODO::prio1
          description = "Lightweight non-GUI development environment, suitable for use in containers (see yelircaasi/nix on Dockerhub)";
          isNixOS = false;
        };
      ferris =
        defaultDeclarationTty
        // {
          # TODO::prio1
          description = "nix-on-droid on LineageOS running on Fairphone 4";
          isNixOS = false;
        };
      charlie =
        defaultDeclarationTty
        // {
          # TODO::prio1
          description = "nix-mobile on Fairphone 4";
        };
      jamie =
        defaultDeclarationTty
        // {
          # TODO::prio1
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
      url = "github:nixos/nixpkgs/9a21e4f72175406dc6de50e85cafc03fe5025269";
    };

    home-manager = {
      url = "github:nix-community/home-manager/37f21dfa5d27e71b75bacd9418b156f9265e312e";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay/f70c69e316e0aa26e1a4b38168622ba9646fa412";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay = {
      url = "github:oxalica/rust-overlay/e8e2021ee8cf3b58b000953ed3bee0d16b5e98e0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # TODO::prio1
    neovim-flake = {
      url = github:yelircaasi/neovim-flake/2959e71de7895abf110d141f25b3b6b1ef31875b;
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nix-treesitter.follows = "nix-treesitter";
      inputs.neovim-nightly-overlay.follows = "neovim-nightly-overlay";
      inputs.blink-lib.follows = "blink-lib";
      # inputs.flake-utils.follows = "flake-utils";
    };

    blink-lib = {
      url = "github:saghen/blink.lib/5876dd95deeb70aadbe9f1c0b7117a135061cdac";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # neovim-plugins = {
    #   url = "github:trip-zip/somewm/cb0b8e47125f3f167610f335ec8ce12b6d52d8fd";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    somewm = {
      url = "github:trip-zip/somewm/9b680d6651d5011ba954b26e199f9be51409b354";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix/420f8d2e9882911f65cfac15cc706f639ba96cca";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions/1777920f3688105a47b95b229dcefc85ae1bb42e?dir=pkgs/firefox-addons";
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
      # add ?ref=<tag> to track a tag
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions/ff4a4123af3924ee8741902d0d0af6debdae36a9";
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
