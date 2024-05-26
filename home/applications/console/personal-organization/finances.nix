{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    hledger
  ];
}
