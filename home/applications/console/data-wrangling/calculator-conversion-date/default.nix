{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      # calculation
      libqalculate
      programmer-calculator
      kalker
      eva

      # conversion
      units

      # miscellaneous dev tools
      dtool # failed to build - TODO::prio2

      # date
      dateutils

      # binary calculation
      bitwise
      bcal
    ];
  };
}
