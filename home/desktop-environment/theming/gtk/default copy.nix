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
        /*
        @define-color theme_bg_color ;
        @define-color theme_fg_color	@window_fg_color
        @define-color theme_base_color	@view_bg_color
        @define-color theme_text_color	@view_fg_color
        @define-color theme_selected_bg_color	@accent_bg_color
        @define-color theme_selected_fg_color	@accent_fg_color
        @define-color insensitive_bg_color	color-mix(@window_bg_color 60%, @view_bg_color)
        @define-color insensitive_fg_color	color-mix(in srgb, @window_fg_color 50%, transparent)
        @define-color insensitive_base_color	@view_bg_color
        @define-color borders	color-mix(in srgb, currentColor 15%, transparent)
        @define-color theme_unfocused_bg_color	@window_bg_color
        @define-color theme_unfocused_fg_color	@window_fg_color
        @define-color theme_unfocused_base_color	@view_bg_color
        @define-color theme_unfocused_text_color	@view_fg_color
        @define-color theme_unfocused_selected_bg_color	@accent_bg_color
        @define-color theme_unfocused_selected_fg_color	@accent_fg_color
        @define-color unfocused_insensitive_color	@insensitive_bg_color
        @define-color unfocused_borders
        */

        /* Accent */
        @define-color accent_bg_color ${g.color.gtk.selected.bg};
        @define-color accent_fg_color ${g.color.gtk.selected.bg}; /* accent_fg_color apparently must be either black or white */
        @define-color accent_color ${g.color.gtk.named.lime300};

        /* Destructive */
        @define-color destructive_color #ff7b63;
        @define-color destructive_bg_color #c01c28;
        @define-color destructive_fg_color ${g.color.gtk.core.text};

        /* Success */
        @define-color success_color #a9b665;
        @define-color success_bg_color #26a269;
        @define-color success_fg_color ${g.color.gtk.named.strawberry300};

        /* Warning */
        @define-color warning_color #d8a657;
        @define-color warning_bg_color #cd9309;
        @define-color warning_fg_color rgba(0, 0, 0, 0.8);

        /* Error */
        @define-color error_color ${g.color.gtk.semantic.error};
        @define-color error_bg_color #e33e35;
        @define-color error_fg_color ${g.color.gtk.core.text};

        /* Window */
        @define-color window_bg_color ${g.color.gtk.insensitive.bg};
        @define-color window_fg_color ${g.color.gtk.core.fg};

        /* View */
        @define-color view_bg_color ${g.color.gtk.unfocused.bg};
        @define-color view_fg_color ${g.color.gtk.core.fg};

        /* Headerbar */
        @define-color headerbar_bg_color ${g.color.gtk.unfocused.bg};
        @define-color headerbar_fg_color ${g.color.gtk.unfocused.fg};
        @define-color headerbar_border_color #D4BE98;
        @define-color headerbar_backdrop_color ${g.color.gtk.unfocused.bg};
        @define-color headerbar_shade_color rgba(0, 0, 0, 0.36);

        /* Card */
        @define-color card_bg_color @dialog_bg_color;
        @define-color card_fg_color ${g.color.gtk.core.fg};
        @define-color card_shade_color rgba(0, 0, 0, 0.36);

        /* Dialog */
        @define-color dialog_bg_color ${g.color.gtk.unfocused.bg};
        @define-color dialog_fg_color ${g.color.gtk.core.fg};

        /* Popover */
        @define-color popover_bg_color @dialog_bg_color;
        @define-color popover_fg_color ${g.color.gtk.core.text};

        /* Misc */
        @define-color shade_color rgba(0, 0, 0, 0.36);
        @define-color scrollbar_outline_color rgba(0, 0, 0, 0.5);

        /* Sidebar */
        @define-color sidebar_bg_color ${g.color.gtk.unfocused.bg};
        @define-color sidebar_fg_color ${g.color.gtk.unfocused.fg};
        @define-color sidebar_backdrop_color #2a2a2a;
        @define-color sidebar_shade_color rgba(0, 0, 0, 0.36);
        @define-color secondary_sidebar_bg_color #2a2a2a;
        @define-color secondary_sidebar_fg_color ${g.color.gtk.core.fg};
        @define-color secondary_sidebar_backdrop_color #272727;
        @define-color secondary_sidebar_shade_color @sidebar_shade_color;

        /* Remove rounded borders */
        window.solid-csd, window.csd {
          border-radius: 0;
          border-style: none;
          box-shadow: none;
        }

        /* Remove title text in csd */
        headerbar .title {
          opacity: 0;
        }

        /* Tooltip */
        tooltip.background {
          background-color: rgba(50, 48, 47, 0.9);
          color: ${g.color.gtk.insensitive.fg};
        }

        tooltip > box {
          margin: -6px;
          min-height: 24px;
          padding: 4px 8px;
        }

        @define-color black #000800;
        @define-color maroon #3f0d08;
        @define-color green #246b44;
        @define-color olive #b7b076;
        @define-color navy #13446c;
        @define-color purple #6f006f;
        @define-color teal #1e87db;
        @define-color silver #9a9a9a;

        @define-color grey #002000;
        @define-color red #51110b;
        @define-color lime #3cb371;
        @define-color yellow #d0c98f;
        @define-color blue #426989;
        @define-color fuchsia #a233a2;
        @define-color aqua #37a1f4;
        @define-color white #cdcdcd;

        * {
            background-color: @black;
            color: @silver;
            border-color: @grey;
        }

        button {
            background-color: @green;
            color: @white;
        }

        button:hover {
            background-color: @lime;
        }

        entry {
            background-color: @navy;
            color: @silver;
            border-color: @blue;
        }

        entry:hover {
            background-color: @blue;
        }

        header-bar {
            background-color: @purple;
            color: @white;
        }

        header-bar.titlebar {
            background-color: @fuchsia;
            color: @white;
        }

        window {
            background-color: @black;
            color: @silver;
        }

        window frame {
            border-color: @olive;
        }
      '';

    gtk4.extraCss = ''
        /* Accent */
        @define-color accent_bg_color ${g.color.gtk.selected.bg};
        @define-color accent_fg_color ${g.color.gtk.selected.bg}; /* accent_fg_color apparently must be either black or white */
        @define-color accent_color ${g.color.gtk.named.lime300};

        /* Destructive */
        @define-color destructive_color #ff7b63;
        @define-color destructive_bg_color #c01c28;
        @define-color destructive_fg_color ${g.color.gtk.core.text};

        /* Success */
        @define-color success_color #a9b665;
        @define-color success_bg_color #26a269;
        @define-color success_fg_color ${g.color.gtk.named.strawberry300};

        /* Warning */
        @define-color warning_color #d8a657;
        @define-color warning_bg_color #cd9309;
        @define-color warning_fg_color rgba(0, 0, 0, 0.8);

        /* Error */
        @define-color error_color ${g.color.gtk.semantic.error};
        @define-color error_bg_color #e33e35;
        @define-color error_fg_color ${g.color.gtk.core.text};

        /* Window */
        @define-color window_bg_color ${g.color.gtk.insensitive.bg};
        @define-color window_fg_color ${g.color.gtk.core.fg};

        /* View */
        @define-color view_bg_color ${g.color.gtk.unfocused.bg};
        @define-color view_fg_color ${g.color.gtk.core.fg};

        /* Headerbar */
        @define-color headerbar_bg_color ${g.color.gtk.unfocused.bg};
        @define-color headerbar_fg_color ${g.color.gtk.unfocused.fg};
        @define-color headerbar_border_color #D4BE98;
        @define-color headerbar_backdrop_color ${g.color.gtk.unfocused.bg};
        @define-color headerbar_shade_color rgba(0, 0, 0, 0.36);

        /* Card */
        @define-color card_bg_color @dialog_bg_color;
        @define-color card_fg_color ${g.color.gtk.core.fg};
        @define-color card_shade_color rgba(0, 0, 0, 0.36);

        /* Dialog */
        @define-color dialog_bg_color ${g.color.gtk.unfocused.bg};
        @define-color dialog_fg_color ${g.color.gtk.core.fg};

        /* Popover */
        @define-color popover_bg_color @dialog_bg_color;
        @define-color popover_fg_color ${g.color.gtk.core.text};

        /* Misc */
        @define-color shade_color rgba(0, 0, 0, 0.36);
        @define-color scrollbar_outline_color rgba(0, 0, 0, 0.5);

        /* Sidebar */
        @define-color sidebar_bg_color ${g.color.gtk.unfocused.bg};
        @define-color sidebar_fg_color ${g.color.gtk.unfocused.fg};
        @define-color sidebar_backdrop_color #2a2a2a;
        @define-color sidebar_shade_color rgba(0, 0, 0, 0.36);
        @define-color secondary_sidebar_bg_color #2a2a2a;
        @define-color secondary_sidebar_fg_color ${g.color.gtk.core.fg};
        @define-color secondary_sidebar_backdrop_color #272727;
        @define-color secondary_sidebar_shade_color @sidebar_shade_color;

        /* Remove rounded borders */
        window.solid-csd, window.csd {
          border-radius: 0;
          border-style: none;
          box-shadow: none;
        }

        /* Remove title text in csd */
        headerbar .title {
          opacity: 0;
        }

        /* Tooltip */
        tooltip.background {
          background-color: rgba(50, 48, 47, 0.9);
          color: ${g.color.gtk.insensitive.fg};
        }

        tooltip > box {
          margin: -6px;
          min-height: 24px;
          padding: 4px 8px;
        }

        @define-color black #000800;
        @define-color maroon #3f0d08;
        @define-color green #246b44;
        @define-color olive #b7b076;
        @define-color navy #13446c;
        @define-color purple #6f006f;
        @define-color teal #1e87db;
        @define-color silver #9a9a9a;

        @define-color grey #002000;
        @define-color red #51110b;
        @define-color lime #3cb371;
        @define-color yellow #d0c98f;
        @define-color blue #426989;
        @define-color fuchsia #a233a2;
        @define-color aqua #37a1f4;
        @define-color white #cdcdcd;

        * {
            background-color: @black;
            color: @silver;
            border-color: @grey;
        }

        button {
            background-color: @green;
            color: @white;
        }

        button:hover {
            background-color: @lime;
        }

        entry {
            background-color: @navy;
            color: @silver;
            border-color: @blue;
        }

        entry:hover {
            background-color: @blue;
        }

        header-bar {
            background-color: @purple;
            color: @white;
        }

        header-bar.titlebar {
            background-color: @fuchsia;
            color: @white;
        }

        window {
            background-color: @black;
            color: @silver;
        }

        window frame {
            border-color: @olive;
        }
      '';
  };
}
