{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.tre-command]; # alt: pkgs.tree
}
