{
  inputs,
  lib,
  config,
  pkgs,
  custom,
  ...
}: {
  home.packages = [
    pkgs.termonad
  ];
  xdg.configFile."termonad/termonad.hs".text = ''

  '';
}
