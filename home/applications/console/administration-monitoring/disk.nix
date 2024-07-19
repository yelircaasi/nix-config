{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    diskonaut
    gdu
  ];
}
