{
  inputs,
  pkgs,
  g,
  ...
}: {
  imports = [];

  home.packages = with pkgs; [
    fuzzel
  ];

  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "monospace:size=10";
        terminal = "${pkgs.wezterm}/bin/wezterm";
        layer = "overlay";
      };
      colors = {
        background = "000800ff";
        border = "003366ff";
      };
    };
  };
}
