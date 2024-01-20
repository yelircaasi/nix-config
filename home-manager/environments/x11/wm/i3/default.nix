{
  inputs,
  # lib,
  # config,
  # pkgs,
  # custom,
  ...
}: {
  xsession.windowManager.i3.enable = true;
  xsession.windowManager.i3.extraConfig = builtins.readFile ./config;
}
