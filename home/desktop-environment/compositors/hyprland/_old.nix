{
  wayland.windowManager.hyprland = {
    enable = true;
    # catppuccin.enable = true;
    plugins = [
      # inputs.hyprland-plugins.packages.${pkgs.system}.hyprtrails
    ];
    settings = {
      exec-once = [
        "hyprpaper"
        "hypridle"
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

        # drop_shadow = true; TODO::prio4: fix
        # shadow_range = 4;
        # shadow_render_power = 3;
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
      # master.new_is_master = true;
      gestures.workspace_swipe = false;
      group = {
        # "col.border_active" = "0xee$yellowAlpha";
        # "col.border_inactive" = "0xaa$overlay0Alpha 0xaa$yellowAlpha 45deg";  TODO::prio4: fix
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

      workspace = [
        "1, monitor:desc:${g.monitors.${deviceConfig.name}},      default:true"
        (
          if deviceConfig.isWork
          then "2, monitor:desc:${g.monitors.work1Samsung}, default:true"
          else "2, monitor:desc:${g.monitors.homeLeft},    default:true"
        )
        (
          if deviceConfig.isWork
          then "3, monitor:desc:${g.monitors.work1Dell},    default:true"
          else "3, monitor:desc:${g.monitors.homeRight},   default:true"
        )
      ];

      windowrulev2 = [
        # "float, class:^(wlogout|pavucontrol|nmtui)$"
        # "workspace 1, class:^(lutris)$"
        # "workspace 2, class:^(nyxt)$"
        # "workspace 3, class:^(filemanager)$"
        # "workspace 4 silent, class:^(ArmCord)$"
        # "workspace 5, title:^(Spotify.*)$"
        # # Inhibit idle on fullscreen programs where keyboard/mouse may not be used for a while
        # "idleinhibit fullscreen, class:^(FreeTube)$"
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
        # TODO::prio3: figure out how to un-hard-code shell
        # TODO::prio3: figure out how to open selected file when exiting without hard-coding xplr
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
        monitor = desc:${g.monitors.olivia},      1920x1200,    0x720,      1
        monitor = desc:${g.monitors.betsy},       1920x1080,    0x720,      1
        monitor = desc:${g.monitors.homeLeft},    2560x1440,    1920x0,     1
        monitor = desc:${g.monitors.homeRight},   2560x1440,    4480x0,     1
        monitor = desc:${g.monitors.work1Samsung}, 2560x1440,    1920x0,     1
        monitor = desc:${g.monitors.work1Dell},    2560x1440,    4480x0,     1

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

  "hyprland-autoname-workspaces/config.toml".source = let
    tomlFormat = pkgs.formats.toml {};
    # palette = pkgs.custom.catppuccin-palette.${config.catppuccin.flavour};
  in
    tomlFormat.generate "hyprland-autoname-workspaces-config" {
      version = pkgs.hyprland-autoname-workspaces.version;

      # TODO::prio4: Investigate if it would be possible to use eww literals as a replacement for inline pango
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
}
