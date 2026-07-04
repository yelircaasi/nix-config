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
      g.buildList
      deviceConfig.consoleSet
      deviceConfig.setOverrides {
        core = [./topgrade.nix];
      }
    );
}
