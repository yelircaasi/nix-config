{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    each
    mypkgs.zet
    huniq

    # pipe wrangling
    pipr
    dt
    teip

    #cut-like
    tuc
    hck
    choose
  ];
  xdg.configFile = {
  };
}
