{
  config,
  inputs,
  pkgs,
  lib,
  g,
  deviceConfig,
  mypkgs,
  ...
}: let
  inherit (g) asListIf asListIfIn asListFrom asNonemptyString;
  inherit (inputs.lib) mkIf;
  inherit (builtins) elem;
in {
  programs.home-manager.enable = true;

  imports = builtins.concatLists [
    [
      ./applications/console/administration-monitoring
      /*
      ./applications/console/browser

      */
      ./applications/console/communication
      ./applications/console/clipboard
      ./applications/console/data-wrangling
      ./applications/console/development

      ./applications/console/version-control
      ./applications/console/file-browser
      ./applications/console/fun
      ./applications/console/media
      ./applications/console/navigation
      ./applications/console/organization-cleanup
      ./applications/console/personal-organization
      ./applications/console/presentation
      /**/
      ./applications/console/quality-of-life
      ./applications/console/search
      ./applications/console/timer-clock
      ./applications/console/viewing
      ./applications/console/visualization

      ./applications/console/shell

      ./applications/gui/communication
      ./applications/gui/dev-tools
      ./applications/gui/media/editing

      # ./applications/gui/personal-organization

      ./desktop-environment/theming/gtk
      # ./desktop-environment/theming/qt
      ./desktop-environment/theming/fonts
      ./desktop-environment/theming/icons
      ./applications/gui/editor-and-ide/vscode # TODO::prio1: add to core set

      ./desktop-environment/compositors
      ./desktop-environment/launcher/${asNonemptyString deviceConfig.desktopShell.launcher}
      ./desktop-environment/logout-manager/${asNonemptyString deviceConfig.desktopShell.logoutManager}
      ./desktop-environment/widgets/notifications/${asNonemptyString deviceConfig.desktopShell.notificationDaemon}.nix
    ]
    (asListIf deviceConfig.isWork ./applications/console/work)
    (asListIf deviceConfig.isWork ./applications/gui/work)
    (asListIf deviceConfig.sops ./sops)
    (asListFrom deviceConfig.desktopShell.widgetTools (name: ./desktop-environment/widgets/${name}))

    (asListFrom deviceConfig.terminalEmulators (name: ./applications/gui/terminal-emulator/${name}))
    (asListFrom deviceConfig.browsers (name: ./applications/gui/browser/${name}))
    (asListFrom deviceConfig.readers (name: ./applications/gui/reader/${name}))
    (asListFrom deviceConfig.editors (name: ./applications/gui/editor-and-ide/${name}))
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "isaac";
    homeDirectory = "/home/isaac";
    stateVersion = "24.11";
    packages = with pkgs; [
      # xplr
      # lazygit
      # bat
      # fd
      # fzf
      # sd

      #docker
      wget
      alejandra
      # python313
      poetry
      gdrive3
    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  systemd.user.startServices = "sd-switch";

  # TODO::prio1: clean this up and avoid repetition; maybe parametrize defsrc if there is no reason to redeclare kanata.service from scratch
  xdg.configFile."kanata/kanata.kbd".text = ''
    (defcfg
        process-unmapped-keys yes
        linux-unicode-termination enter
        danger-enable-cmd yes
        linux-continue-if-no-devs-found yes
    )

    ${builtins.readFile ../system/modules/input/kanata/kanata.kbd}'';

  xdg.configFile = {
    "user-dirs.locale".text = "en_US";
    "home-manager/home.nix".text = ''
      { config, pkgs, ... }:

      {
        # Home Manager needs a bit of information about you and the
        # paths it should manage.
        home.username = "isaac";
        home.homeDirectory = "/home/isaac";

        # This value determines the Home Manager release that your
        # configuration is compatible with. This helps avoid breakage
        # when a new Home Manager release introduces backwards
        # incompatible changes.
        #
        # You can update Home Manager without changing this value. See
        # the Home Manager release notes for a list of state version
        # changes in each release.
        home.stateVersion = "24.11";

        # Let Home Manager install and manage itself.
        programs.home-manager.enable = true;
      }
    '';
    "colors.json".text = builtins.toJSON g.color;
    "keys.json".text = builtins.toJSON g.key;
  };
  xdg.userDirs = {
    enable = true;
    extraConfig = {
      XDG_CONFIG_HOME = "${config.home.homeDirectory}/.config";
      XDG_DATA_HOME = "${config.home.homeDirectory}/.local/share";
      XDG_CACHE_HOME = "${config.home.homeDirectory}/.cache";
    };
    desktop = "${config.home.homeDirectory}/.xdg-dirs/Desktop";
    documents = "${config.home.homeDirectory}/.xdg-dirs/Documents";
    download = "${config.home.homeDirectory}/Downloads";
    music = "${config.home.homeDirectory}/Music";
    pictures = "${config.home.homeDirectory}/Pictures";
    templates = "${config.home.homeDirectory}/.xdg-dirs/Templates";
    videos = "${config.home.homeDirectory}/Videos";
  };
}
