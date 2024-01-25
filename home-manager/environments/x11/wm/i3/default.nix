{
  inputs,
  # lib,
  # config,
  # pkgs,
  # custom,
  ...
}: {
  xsession.windowManager.i3.enable = true;
  #xsession.windowManager.i3.extraConfig = builtins.readFile ./config;
  xdg.configFile."./i3/config".source = ./config;
}
