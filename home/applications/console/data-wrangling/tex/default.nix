{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = [
      pkgs.perl538Packages.LaTeXML
    ];
  };

  xdg.configFile = {
  };
}
