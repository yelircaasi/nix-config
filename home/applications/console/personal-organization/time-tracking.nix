{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    timewarrior
    #mypkgs.arttime

    # stopwatch
  ];
}