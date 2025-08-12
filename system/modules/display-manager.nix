{
  pkgs,
  deviceConfig,
  ...
}: {
  environment.systemPackages = with pkgs; [
    hyprland
    # gnome.gdm
    # sddm
    # where-is-my-sddm-theme
    # sddm-chili-theme

    # lightdm
    # lightdm-gtk-greeter
  ];
  # services.xserver.displayManager.lightdm.enable = true;
  # services.xserver.displayManager.lightdm.greeter.package = pkgs.lightdm-gtk-greeter;
  # services.xserver.displayManager.lightdm.greeter.name = "lightdm-gtk-greeter";
  # services.xserver.displayManager.lightdm.greeters.gtk.enable = true;

  # services.xserver.displayManager.sddm = {
  #   enable = true;
  #   theme = "chili";
  #   enableHidpi = true;
  #   wayland.enable = true;
  #   autoLogin = {
  #     relogin = true;
  #   };
  #   stopScript = ''
  #     # pkill -15 swww-daemon
  #     # if [ -f /run/user/1000/swww.socket ]
  #     # then
  #     #   rm /run/user/1000/swww.socket
  #     # fi
  #     pkill -9 Hyprland
  #   '';
  #   # services.xserver.desktopManager.runXdgAutostartIfNone = true;
  # };
  #wservices.xserver.displayManager.sddm.theme = "chili";
  # services.xserver.displayManager.sddm.enableHidpi = true;
  # services.xserver.displayManager.sddm.wayland.enable = true;

  # services.xserver.displayManager.job = {
  #   logToFile = true;
  #   # execCmd = "${pkgs.lightdm}/bin/lightdm";
  # };

  # services.xserver.displayManager.startx.enable = true;
  services.displayManager.gdm = {
    enable = false;
    # wayland = true;
  };
  # services.xserver.desktopManager.gnome.enable = false;

  # services.xserver.displayManager.defaultSession = "hyprland";
  # services.xserver.displayManager.hiddenUsers = ["landscape"];
  # services.xserver.displayManager.autoLogin.enable = true;
  # services.xserver.displayManager.autoLogin.user = "isaac";

  # systemd.extraConfig = ''
  #   DefaultTimeoutStopSec=10s
  # '';

  xdg.portal = {
    enable = true;
    # wlr.enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-wlr];
    # config.common.default = "*";
  };
}
