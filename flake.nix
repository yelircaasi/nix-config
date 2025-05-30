{
  description = "yelircaasi's nix config, designed to declaratively share configuration across devices";

  outputs = {
    self,
    nixpkgs,
    home-manager,
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

        prompt = "oh-my-posh";

        wallpaper = "hohenlohe";
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
          editors = ["vscode"];
          browsers = ["qutebrowser" "chromium" "vieb" "nyxt"];
          terminalEmulators = ["wezterm" "termonad"];
          sops = true;
        };
      betsy =
        defaultDeclarationGui
        // {
          name = "betsy";
          description = "Personal laptop. Tuxedo Aura 15";
          consoleSet = "maximal";
          monitorSetups = ["betsy-home-3"];
          sops = true;
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
          # TODO::prio1
          name = "delilah";
          # username = "root";
          description = "Lightweight non-GUI environment, primarily for experimentation";
          otherShells = ["zsh" "fish" "xonsh"];
        };
      henrique =
        defaultDeclarationGui
        // {
          # TODO::prio1
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
          # TODO::prio1
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
          # TODO::prio1
          name = "malina";
          description = "Raspberry Pi 3b+, aarch64 - non-GUI, primarily home server";
        };
      khmara =
        defaultDeclarationTty
        // {
          # TODO::prio1
          name = "khmara";
          description = "Linode cloud device";
        };
      doxie =
        defaultDeclarationTty
        // {
          # TODO::prio1
          name = "doxie";
          description = "Lightweight non-GUI development environment, suitable for use in containers (see yelircaasi/nix on Dockerhub)";
          isNixOS = false;
        };
      ferris =
        defaultDeclarationTty
        // {
          # TODO::prio1
          name = "ferris";
          description = "nix-on-droid on LineageOS running on Fairphone 4";
          isNixOS = false;
        };
      charlie =
        defaultDeclarationTty
        // {
          # TODO::prio1
          name = "charlie";
          description = "nix-mobile on Fairphone 4";
        };
      jamie =
        defaultDeclarationTty
        // {
          # TODO::prio1
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
      url = "github:nixos/nixpkgs/908514a0885f889432825e9ac71842ca444e8bd5";
    };

    home-manager = {
      url = "github:nix-community/home-manager/7ede02c32a729db0d6340bdb41d10e73ec511ca0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # neovim-nightly-overlay = {
    #   url = "github:nix-community/neovim-nightly-overlay/b969e3c7bfcb7a438382dd6e379788f762094df5";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # TODO::prio1
    neovim-flake = {
      url = github:yelircaasi/neovim-flake/df2dc1cc7b1e04a6ec40d9db03fe3ab8745c2fc5;
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nix-treesitter.follows = "nix-treesitter";
      # inputs.flake-utils.follows = "flake-utils";
    };

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
