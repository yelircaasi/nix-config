{
  inputs,
  pkgs,
  g,
  ...
}: let
  riverPhotoPath = "hypr/images/river.jpg";
  blitzPhotoPath = "hypr/images/blitz.jpg";
in {
  imports = [
  ];
  # Additional dependencies
  home.packages = with pkgs; [
    # custom.screenshot
    hyprlock
    hyprland-autoname-workspaces
    hyprpicker # color picker
    hyprpaper # move
    swww # move
    # mpvpaper # Live wallpaper
    # scratchpad
  ];

  xdg.configFile = {
    "./${riverPhotoPath}".source = ./images/river.jpg;
    "./${blitzPhotoPath}".source = ./images/blitz.jpg;
    "./hypr/hyprpaper.conf".text = ''
      preload = /home/isaac/.config/${riverPhotoPath}
      wallpaper = eDP-1,/home/isaac/.config/${riverPhotoPath}
      wallpaper = eDP-2,/home/isaac/.config/${riverPhotoPath}
      wallpaper = HDMI-A-1,/home/isaac/.config/${riverPhotoPath}
    '';
    "./hypr/hyprlock.conf".text = ''
        widget_name {
            monitor =
        }

        background {
            monitor =
            path = /home/isaac/.config/${riverPhotoPath}   # supports png, jpg, webp (no animations, though)
            color = rgba(20, 20, 20, 1.0)

            # all these options are taken from hyprland, see https://wiki.hyprland.org/Configuring/Variables/#blur for explanations
            blur_passes = 0 # 0 disables blurring
            blur_size = 7
            noise = 0.0117
            contrast = 0.8916
            brightness = 0.8172
            vibrancy = 0.1696
            vibrancy_darkness = 0.0
        }

        image {
            monitor =
            path = /home/isaac/.config/${blitzPhotoPath}
            size = 150 # lesser side if not 1:1 ratio
            rounding = -1 # negative values mean circle
            border_size = 2
            border_color = rgba(8, 16, 8, 0.9)
            rotate = 0 # degrees, counter-clockwise
            reload_time = -1 # seconds between reloading, 0 to reload with SIGUSR2
            reload_cmd =  # command to get new path. if empty, old path will be used. don't run "follow" commands like tail -F

            position = 0, 180
            halign = center
            valign = center
        }

        # shape {
        #     monitor =
        #     size = 280, 30
        #     color = rgba(5, 17, 5, 1.0)
        #     rounding = 6
        #     border_size = 2
        #     border_color = rgba(40, 90, 50, 1.0)
        #     rotate = 0
        #     xray = false # if true, make a "hole" in the background (rectangle of specified size, no rotation)

        #     position = 0, 50
        #     halign = center
        #     valign = center
        # }

        # label {
        #     monitor =
        #     text = Hallo, bester Papa!
        #     text_align = center # center/right or any value for default left. multi-line text alignment inside label container
        #     color = rgba(40, 72, 40, 0.8)
        #     font_size = 16
        #     font_family = Noto Sans
        #     rotate = 0 # degrees, counter-clockwise
        #     position = 0, 50
        #     halign = center
        #     valign = center
        # }

        input-field {
            monitor =
            size = 100, 30
            outline_thickness = 2
            dots_size = 0.33 # Scale of input-field height, 0.2 - 0.8
            dots_spacing = 0.15 # Scale of dots' absolute size, 0.0 - 1.0
            dots_center = true
            dots_rounding = -1 # -1 default circle, -2 follow input-field rounding
            outer_color = rgba(8, 16, 8, 0.9)
            inner_color = rgba(128, 128, 128, 0.7)
            # background_color = rgba(5, 17, 5, 1.0)
            font_color = rgba(8, 16, 8, 0.9)
            fade_on_empty = true
            fade_timeout = 1000 # Milliseconds before fade_on_empty is triggered.
            placeholder_text = <i>Input Password...</i> # Text rendered in the input box when it's empty.
            hide_input = false
            rounding = 6 # -1 means complete rounding (circle/oval)
            check_color = rgb(204, 136, 34)
            fail_color = rgb(204, 34, 34) # if authentication failed, changes outer_color and fail message color
            fail_text = <i>$FAIL <b>($ATTEMPTS)</b></i> # can be set to empty
            fail_timeout = 2000 # milliseconds before fail_text and fail_color disappears
            fail_transition = 300 # transition time in ms between normal outer_color and fail_color
            # capslock_color = -1
            # numlock_color = -1
            # bothlock_color = -1 # when both locks are active. -1 means don't change outer color (same for above)
            # invert_numlock = false # change color if numlock is off
            swap_font_color = false # see below

            position = 0, 50
            halign = center
            valign = center
        }
      }
    '';
  };

  wayland.windowManager.hyprland =
    # let
    #   accent = "\$${g.accent}";
    # in
    {
      enable = true;
      # catppuccin.enable = true;
      plugins = [
        # inputs.hyprland-plugins.packages.${pkgs.system}.hyprtrails
      ];
      settings = {
        exec-once = [
          "hyprpaper"
        ];

        general = {
          gaps_in = 5;
          gaps_out = 20;
          border_size = 2;
          "col.active_border" = "rgb(002400)"; # "0xee$lavenderAlpha 0xee${accent}Alpha 45deg";
          "col.inactive_border" = "rgb(162016)"; # "0xaa$overlay0Alpha 0xaa$mantleAlpha 45deg";

          layout = "dwindle";
          # cursor_inactive_timeout = 60;
        };

        decoration = {
          rounding = 5;

          blur = {
            enabled = true;
            size = 3;
            passes = 1;
          };

          drop_shadow = true;
          shadow_range = 4;
          shadow_render_power = 3;
          # "col.shadow" = "0xee1a1a1a";
        };

        animations = {
          enabled = true;
          bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
          animation = [
            "windows, 1, 7, myBezier"
            "windowsOut, 1, 7, default, popin 80%"
            "border, 1, 10, default"
            "borderangle, 1, 8, default"
            "fade, 1, 7, default"
            "workspaces, 1, 6, default"
          ];
        };

        dwindle = {
          pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
          preserve_split = true; # you probably want this
        };
        master.new_is_master = true;
        gestures.workspace_swipe = false;
        group = {
          "col.border_active" = "0xee$yellowAlpha";
          "col.border_inactive" = "0xaa$overlay0Alpha 0xaa$yellowAlpha 45deg";
          "col.border_locked_active" = "rgb(003366)"; # "0xee$yellowAlpha 0xee$redAlpha 45deg";
          "col.border_locked_inactive" = "rgb(242424)"; # "0xaa$overlay0Alpha 0xaa$redAlpha 45deg";
          groupbar = {
            text_color = "0xffffffff";
          };
        };

        misc = {
          disable_hyprland_logo = true;
          disable_splash_rendering = true;
          enable_swallow = true;
          swallow_regex = "^(org.wezfurlong.wezterm)$";
        };

        windowrulev2 = [
          "float, class:^(wlogout|pavucontrol|nmtui)$"
          "workspace 1, class:^(lutris)$"
          "workspace 2, class:^(nyxt)$"
          "workspace 3, class:^(filemanager)$"
          "workspace 4 silent, class:^(ArmCord)$"
          "workspace 5, title:^(Spotify.*)$"
          # Inhibit idle on fullscreen programs where keyboard/mouse may not be used for a while
          "idleinhibit fullscreen, class:^(FreeTube)$"
        ];

        "$mainMod" = "${g.key.hyprland.mod}"; # "$mainMod" = "SUPER";

        "$opener" = "handlr launch";
        "$term" = "$opener x-scheme-handler/terminal --";

        # Vim-style homerow direction keys
        "$left" = "${g.key.hyprland.left.base}";
        "$down" = "${g.key.hyprland.down.base}";
        "$up" = "${g.key.hyprland.up.base}";
        "$right" = "${g.key.hyprland.right.base}";

        "$menu" = "fuzzel";

        "$scratchpad" = "scratchpad -m '$menu --dmenu'";

        # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
        bind = inputs.nixpkgs.lib.flatten [
          "$mainMod, Return, exec, $term"
          "$mainMod, ${g.key.hyprland.killActive.base}, killactive,"
          "$mainMod SHIFT, Q, exec, wlogout"
          # Run in shell to ensure file manager sees environment variables
          # TODO: figure out how to un-hard-code shell
          # TODO: figure out how to open selected file when exiting without hard-coding xplr
          "$mainMod, N, exec, $term --class=filemanager -- fish -c 'handlr open (xplr)'"
          "$mainMod, V, togglefloating,"
          "$mainMod, R, exec, pkill $menu || $menu"
          "$mainMod, W, exec, wezterm"
          "$mainMod, P, pseudo, # dwindle"
          "$mainMod, S, togglesplit, # dwindle"
          "$mainMod, D, exec, hyprctl keyword general:layout dwindle"
          "$mainMod, M, exec, hyprctl keyword general:layout master"
          "$mainMod, O, exec, $opener x-scheme-handler/https"
          "$mainMod, G, togglegroup"
          "$mainMod, F, fullscreen"
          "$mainMod, C, exec, hyprpicker --autocopy"
          "$mainMod SHIFT, G, lockactivegroup, toggle"
          "$mainMod, bracketleft, changegroupactive, b"
          "$mainMod, bracketright, changegroupactive, f"
          ", Print, exec, screenshot.sh"
          ", XF86AudioPlay, exec, playerctl play-pause"
          "CTRL ALT, delete, exec, hyprctl kill"
          "$mainMod, Z, exec, $scratchpad"
          "$mainMod SHIFT, Z, exec, $scratchpad -g"

          # Move focus with mainMod + direction keys
          # Move active window with mainMod + SHIFT + direction keys
          (builtins.map
            (
              key: let
                dir = builtins.elemAt (inputs.nixpkgs.lib.strings.stringToCharacters key) 1;
              in [
                "$mainMod, ${key}, movefocus, ${dir}"
                "$mainMod SHIFT, ${key}, movewindoworgroup, ${dir}"
              ]
            )
            ["$left" "$down" "$up" "$right"])

          # Switch workspaces with mainMod + [0-9]
          # Move active window to a workspace with mainMod + SHIFT + [0-9]
          (builtins.genList
            (
              x: let
                ws = x + 1;
                key = toString (inputs.nixpkgs.lib.trivial.mod ws 10);
              in [
                "$mainMod, ${key}, workspace, ${toString ws}"
                "$mainMod SHIFT, ${key}, movetoworkspace, ${toString ws}"
              ]
            )
            10)

          # Scroll through existing workspaces with mainMod + scroll
          "$mainMod, mouse_down, workspace, e+1"
          "$mainMod, mouse_up, workspace, e-1"
        ];

        "$LMB" = "mouse:272";
        "$RMB" = "mouse:275";

        bindm = [
          # Move/resize windows with mainMod + LMB/RMB and dragging
          "$mainMod, $LMB, movewindow"
          "$mainMod, $RMB, resizewindow"
        ];
      };
      extraConfig =
        #hypr
        ''
          monitor=eDP-1,1920x1080@240,0x0,1
          monitor=eDP-2,1920x1080@240,0x0,1
          monitor=HDMI-A-1,2560x1440@60,1920x0,1
          # Does not show up when defined in settings for some reason
          # plugin {
          #   hyprtrails {
          #     color = {accent} #deleted $ to prevent error
          #   }
          # }

          # Resize submap
          bind = $mainMod ALT, R, submap, resize
          submap = resize

          binde = , $right, resizeactive, 10 0
          binde = , $left, resizeactive, -10 0
          binde = , $up, resizeactive, 0 -10
          binde = , $down, resizeactive, 0 10

          bind = , escape, submap, reset
          submap = reset
        '';
    };

  xdg.configFile = {
    "hyprland-autoname-workspaces/config.toml".source = let
      tomlFormat = pkgs.formats.toml {};
      # palette = pkgs.custom.catppuccin-palette.${config.catppuccin.flavour};
    in
      tomlFormat.generate "hyprland-autoname-workspaces-config" {
        version = pkgs.hyprland-autoname-workspaces.version;

        # TODO: Investigate if it would be possible to use eww literals as a replacement for inline pango
        format = rec {
          # Deduplicate icons if enable.
          # A superscripted counter will be added.
          dedup = true;
          dedup_inactive_fullscreen = true; # dedup more
          # window delimiter
          delim = " ";

          # available formatter:
          # {counter_sup} - superscripted count of clients on the workspace, and simple {counter}, {delim}
          # {icon}, {client}
          # workspace formatter
          workspace = "${workspace_empty}:{delim}{clients}"; # {id}, {delim} and {clients} are supported
          workspace_empty = "{name}"; # {id}, {delim} and {clients} are supported
          # client formatter
          client = "{icon}";
          # client_active = "<span color='#${palette.green.hex}'>${client}</span>";
          client_active = "<span color='#${g.color.terminalColor02}'>${client}</span>";

          # deduplicate client formatter
          # client_fullscreen = "[{icon}]";
          # client_dup = "{client}{counter_sup}";
          # client_dup_fullscreen = "[{icon}]{delim}{icon}{counter_unfocused}";
          # client_dup_active = "*{icon}*{delim}{icon}{counter_unfocused}";
        };

        class = {
          # Add your icons mapping
          # use double quote the key and the value
          # take class name from 'hyprctl clients'
          # "DEFAULT" = " {class}: {title}";
          "blueman-manager" = "";
          "DEFAULT" = "";
          "[Ff]irefox" = "";
          "FreeTube" = "";
          "libreoffice" = "󰈙";
          "lutris" = "";
          "Minecraft" = "󰍳";
          "filemanager" = "";
          "nyxt" = "󰖟";
          "org.keepassxc.KeePassXC" = "󰌋";
          "org.prismlauncher.PrismLauncher" = "󰍳";
          "org.pwmt.zathura" = "";
          "org.wezfurlong.wezterm" = "";
          "pavucontrol" = "󰕾";
          "Py[Ss]ol" = "󰣎";
          "steam" = "󰓓";
          "virt-manager" = "󰍺";
          "ArmCord" = "󰙯";
          ".yubioath-flutter-wrapped_" = "󰌋";
        };

        # class_active = {};

        # initial_class = {};

        # initial_class_active = {};

        # regex captures support is supported
        # "emerge: (.+?/.+?)-.*" = "{match1}"

        # title_in_class = {};

        # title_in_class_active = {};

        # title_in_initial_class = {};

        # initial_title = {};

        # initial_title_active = {};

        initial_title_in_class."^$" = {
          "(?i)spotify.*" = "";
        };

        # initial_title_in_class = {};

        # initial_title_in_initial_class = {};

        # Add your applications that need to be exclude
        # The key is the class, the value is the title.
        # You can put an empty title to exclude based on
        # class name only, "" make the job.
        exclude = {
          # "" = "^$"; # Hide XWayland windows that remain after closing
          # "[Ss]team" = "(Friends List.*|^$)"; # will match all Steam window with null title (some popup)
        };

        # workspaces_name = {
        #   "1" = "一";
        #   "2" = "二";
        #   "3" = "三";
        #   "4" = "四";
        #   "5" = "五";
        #   "6" = "六";
        #   "7" = "七";
        #   "8" = "八";
        #   "9" = "九";
        #   "10" = "十";
        # };
      };
    /*
    # For screenshot.sh
    "swappy/config".source =
      let
        iniFormat = pkgs.formats.ini { };
        fonts = config.stylix.fonts;
      in
      iniFormat.generate "swappy-config" {
        Default = {
          save_dir = "$HOME/Pictures/Screenshots";
          text_size = fonts.sizes.applications;
          text_font = fonts.sansSerif.name;
        };
      };
    */
  };
}
