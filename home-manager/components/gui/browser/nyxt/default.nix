{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.nyxt];
}
