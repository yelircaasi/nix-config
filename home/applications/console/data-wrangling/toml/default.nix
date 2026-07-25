{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = with pkgs; [
      taplo
      toml-cli
    ];
  };
  xdg.configFile = {
  };
}
