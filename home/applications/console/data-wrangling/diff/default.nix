{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      dyff # PLACEHOLDERLINK
      difftastic # PLACEHOLDERLINK
      # mypkgs.graphtage  TODO::prio2: update # PLACEHOLDERLINK

      # TODO::prio1: try out and decide on
      # ydiff dirdiff diffoscope -> GUI: xxdiff # PLACEHOLDERLINK
    ];
  };
}
