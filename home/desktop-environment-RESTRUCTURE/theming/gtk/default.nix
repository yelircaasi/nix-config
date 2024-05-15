{
  inputs,
  pkgs,
  g,
  ...
}: let
  extraCfg = {
    gtk-application-prefer-dark-theme = 1;
  };
  extraCss3 = g.utils.readAndInterpolate g ./gtk3.css;
  extraCss4 = g.utils.readAndInterpolate g ./gtk4.css;
in {
  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome.adwaita-icon-theme;
    };
    iconTheme = {
      name = "Adwaita-dark";
      package = pkgs.gnome.adwaita-icon-theme;
    };
    cursorTheme = {
      name = "Adwaita-dark";
      package = pkgs.gnome.adwaita-icon-theme;
    };
    gtk3.extraConfig = extraCfg;
    gtk4.extraConfig = extraCfg;
    gtk3.extraCss = extraCss3;
    gtk4.extraCss = extraCss4;
  };
}
