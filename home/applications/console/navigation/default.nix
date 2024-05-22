{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./ack
    ./bat
    ./eza
    ./fd
    ./fzf
    ./ov
    ./pazi
    ./ripgrep
    ./silver-searcher
    ./tre
    ./zoxide
  ];
}
