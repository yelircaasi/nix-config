{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    khard
  ];
}
