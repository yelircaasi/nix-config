{
  inputs,
  pkgs,
  lib,
  mypkgs,
  ...
}: {
  imports = [
    # ./common
    ./common-from-device-config.nix

    ./applications/console/database
    ./applications/console/work-garbage/azure
    ./applications/console/work-garbage/jira

    # ./applications/gui/editor-and-ide/vscode

    ./sops
    #./environments/flatpak
    #./environments/x11/wm/i3
    #./environments/x11/wallpaper/nitrogen
    #./environments/x11/compositor/picom

    # ./applications/gui/editor-and-ide/vscodium
    # ./applications/gui/file-browser/thunar
    # ./applications/development/ds-ml

    # #./desktop-environment/widgets/ags

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
    stateVersion = "24.05";
    packages = with pkgs; [
      # docker
      # kanata
      #libGL
      kanata-with-cmd
      nixgl.auto.nixGLNvidia
      
      wget
      alejandra

    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
    

  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  xdg.configFile = {
    "kanata/kanata.kbd".source = ../system/modules/input/kanata/kanata.kbd;
    "systemd/user/kanata.service".text = ''
      [Unit]
      Description=Kanata key remapping daemon
      Requires=local-fs.target
      After=local-fs.target

      [Service]
      Type=simple
      ExecStart=/home/isaac/.nix-profile/bin/kanata -c /home/isaac/.config/kanata/kanata.kbd --port 5829

      [Install]
      WantedBy=sysinit.target
    '';
    /*[Unit]
      Description=Kanata keyboard remapper
      Documentation=https://github.com/jtroo/kanata

      [Service]
      Environment=PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin
      Environment=DISPLAY=:0
      Environment=HOME=/path/to/home/folder
      Type=simple
      ExecStart=/usr/local/bin/kanata --cfg /path/to/kanata/config/file
      Restart=no

      [Install]
      WantedBy=default.target
      */
  };
}
