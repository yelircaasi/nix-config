{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    # dashboard
    wtfutil
    # devdash:  TODO::prio2: replace because removed
    mypkgs.tinycare-tui

    # help
    thefuck

    handlr-regex
    nix-prefetch-github
    xdg-utils
  ];
}
