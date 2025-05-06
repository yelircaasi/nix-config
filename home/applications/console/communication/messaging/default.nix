{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = with pkgs; [
      # signal-cli  TODO::prio2
      # matrix-commander  TODO::prio2
      # matrix-commander-rs  TODO::prio2
    ];
  };
}
