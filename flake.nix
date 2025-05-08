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
      isWork = false;
      defaultShell = "bash";
      otherShells = [];
      compositors = ["hyprland"]; # "sway" "swayfx"];
      desktopShell = {
        #old: ["fuzzel" "wlogout" "mako" "waybar"];
        launcher = null;
        logoutManager = null;
        notificationDaemon = null;
        widgetTools = [];
      };
      /*
      TODO::prio2: add fields?
        keyRemapper         ()
        bootLoader          ()

        flatpak             ()
        snap?               (https://flakehub.com/flake/io12/nix-snapd?view=usage)
      */
      desktopEnvironments = []; # cosmic | gnome | kde
      terminalEmulators = ["wezterm"];
      consoleSet = "core"; # none | minimal | core | extended | maximal
      guiSet = "none"; # none | minimal | core | extended | maximal
      setOverrides = {
        add = [];
        remove = [];
      };
      sops = false;
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
        desktopShell = {
          launcher = "fuzzel";
          logoutManager = "wlogout";
          notificationDaemon = "mako";
          widgetTools = ["waybar"];
        };
        terminalEmulators = ["wezterm"];
        consoleSet = "maximal";
        guiSet = "core";
        setOverrides = {
          add = [];
          remove = [];
        };
        sops = true;
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
        compositors = ["hyprland"];
        editors = ["neovim"];
        browsers = ["nyxt" "qutebrowser" "vieb" "firefox"];
        desktopEnvironments = [];
        desktopShell = {
          launcher = "fuzzel";
          logoutManager = "wlogout";
          notificationDaemon = "mako";
          widgetTools = ["waybar"];
        };
        terminalEmulators = ["wezterm"];
        consoleSet = "minimal";
        guiSet = "minimal";
        setOverrides = {
          add = [];
          remove = [];
        };
        sops = true;
        prompt = "oh-my-posh";
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
        additionalModules = [];
      };
      olivia = {
        name = "olivia";
        description = "Work laptop. Lenovo Thinkpad running NixOS.";
        isWork = true;
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = ["hyprland"];
        editors = ["neovim"];
        browsers = ["qutebrowser" "chromium" "vieb" "nyxt"];
        desktopEnvironments = [];
        desktopShell = {
          launcher = "fuzzel";
          logoutManager = "wlogout";
          notificationDaemon = "mako";
          widgetTools = ["waybar"];
        };
        terminalEmulators = ["wezterm" "termonad"];
        consoleSet = "minimal";
        guiSet = "minimal";
        setOverrides = {
          add = [];
          remove = [];
        };
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
      delilah = {
        # TODO::prio1
        name = "delilah";
        # username = "root";
        description = "Lightweight non-GUI environment, primarily for experimentation";
        defaultShell = "bash";
        otherShells = ["bash" "zsh" "fish" "xonsh"];
        compositors = [];
        additionalModules = [];
      };
      henrique = {
        # TODO::prio1
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
        # TODO::prio1
        name = "jabari";
        description = "same work laptop, but running Ubuntu Server with custom DE, flatpak, and Nix";
        isNixOS = false;
      };
      elsie = {
        # TODO::prio1
        name = "elsie";
        description = "Dell Inspiron 14. Old, underpowered, and 32-bit (i686), used primarily for reading and note-taking while traveling; also good for experimentation; dual-boots Guix System";
        defaultShell = "bash";
        shells = ["bash"];
        windowManager = [];
        additionalModules = [];
      };
      malina = {
        # TODO::prio1
        name = "malina";
        description = "Raspberry Pi 3b+, aarch64 - non-GUI, primarily home server";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      khmara = {
        # TODO::prio1
        name = "khmara";
        description = "Linode cloud device";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      doxie = {
        # TODO::prio1
        name = "doxie";
        description = "Lightweight non-GUI development environment, suitable for use in containers (see yelircaasi/nix on Dockerhub)";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      ferris = {
        # TODO::prio1
        name = "ferris";
        description = "nix-on-droid on LineageOS running on Fairphone 4";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      charlie = {
        # TODO::prio1
        name = "charlie";
        description = "nix-mobile on Fairphone 4";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      jamie = {
        # TODO::prio1
        name = "jamie";
        description = "nix-mobile on Pinephone64";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = [];
        additionalModules = [];
      };
      hank-old = {
        name = "hank";
        description = "GPU laptop. Tuxedo Stellaris 15 (with NVIDIA GeForce RTX 3080 GPU) running Ubuntu Server + Nix";
        defaultShell = "bash";
        otherShells = ["bash"];
        compositors = ["i3-picom"];
        editors = ["neovim"];
        browsers = ["qutebrowser" "ungoogled-chromium" "vieb"];
        desktopEnvironments = [];
        desktopShell = {
          launcher = "fuzzel";
          logoutManager = "wlogout";
          notificationDaemon = "mako";
          widgetTools = ["waybar"];
        };
        terminalEmulators = ["wezterm" "termonad"];
        consoleSet = "maximal";
        guiSet = "maximal";
        setOverrides = {
          add = [];
          remove = [];
        };
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
