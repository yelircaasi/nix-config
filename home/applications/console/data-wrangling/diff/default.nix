{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    dyff
    difftastic
    mypkgs.graphtage
  ];
}
