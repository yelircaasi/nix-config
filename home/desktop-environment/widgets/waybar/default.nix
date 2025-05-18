{
  inputs,
  pkgs,
  g,
  ...
}: {
  imports = [];

  home.packages = with pkgs; [
    waybar
    font-awesome
  ];

  programs.waybar = {
    enable = true;
    style = g.utils.readAndInterpolateCQ g ./waybar.css;
    systemd.enable = false;
  };
}
