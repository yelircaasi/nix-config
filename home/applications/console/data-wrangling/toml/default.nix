{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    taplo
    toml-cli
  ];
  xdg.configFile = {
  };
}
