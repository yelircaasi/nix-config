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
    gtk3.extraCss = ''
        * {
            background-color: #000800;
            color: #021602;
            border-color: #002000;
        }

        button {
            background-color: #246b44;
            color: #cdcdcd;
        }

        button:hover {
            background-color: #3cb371;
        }

        entry {
            background-color: #13446c;
            color: #021602;
            border-color: #426989;
        }

        entry:hover {
            background-color: #426989;
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

    gtk4.extraCss = ''

        * {
            background-color: #000800;
            color: #021602;
            border-color: #002000;
        }

        button {
            background-color: #246b44;
            color: #cdcdcd;
        }

        button:hover {
            background-color: #3cb371;
        }

        entry {
            background-color: #13446c;
            color: #021602;
            border-color: #426989;
        }

        entry:hover {
            background-color: #426989;
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
  };
}
