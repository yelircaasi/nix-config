{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      dyff
      difftastic
      # mypkgs.graphtage  TODO::prio2: update

      # TODO::prio1: try out and decide on
      # ydiff dirdiff diffoscope -> GUI: xxdiff
    ];
  };
}
