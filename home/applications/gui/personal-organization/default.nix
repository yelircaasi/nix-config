{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./finances.nix
    ./notes.nix
    ./tasks.nix
    ./time-tracking.nix
  ];
}
