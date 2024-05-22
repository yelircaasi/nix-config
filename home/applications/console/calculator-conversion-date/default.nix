{pkgs, ...}: {
  home.packages = with pkgs; [
    # calculation
    libqalculate
    programmer-calculator
    kalker
    eva

    # conversion
    units

    # miscellaneous dev tools
    # dtool # failed to build - TODO

    # date
    dateutils

    # binary calculation
    bitwise
    bcal
  ];
}
