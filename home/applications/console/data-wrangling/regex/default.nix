{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = with pkgs; [
      grex # PLACEHOLDERLINK
      crex # PLACEHOLDERLINK
      python313Packages.exrex # PLACEHOLDERLINK
      pcre2 # PLACEHOLDERLINK
      qgrep # PLACEHOLDERLINK
      rgxg # PLACEHOLDERLINK
      regex-cli # PLACEHOLDERLINK

      # regex-generating languages
      pomsky # PLACEHOLDERLINK
      melody # PLACEHOLDERLINK
    ];
  };
}
