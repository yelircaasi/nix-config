{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    skim
  ];

}
