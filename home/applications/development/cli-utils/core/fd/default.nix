{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.fd];
}
