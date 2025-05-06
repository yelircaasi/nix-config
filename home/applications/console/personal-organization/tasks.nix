{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = with pkgs; [
      taskwarrior3
      tasksh
      taskwarrior-tui
      vit
      taskchampion-sync-server
      # syncall
      taskopen
      tasknc

      mypkgs.tuido
    ];
  };
}
