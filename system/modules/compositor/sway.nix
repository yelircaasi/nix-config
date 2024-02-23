{
  lib,
  deviceConfig,
  ...
}: let
  hasSway = builtins.elem "sway" deviceConfig.compositors;
in {
  programs.sway = {
    enable = hasSway;
  };
}
