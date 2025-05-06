{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      protonmail-bridge
      pass # TODO::prio1: get paid subscription to protonmail, set up pass

      neomutt
    ];
  };
}
