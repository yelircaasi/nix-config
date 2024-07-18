{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
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
