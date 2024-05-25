{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    taskwarrior3
    tasksh
    taskwarrior-tui
    vit
    taskchampion-sync-server
    syncall
    taskopen
    tasknc
  ];
}