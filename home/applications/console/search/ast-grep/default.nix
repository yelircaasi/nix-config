{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.ast-grep];
}
