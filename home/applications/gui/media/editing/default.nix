{
  pkgs,
  mypkgs,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    darktable
    drawing
  ];
}
