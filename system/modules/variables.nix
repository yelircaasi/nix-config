{
  lib,
  deviceConfig,
  ...
}: {
  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
    EDITOR = "nvim";
    BROWSER = "qutebrowser";
  };
  environment.variables = {
    EDITOR = "nvim";
    BROWSER = "qutebrowser";
  };
}
