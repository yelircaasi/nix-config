{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    # mypkgs.chawan  TODO::prio4
    mypkgs.reader
    # edbrowse #TODO::prio4
    elinks
    links2
    lynx
    w3m
  ];
}
