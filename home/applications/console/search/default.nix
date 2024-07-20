{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./search-and-replace
    ./ack
    ./ast-grep
    ./fd
    ./frawk
    ./fselect
    ./fzf
    ./ripgrep-etc
    ./silver-searcher
    ./skim
    ./ugrep
    ./zf
  ];
}
