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
          editors = ["vscode"];
          browsers = ["qutebrowser" "chromium" "vieb" "nyxt"];
          terminalEmulators = ["wezterm" "termonad"];
          readers = ["sioyek" "pympress"];
          messagers = ["telegram"];
          sops = true;
          docker = true;
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
      url = "github:nixos/nixpkgs/3346f629aab6730bcf42f6e85f56042e5728de13";
    };

    home-manager = {
      url = "github:nix-community/home-manager/86ff0ef506c209bb397849706e85cc3a913cb577";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # neovim-nightly-overlay = {
    #   url = "github:nix-community/neovim-nightly-overlay/b969e3c7bfcb7a438382dd6e379788f762094df5";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # TODO::prio1
    neovim-flake = {
      url = github:yelircaasi/neovim-flake/f15c64c721838dd230125f65e4362429f871830a;
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nix-treesitter.follows = "nix-treesitter";
      # inputs.flake-utils.follows = "flake-utils";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix/c482a1c1bbe030be6688ed7dc84f7213f304f1ec";
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
      # add ?ref=<tag> to track a tag
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions/134c052c3213dc69ed881e41383b8ed29c5ffe72";
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
