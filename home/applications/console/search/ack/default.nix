{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [
    pkgs.ack # https://beyondgrep.com/documentation/
  ];
}
