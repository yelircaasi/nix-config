{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    fastmod

    # general code quality
    mypkgs.precious

    # counting & analysis
    scc
    tokei

    # visualization
    gource
    mypkgs.tokei-pie

    # release

    # codebase navigation
    universal-ctags

    # miscellaneous
    ripsecrets
  ];
}
