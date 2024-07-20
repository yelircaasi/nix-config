{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    mypkgs.zet
  ];
  xdg.configFile = {
  };
}
