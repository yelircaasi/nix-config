{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = [
      pkgs.perl5Packages.LaTeXML
    ];
  };

  xdg.configFile = {
  };
}
