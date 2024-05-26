{
  pkgs,
  mypkgs,
  ...
}: {
  imports = [
    ./finances.nix
    ./notes.nix
    ./tasks.nix
    ./time-tracking.nix
  ];
}
