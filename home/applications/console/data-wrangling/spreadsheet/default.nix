{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    sc-im
    tidy-viewer
    mypkgs.texel
  ];
}