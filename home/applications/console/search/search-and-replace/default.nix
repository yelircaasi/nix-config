{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    amber
    sd
    sad
    ruplacer
  ];
}
