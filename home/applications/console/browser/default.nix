{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = [pkgs.lynx];
    extended = with pkgs; [
      # mypkgs.chawan  TODO::prio4
      mypkgs.reader
      # edbrowse #TODO::prio4
      elinks
      links2

      w3m
    ];
  };
}
