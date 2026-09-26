let
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
    otherShells = []; # bash | dash | elvish | fish | hilbish | ngs | nushell | xonsh | zsh
    prompt = "starship";

    compositors = []; # ["sway" "swayfx"];
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
in {
  olivia =
    defaultDeclarationGui
    // {
      description = "Work laptop. Lenovo Thinkpad running NixOS.";
      isWork = true;
      consoleSet = "core";
      guiSet = "minimal";
      otherShells = ["dash" "elvish" "fish" "hilbish" "ngs" "nushell" "xonsh"]; # "zsh"];
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
      additionalModules = [./home/applications/console/ai];
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
  ahab =
    defaultDeclarationTty
    // {
      # TODO::prio1
      description = "MacOS";
      system = "aarch64-darwin";
      userName = "isaac";
      homeDir = "/Users/isaac";

      isWork = true;
      isGUI = false;
      isNixOS = false;
      consoleSet = "minimal";
      guiSet = "none";

      prompt = "ohmyposh";

      wallpaper = null;
      monitorSetups = [];
      compositors = []; # ["sway" "swayfx"];
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

      terminalEmulators = ["wezterm"]; #["wezterm"];
      readers = []; #["sioyek"];
      # browsers = ["nyxt" "qutebrowser" "vieb" "firefox"];
      messagers = [];
      extraGroups = [];

      ssh-server = false;
      networkmanager = false;
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
}
