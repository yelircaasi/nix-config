{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.ack];
}
