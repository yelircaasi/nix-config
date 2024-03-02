{
  inputs,
  pkgs,
  g,
  ...
}: let
  extraCfg = {
    gtk-application-prefer-dark-theme = 1;
  };
  extraCss3 = builtins.readFile ./gtk3.css;
  extraCss4 = builtins.readFile ./gtk4.css;
  /* ''
      * {
      background-color: #000800;
      color: #ffffff;
    }
  '';
  */
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
