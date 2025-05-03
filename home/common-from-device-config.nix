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
  asListIf = nameBool: namePath:
    if nameBool
    then [namePath]
    else [];
  asListIfIn = nameString: nameList: namePath:
    if (builtins.elem nameString nameList)
    then [namePath]
    else [];
  listIf = nameBool: namePath:
    if nameBool
    then namePath
    else [];
in {
  imports = builtins.concatLists [
    [
      /*
      ./applications/console/administration-monitoring
      ./applications/console/browser
      ./applications/console/communication
      ./applications/console/data-wrangling
      */
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

      ./applications/gui/dev-tools
      ./applications/gui/media/editing

      # ./applications/gui/personal-organization

      ./desktop-environment/theming/gtk
      # ./desktop-environment/theming/qt
      ./desktop-environment/theming/fonts
      ./desktop-environment/theming/icons

      ./applications/gui/editor-and-ide/vscode # TODO::prio1: add to core set
      ./common #TODO::prio1: move here
    ]
    (asListIf deviceConfig.sops ./sops)
    (asListIfIn "hyprland" deviceConfig.compositors ./desktop-environment/compositor/hyprland)
    (asListIfIn "fuzzel" deviceConfig.desktopShell ./desktop-environment/launcher/fuzzel)
    (asListIfIn "wlogout" deviceConfig.desktopShell ./desktop-environment/logout-manager/wlogout)
    (asListIfIn "mako" deviceConfig.desktopShell ./desktop-environment/widgets/notifications/mako)
    (asListIfIn "waybar" deviceConfig.desktopShell ./desktop-environment/widgets/bar/waybar)

    # TODO::prio1: fix: (asListIfIn "neovim" deviceConfig.editors ./applications/console/neovim)
    (asListIfIn "wezterm" deviceConfig.terminalEmulators ./applications/gui/terminal-emulator/wezterm)
    (asListIfIn "termonad" deviceConfig.terminalEmulators ./applications/gui/terminal-emulator/termonad)
    (asListIfIn "nyxt" deviceConfig.browsers ./applications/gui/browser/nyxt)
    (asListIfIn "qutebrowser" deviceConfig.browsers ./applications/gui/browser/qutebrowser)
    (asListIfIn "ungoogled-chromium" deviceConfig.browsers ./applications/gui/browser/ungoogled-chromium)
    (asListIfIn "vieb" deviceConfig.browsers ./applications/gui/browser/vieb)
    (asListIfIn "firefox" deviceConfig.browsers ./applications/gui/browser/firefox)
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "isaac";
    homeDirectory = "/home/isaac";
    stateVersion = "24.05";
    packages = with pkgs; [
      # xplr
      # lazygit
      # bat
      # fd
      # fzf
      # sd
    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  systemd.user.startServices = "sd-switch";

  xdg.configFile."kanata/kanata.kbd".source = ../system/modules/input/kanata/kanata.kbd;

  # home.stateVersion = "23.11";
  programs.home-manager.enable = true;

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
        home.stateVersion = "23.11";

        # Let Home Manager install and manage itself.
        programs.home-manager.enable = true;
      }
    '';
    "colors.json".text = builtins.toJSON g.color;
    "keys.json".text = builtins.toJSON g.key;
  };
  xdg.userDirs = {
    enable = true;
    desktop = "${config.home.homeDirectory}/.xdg-dirs/Desktop";
    documents = "${config.home.homeDirectory}/.xdg-dirs/Documents";
    download = "${config.home.homeDirectory}/Downloads";
    music = "${config.home.homeDirectory}/Music";
    pictures = "${config.home.homeDirectory}/Pictures";
    templates = "${config.home.homeDirectory}/.xdg-dirs/Templates";
    videos = "${config.home.homeDirectory}/Videos";
  };
}
