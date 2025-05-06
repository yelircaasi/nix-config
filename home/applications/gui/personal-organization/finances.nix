{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaGuiSet deviceConfig {
    core = [];
  };
}
