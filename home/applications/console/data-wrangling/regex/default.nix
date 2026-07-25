{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = with pkgs; [
      grex
      crex
      python313Packages.exrex
      pcre2
      qgrep
      rgxg
      regex-cli

      # regex-generating languages
      pomsky
      melody
    ];
  };
}
