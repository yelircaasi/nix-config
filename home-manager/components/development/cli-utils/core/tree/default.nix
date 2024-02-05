{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.tree];
}
