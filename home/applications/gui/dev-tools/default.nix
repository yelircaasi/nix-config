{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaGuiSet deviceConfig {
    extended = [
      pkgs.regextester
    ];
  };
}
