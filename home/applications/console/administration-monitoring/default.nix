{
  pkgs,
  mypkgs,
  ...
}: {
  imports = [
    ./administration.nix
    ./disk.nix
    ./hardware.nix
    ./topgrade.nix
  ];
}
