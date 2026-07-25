{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      handlr-regex
      nix-prefetch-github
      xdg-utils
    ];
    extended = with pkgs; [
      # dashboard
      wtfutil
      # devdash:  TODO::prio2: replace because removed
      mypkgs.tinycare-tui

      # help
      pay-respects
    ];
  };
}
