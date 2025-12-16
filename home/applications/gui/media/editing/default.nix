{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaGuiSet deviceConfig {
    extended = with pkgs; [
      darktable
      drawing
    ];
  };
}