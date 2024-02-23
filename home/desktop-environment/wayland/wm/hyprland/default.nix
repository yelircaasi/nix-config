{
  inputs,
  pkgs,
  g,
  ...
}: {
  imports = [
  ];
  # Additional dependencies
  home.packages = with pkgs; [
    # custom.screenshot
    hyprland-autoname-workspaces
    hyprpicker # color picker
    wlogout
    hyprpaper
    # mpvpaper # Live wallpaper
    # scratchpad
  ];

  xdg.configFile."./hypr/hyprpaper.conf".text = ''
    preload = /home/isaac/Pictures/river2.jpg
    wallpaper = eDP-2,/home/isaac/Pictures/river2.jpg
    wallpaper = HDMI-A-1,/home/isaac/Pictures/river2.jpg
  '';

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
          "wezterm"
          "hyprpaper"
        ];

        general = {
          gaps_in = 5;
          gaps_out = 20;
          border_size = 2;
          "col.active_border" = "rgb(002400)"; # "0xee$lavenderAlpha 0xee${accent}Alpha 45deg";
          "col.inactive_border" = "rgb(162016)"; # "0xaa$overlay0Alpha 0xaa$mantleAlpha 45deg";

          layout = "dwindle";
          cursor_inactive_timeout = 60;
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
          "col.shadow" = "$base";
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
            text_color = "$text";
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

        # "$mainMod" = "SUPER";
        "${g.key.hyprland.modAlias}" = "${g.key.hyprland.mod}";

        "$opener" = "handlr launch";
        "$term" = "$opener x-scheme-handler/terminal --";

        # Vim-style homerow direction keys
        "$left" = "${g.key.hyprland.left}";
        "$down" = "${g.key.hyprland.down}";
        "$up" = "${g.key.hyprland.up}";
        "$right" = "${g.key.hyprland.right}";

        "$menu" = "fuzzel";

        "$scratchpad" = "scratchpad -m '$menu --dmenu'";

        # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
        bind = inputs.nixpkgs.lib.flatten [
          "$mainMod, Return, exec, $term"
          "${g.key.hyprland.killActive.mod}, ${g.key.hyprland.killActive.base}, killactive,"
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
