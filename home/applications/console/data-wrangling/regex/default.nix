{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      grex
      crex
      python312Packages.exrex
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
