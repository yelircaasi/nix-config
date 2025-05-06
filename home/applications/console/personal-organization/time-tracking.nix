{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = with pkgs; [
      timewarrior
      #mypkgs.arttime

      # stopwatch
    ];
  };
}
