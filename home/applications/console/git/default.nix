{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    ungit
    mypkgs.git-fuzzy
    fzf
    gawk
    delta
    bat
    eza
    bc
  ];
  programs.git = {
    enable = true;
    userName = "yelircaasi";
    userEmail = "isaac.r.riley@gmail.com";
  };
}
