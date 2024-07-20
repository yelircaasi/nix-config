{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    perl538Packages.LaTeXML
  ];
  xdg.configFile = {
  };
}
