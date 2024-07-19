{
  config,
  inputs,
  pkgs,
  g,
  ...
}: let
  extraCfg = {
    gtk-application-prefer-dark-theme = 1;
  };
  extraCss3 = g.utils.readAndInterpolateCQ g ./gtk3.css;
  extraCss4 = g.utils.readAndInterpolateCQ g ./gtk4.css;
  extraCss = ''
    * {
        background-color: #000800;
        color: #647264;
        border-color: #002000;
    }

    button {
        background-color: #162416;
        color: #cdcdcd;
        border-color: #243224;
    }

    button * {
        background-color: #162416;
        color: #cdcdcd;
        border-color: #243224;
    }

    button:hover {
        background-color: #323632;
    }

    button:hover * {
        background-color: #323632;
    }

    entry {
        background-color: #203020;
        color: #021602;
        border-color: #002010;
    }

    entry:hover {
        background-color: #304030;
    }

    header-bar {
        background-color: #6f006f;
        color: #cdcdcd;
    }

    header-bar.titlebar {
        background-color: #a233a2;
        color: #cdcdcd;
    }

    window {
        background-color: #000800;
        color: #021602;
    }

    window frame {
        border-color: #b7b076;
    }


  '';
in {
  gtk = {
    enable = true;
    # theme = {
    #   name = "Adwaita-dark";
    #   package = pkgs.gnome.adwaita-icon-theme;
    # };
    iconTheme = {
      name = "Adwaita-dark";
      package = pkgs.gnome.adwaita-icon-theme;
    };
    cursorTheme = {
      name = "Adwaita-dark";
      package = pkgs.gnome.adwaita-icon-theme;
    };
    gtk3.bookmarks = [
      "file:///home/isaac/Downloads"
      "file:///home/isaac/repos"
    ];

    gtk3.extraConfig = extraCfg;
    gtk4.extraConfig = extraCfg;
    gtk3.extraCss = extraCss;
    gtk4.extraCss = extraCss;
  };
}
