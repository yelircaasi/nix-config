{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.pympress];
}
