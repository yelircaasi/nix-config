{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    # mypkgs.chawan
    mypkgs.reader
    # edbrowse #TODO
    elinks
    links2
    lynx
    w3m
  ];
}
