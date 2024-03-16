{
  inputs,
  pkgs,
  g,
  ...
}: {
  imports = [];

  home.packages = with pkgs; [
    waybar

    # (
    #   waybar.overrideAttrs (oldAttrs: {
    #     mesonFlags = oldAttrs.mesonFlags ++ ["-Dexperimental=true"];
    #   })
    # )
  ];

  programs.waybar = {
    enable = true;
    style = g.utils.readAndInterpolate g ./waybar.css;
    systemd.enable = true;
  };
}
