{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./nnn
    ./xplr
    ./yazi
  ];
}
