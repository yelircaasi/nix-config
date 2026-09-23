{
  pkgs,
  mypkgs,
  deviceConfig,
  g,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    minimal = with pkgs; ([btop lsof] ++ (g.linuxOnly deviceConfig [procfd]));
    core = with pkgs; [conky glances];
    extended = [pkgs.gotop];
  };
  # TODO: CONFIG FOR btop, conky, glances, gotop
}
