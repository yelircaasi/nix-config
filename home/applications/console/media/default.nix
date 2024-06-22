{
  pkgs,
  mypkgs,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    graphicsmagick  # move to console software
  ];
}
