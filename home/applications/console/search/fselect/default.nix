{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.fselect];
}
