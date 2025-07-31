{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./email
    ./messaging
  ];
}
