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
    ];
  };
}
