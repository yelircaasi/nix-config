{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  # TODO: find cleaner way to identify whether system is linux
  home.packages = g.selectViaConsoleSet deviceConfig {
    minimal = with pkgs; (g.linuxOnly deviceConfig [
      networkmanager
      impala
    ]);
  };
}
