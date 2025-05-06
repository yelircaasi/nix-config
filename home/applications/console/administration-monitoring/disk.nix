{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages =
    g.buildList
    deviceConfig.consoleSet
    deviceConfig.setOverrides {
      minimal = [];
      core = [pkgs.gdu];
      extended = [
        # pkgs.diskonaut  removed due to lack of upstream manintenance TODO::prio2 replace
      ];
    };
}
