{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      amber # https://github.com/dalance/amber
      sd # https://github.com/chmln/sd
      sad # https://github.com/ms-jpq/sad
      ruplacer # https://codeberg.org/your-tools/ruplacer
    ];
  };
}
