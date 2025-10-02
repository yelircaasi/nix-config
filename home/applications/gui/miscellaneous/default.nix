{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaGuiSet deviceConfig {
    minimal = with pkgs; [pkgs.ausweisapp];
    core = with pkgs; [];
    extended = with pkgs; [];
  };
}
