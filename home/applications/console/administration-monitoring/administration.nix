{
  pkgs,
  mypkgs,
  deviceConfig,
  g,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    minimal = with pkgs; [btop lsof procfd];
    core = with pkgs; [conky glances];
    extended = [pkgs.gotop];
  };
  # TODO: CONFIG FOR btop, conky, glances, gotop
}
