{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      taplo
      toml-cli
    ];
  };
  xdg.configFile = {
  };
}
