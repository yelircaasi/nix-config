{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    #TODO::prio2: evaluate set assignments
    core = with pkgs; [
      peaclock
      haskellPackages.Monadoro
    ];
    extended = with pkgs; [
      # uair TODO::prio3: BROKEN
      pom
      openpomodoro-cli
      # pomodoro  TODO::prio3: read source
      porsmo
      tomato-c
    ];
  };
}
