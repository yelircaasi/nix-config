{
  inputs,
  lib,
  deviceConfig,
  ...
}: let
  hasSwayFX = builtins.elem "swayfx" deviceConfig.compositors;
in {
  # programs.sway = {
  #   # TODO::prioX: make an override for swayfx
  #   enable = hasSwayFX;
  #   package = inputs.swayfx;
  # };
}
