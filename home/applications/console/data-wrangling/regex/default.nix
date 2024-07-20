{pkgs, ...}: {
  home.packages = with pkgs; [
    grex
    crex
    python311Packages.exrex
    pcre2
    qgrep
    rgxg
    regex-cli
    pomsky
    melody
  ];
}
