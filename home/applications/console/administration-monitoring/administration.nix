{
  pkgs,
  mypkgs,
  deviceConfig,
  g,
  ...
}: {
  # home.packages = with pkgs; [
  #   btop
  #   gotop
  #   conky
  #   glances
  # ];
  home.packages =
    g.buildList
    deviceConfig.consoleSet
    deviceConfig.setOverrides {
      minimal = [pkgs.btop];
      core = [pkgs.conky pkgs.glances];
      extended = [pkgs.gotop];
    };
}
