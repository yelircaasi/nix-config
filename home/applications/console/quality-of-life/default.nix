{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    # dashboard
    wtf
    devdash
    mypkgs.tinycare-tui

    # help
    thefuck

    handlr-regex
    nix-prefetch-github
    xdg-utils
  ];
}
