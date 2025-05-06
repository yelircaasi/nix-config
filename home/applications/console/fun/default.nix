{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    maximal = with pkgs; [
      aalib
      lolcat
      sl
    ];
  };
}
