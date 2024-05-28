{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    ugrep
  ];

}
