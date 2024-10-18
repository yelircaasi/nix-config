{pkgs, ...}: {
  home.packages = with pkgs; [
    peaclock

    # pomodoro
    haskellPackages.Monadoro
    # uair TODO: BROKEN
    pom
    openpomodoro-cli
    # pomodoro  TODO: read source
    porsmo
    tomato-c
  ];
}
