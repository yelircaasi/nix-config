{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      # dmidecode  TODO::priority::2
    ];
  };
  # TODO: CONFIG FOR dmidecode
}
