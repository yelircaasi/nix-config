{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    gdb
  ];

  # gdb-dashboard
  home.file.".gdbinit".source = ./gdbinit.py;
}
