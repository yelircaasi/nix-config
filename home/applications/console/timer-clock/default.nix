{pkgs, ...}: {
  home.packages = with pkgs; [
    peaclock

    # pomodoro
    haskellPackages.Monadoro
    # uair TODO::prio3: BROKEN
    pom
    openpomodoro-cli
    # pomodoro  TODO::prio3: read source
    porsmo
    tomato-c
  ];
}
