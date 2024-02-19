{
  lib,
  pkgs,
  deviceConfig,
  g,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # move all to home-manager (if at all possible)
    fira-code
    fira-code-nerdfont
    fira-code-symbols
    nerdfix

    waybar
    mako
    libnotify
    swww
    rofi-wayland
    networkmanagerapplet
    # eww
    (
      waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ ["-Dexperimental=true"];
      })
    )
  ];
}
