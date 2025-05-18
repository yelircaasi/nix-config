{
  lib,
  deviceConfig,
  ...
}: {
  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
    QT_STYLE_OVERRIDE = "gtk2";

    EDITOR = "nvim";
    BROWSER = "qutebrowser";
    NICKNAME = deviceConfig.name;
  };
  environment.variables = {
    EDITOR = "nvim";
    BROWSER = "qutebrowser";
    QT_STYLE_OVERRIDE = "gtk2";
    NICKNAME = deviceConfig.name;
  };
}
