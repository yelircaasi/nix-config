{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = with pkgs; [
      # calculation
      libqalculate # PLACEHOLDERLINK
      programmer-calculator # PLACEHOLDERLINK
      kalker # PLACEHOLDERLINK
      eva # PLACEHOLDERLINK

      # conversion
      units # PLACEHOLDERLINK

      # miscellaneous dev tools
      dtool # failed to build - TODO::prio2 # PLACEHOLDERLINK

      # date
      dateutils # PLACEHOLDERLINK

      # binary calculation
      bitwise # PLACEHOLDERLINK
      bcal # PLACEHOLDERLINK
    ];
  };
}
