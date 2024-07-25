{pkgs, ...}: {
  home.packages = with pkgs; [
    grex
    crex
    python311Packages.exrex
    pcre2
    qgrep
    rgxg
    regex-cli

    # regex-generating languages
    pomsky
    melody
  ];
}
