{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    
  ];
  xdg.configFile = {
  };
}
