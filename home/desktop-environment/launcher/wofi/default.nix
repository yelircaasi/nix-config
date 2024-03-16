{
  inputs,
  pkgs,
  g,
  ...
}: {
  imports = [];

  home.packages = with pkgs; [
    # rofi-wayland
    wofi
  ];

  programs.wofi = {
    enable = true;
    # package = ;
    # settings = {};
    # style = {};
  };
}
