{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    each
    pipr
    mypkgs.zet
    huniq
    dt
  ];
  xdg.configFile = {
  };
}
