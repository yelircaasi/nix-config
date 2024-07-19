{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    # dmidecode
  ];
}
