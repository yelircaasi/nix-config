{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    ./common
    ./common-from-device-config.nix

    ./applications/work-garbage

    ./sops
    #./environments/flatpak
    #./environments/x11/wm/i3
    #./environments/x11/wallpaper/nitrogen
    #./environments/x11/compositor/picom

    # ./applications/gui/editor-and-ide/vscodium
    ./applications/gui/file-browser/thunar
    ./applications/development/ds-ml

    #./desktop-environment/widgets/ags

    ./desktop-environment/compositor/hyprland
    ./desktop-environment/launcher/fuzzel
    ./desktop-environment/widgets/bar/waybar

    ./desktop-environment/theming/gtk
    ./desktop-environment/theming/qt
    ./desktop-environment/theming/fonts
    ./desktop-environment/theming/icons

    #./desktop-environment/hyprland-ags.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  #programs.zsh.enable = false;
  #programs.wezterm.enable = false;

  home = {
    username = "isaac";
    homeDirectory = "/home/isaac";
    stateVersion = "23.11";
    packages = with pkgs; [
      docker
      # kanata
      #libGL
    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  xdg.configFile."kanata/kanata.kbd".source = ../system/modules/input/kanata/kanata.kbd;
}
