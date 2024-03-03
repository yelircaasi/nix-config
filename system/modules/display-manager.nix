{
  pkgs,
  deviceConfig,
  ...
}: {
  environment.systemPackages = with pkgs; [
    sddm
    # where-is-my-sddm-theme
    sddm-chili-theme

    # lightdm
    # lightdm-gtk-greeter
  ];
  # services.xserver.displayManager.lightdm.enable = true;
  # services.xserver.displayManager.lightdm.greeter.package = pkgs.lightdm-gtk-greeter;
  # services.xserver.displayManager.lightdm.greeters.gtk.enable = true;

  # services.xserver.displayManager.sddm.enable = true;
  # services.xserver.displayManager.sddm.theme = "chili";
  # services.xserver.displayManager.sddm.enableHidpi = true;
  # services.xserver.displayManager.sddm.wayland.enable = true;
  # services.xserver.desktopManager.runXdgAutostartIfNone = true;

  # services.xserver.displayManager.gdm.enable = true;
  # services.xserver.desktopManager.gnome.enable = false;

  services.xserver.displayManager.hiddenUsers = ["landscape"];
}
