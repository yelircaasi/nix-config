{
  inputs,
  # lib,
  # config,
  pkgs,
  # custom,
  ...
}: {
  xdg.configFile."./nitrogen/bg-saved.cfg".source = ./bg-saved.cfg;
  
  home.packages = with pkgs; [ nitrogen ];
}
