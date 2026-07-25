{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = with pkgs; [
      each
      # mypkgs.zet
      huniq

      # alignment
      justify

      # color
      grc

      # pipe wrangling
      pipr
      dt
      teip

      #cut-like
      tuc
      hck
      choose
    ];
  };
  xdg.configFile = {
  };
}
