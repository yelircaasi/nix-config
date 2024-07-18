{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./broot
    ./pazi
    ./zoxide
  ];
}
