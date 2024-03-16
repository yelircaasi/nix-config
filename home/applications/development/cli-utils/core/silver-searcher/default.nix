{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.silver-searcher];
}
