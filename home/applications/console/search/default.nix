{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports =
    g.selectViaConsoleSet
    deviceConfig {
      core = [
        ./search-and-replace
        ./ack
        ./ast-grep
        ./fd
        # TODO ./frawk
        ./fselect
        ./fzf
        ./ripgrep-etc
        ./silver-searcher
        ./skim
        ./ugrep
        ./zf
      ];
    };
}
