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
  appendIf = nameBool: namePath:
    if nameBool
    then [namePath]
    else [];
  listIfIn = nameString: nameList: namePath:
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
      ./applications/console/administration-monitoring
      ./applications/console/browser
      ./applications/console/communication
      ./applications/console/data-wrangling
      ./applications/console/development
      ./applications/console/version-control
      ./applications/console/file-browser
      ./applications/console/fun
      ./applications/console/media
      ./applications/console/navigation
      ./applications/console/organization-cleanup
      ./applications/console/personal-organization
      ./applications/console/quality-of-life
      ./applications/console/search
      ./applications/console/shell
      ./applications/console/timer-clock
      ./applications/console/viewing

      ./applications/gui/dev-tools
      ./applications/gui/media/editing

      # ./applications/gui/personal-organization

      ./desktop-environment/theming/gtk
      # ./desktop-environment/theming/qt
      ./desktop-environment/theming/fonts
      ./desktop-environment/theming/icons
    ]
    (listIfIn "hyprland" deviceConfig.compositors ./desktop-environment/compositor/hyprland)
    (listIfIn "fuzzel" deviceConfig.desktopShell ./desktop-environment/launcher/fuzzel)
    (listIfIn "wlogout" deviceConfig.desktopShell ./desktop-environment/logout-manager/wlogout)
    (listIfIn "mako" deviceConfig.desktopShell ./desktop-environment/widgets/notifications/mako)
    (listIfIn "waybar" deviceConfig.desktopShell ./desktop-environment/widgets/bar/waybar)

    (listIfIn "neovim" deviceConfig.editors ./applications/console/neovim)
    (listIfIn "wezterm" deviceConfig.terminalEmulators ./applications/gui/terminal-emulator/wezterm)
    (listIfIn "termonad" deviceConfig.terminalEmulators ./applications/gui/terminal-emulator/termonad)
    (listIfIn "nyxt" deviceConfig.browsers ./applications/gui/browser/nyxt)
    (listIfIn "qutebrowser" deviceConfig.browsers ./applications/gui/browser/qutebrowser)
    (listIfIn "ungoogled-chromium" deviceConfig.browsers ./applications/gui/browser/ungoogled-chromium)
    (listIfIn "vieb" deviceConfig.browsers ./applications/gui/browser/vieb)
    (listIfIn "firefox" deviceConfig.browsers ./applications/gui/browser/firefox)
  ];

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
