{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    # tui
    sc-im
    tidy-viewer
    mypkgs.texel
    csvlens
    # mypkgs.xan

    # cli
    csvq
    csvquote
    textql

    csvkit
    mypkgs.csvtk
    q-text-as-data
    miller
  ];
}
