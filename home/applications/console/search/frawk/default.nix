{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.frawk];
}
