{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    ./components/common
    #./environments/flatpak
    #./environments/x11/wm/i3
    #./environments/x11/wallpaper/nitrogen
    #./environments/x11/compositor/picom

    ./environments/wayland/wm/hyprland
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
      kanata
      #libGL
      (writeShellScriptBin "test-hm" ''
        echo "this runs successfully!"
      '')
    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  xdg.configFile."kanata/kanata.kbd".source = ../nixos/components/kanata/kanata.kbd;
}
