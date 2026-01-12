{
  pkgs,
  mypkgs,
  deviceConfig,
  g,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    minimal = [pkgs.btop];
    core = with pkgs; [conky glances];
    extended = [pkgs.gotop];
  };
  # TODO: CONFIG FOR btop, conky, glances, gotop
}
