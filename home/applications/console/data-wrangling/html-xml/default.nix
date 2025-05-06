{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      pup
      htmlq
      htmlcxx

      # mypkgs.xmlq  # TODO::prio2: make into CLI
      libxml2 # provides xmllint
      html2text
    ];
  };
}
