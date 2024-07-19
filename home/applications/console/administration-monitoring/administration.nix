{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    btop
    gotop
    conky
    glances
  ];
}
