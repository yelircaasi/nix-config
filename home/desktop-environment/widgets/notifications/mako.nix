{
  inputs,
  pkgs,
  g,
  ...
}: {
  imports = [];

  home.packages = with pkgs; [
    mako
    libnotify
  ];

  services.mako.settings = {
    enable = true;
    backgroundColor = "#000800";
    borderColor = "#021602";
    borderSize = 1;
    borderRadius = 5;
    icons = true;
    textColor = "#728072";
  };
}
