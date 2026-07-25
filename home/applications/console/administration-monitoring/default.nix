{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  imports =
    [
      ./administration.nix
      ./disk.nix
      ./hardware.nix
      ./network.nix
    ]
    ++ (
      g.selectViaConsoleSet deviceConfig {
        extended = [./topgrade.nix];
      }
    );
}
