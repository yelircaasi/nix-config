{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = [
      pkgs.gdb
    ];
  };

  # gdb-dashboard  TODO::prio1: fit into sets system
  home.file.".gdbinit".source = ./gdbinit.py;
}
