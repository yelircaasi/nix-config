{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports =
    g.selectViaConsoleSet
    deviceConfig {
      minimal = [
        ./fd
        ./ripgrep-etc
        ./silver-searcher
      ];
      core = [
        ./search-and-replace
        ./ack
        ./ast-grep
        # TODO ./frawk
        ./fselect
        ./fzf

        ./skim
        ./ugrep
        ./zf
      ];
    };
}
