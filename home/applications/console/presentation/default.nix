{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages =
    g.buildList deviceConfig.consoleSet
    deviceConfig.setOverrides {
      extended = with pkgs; [
        mdp
        reveal-md
        slides
        # haskellPackages.slidemews  # TODO::prio2: fix (broken)
      ];
    };
}
