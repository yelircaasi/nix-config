{
  lib,
  deviceConfig,
  ...
}: let
  hasHyprland = builtins.elem "hyprland" deviceConfig.compositors;
in {
  programs.hyprland = {
    enable = hasHyprland;
    xwayland.enable = hasHyprland;
  };
}
