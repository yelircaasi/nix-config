{
  inputs,
  pkgs,
  lib,
  g,
  deviceConfig,
  ...
}: let
  inherit (g) setups;

  mkAbs = relPath: "/home/${deviceConfig.userName}/.config/hypr/${relPath}";

  helpers = import ./helpers.nix {inherit pkgs lib g deviceConfig;};

  wallpapersPrepared = import ./wallpapers {
    inherit pkgs g deviceConfig;
  };

  # ----

  bgPhoto = "images/river.jpg";
  profilePhoto = "images/blitz.jpg";
  bgPhotoAbs = "/home/isaac/.config/hypr/${bgPhoto}";
  profilePhotoAbs = "/home/isaac/.config/hypr/${profilePhoto}";

  mkPerSetup = perSetupFunc: lib.attrsets.concatMapAttrs (map perSetupFunc deviceConfig.monitorSetups);

  bgPhotosFromSetupName = setupName:
    g.constructFromList
    (monitorName: monitorName)
    (monitorName: "${wallpapersPrepared}/images/${setupName}/${monitorName}.png")
    (map (ob: ob.name) g.setups.${setupName}.monitors);

  bgPhotos = lib.genAttrs bgPhotosFromSetupName (map (s: s.name) g.setups);

  getMonitorNames = setupName: map (monitorSet: monitorSet.name) g.setup.${setupName};
  #lib.mapAttrs (name: value: bgPhotoAbs) g.monitors;
  # g.constructFromList () () deviceConfig
  #   lib.attrsets.genAttrs
  #   (
  #     setupName:
  #       lib.attrsets.genAttrs
  #       (monitorSet: "${wallpapersPrepared}/images/${setupName}/${monitorSet.name}.png")
  #       g.setups.${setupName}.monitors
  #   )
  #   deviceConfig.monitorSetups;
  # {
  #   olivia = "";
  #   betsy = "";
  #   hank = "";
  #   homeLeft  "";
  #   homeRight = "";
  #   work1Samsung = "";
  #   work1Dell = "";
  # };
  # bgPhotosAbs =
  #   builtins.mapAttrs
  #   (name: path: mkAbs path)
  #   bgPhotos;
  # g.monitors = {
  #   homeLeft = "Ancor Communications Inc ASUS PB278 E8LMTF000788";
  #   homeRight = "Ancor Communications Inc ASUS PB278 E8LMTF000788";
  #   olivia = "BOE 0x0C3F";
  #   betsy = "Chimei Innolux Corporation 0x15D7";
  #   hank = "";
  #   work1Samsung = "Samsung Electric Company LS27D60xU HNAX501336";
  #   work1Dell = "Dell Inc. DELL P2418D MY3ND87U07VT";
  # };
  setupSet = g.filterAttrsFromList deviceConfig.monitorSetups g.setups;
in {
  imports = [
  ];
  # Additional dependencies
  home.packages = with pkgs; [
    # custom.screenshot
    hyprlock
    hypridle
    hyprland-autoname-workspaces
    hyprpicker # color picker
    hyprpaper # move
    swww # move
    # mpvpaper # Live wallpaper
    # scratchpad
  ];

  xdg.configFile =
    (helpers.mkPerSetup
      (setupName: "./hypr-setups/${setupName}/hyprland.conf")
      (setupName: {text = ''test'';})
      setupSet)
    // (helpers.mkPerMonitorPerSetup
      (setupName: monitorName: "./hypr-setups/${setupName}/images/${monitorName}.jpg")
      (setupName: monitorName: {source = ./images/river.jpg;}) #bgPhotos.${setupName}.${monitorName};})
      setupSet);

  # // (helpers.mkPerSetup
  #   (
  #     setupName: {
  #       "./hypr-setups/${setupName}/hyprland.conf".text = ''
  #         exec-once = ${pkgs.dbus}/bin/dbus-update-activation-environment --systemd DISPLAY HYPRLAND_INSTANCE_SIGNATURE WAYLAND_DISPLAY XDG_CURRENT_DESKTOP && systemctl --user stop hyprland-session.target && systemctl --user start hyprland-session.target
  #         $LMB=mouse:272
  #         $RMB=mouse:275
  #         $down=j
  #         $left=h
  #         $mainMod=super
  #         $menu=fuzzel
  #         $opener=handlr launch
  #         $right=l
  #         $scratchpad=scratchpad -m '$menu --dmenu'
  #         $term=$opener x-scheme-handler/terminal --
  #         $up=k
  #         animations {
  #           bezier=myBezier, 0.05, 0.9, 0.1, 1.05
  #           animation=windows, 1, 7, myBezier
  #           animation=windowsOut, 1, 7, default, popin 80%
  #           animation=border, 1, 10, default
  #           animation=borderangle, 1, 8, default
  #           animation=fade, 1, 7, default
  #           animation=workspaces, 1, 6, default
  #           enabled=true
  #         }

  #         decoration {
  #           blur {
  #             enabled=true
  #             passes=1
  #             size=3
  #           }
  #           rounding=5
  #         }

  #         dwindle {
  #           preserve_split=true
  #           pseudotile=true
  #         }

  #         general {
  #           border_size=2
  #           col.active_border=rgb(002400)
  #           col.inactive_border=rgb(162016)
  #           gaps_in=5
  #           gaps_out=20
  #           layout=dwindle
  #         }

  #         gestures {
  #           workspace_swipe=false
  #         }

  #         group {
  #           groupbar {
  #             text_color=0xffffffff
  #           }
  #           col.border_locked_active=rgb(003366)
  #           col.border_locked_inactive=rgb(242424)
  #         }

  #         misc {
  #           disable_hyprland_logo=true
  #           disable_splash_rendering=true
  #           enable_swallow=true
  #           swallow_regex=^(org.wezfurlong.wezterm)$
  #         }

  #         bind=$mainMod, Return, exec, $term
  #         bind=$mainMod, Q, killactive,
  #         bind=$mainMod SHIFT, Q, exec, wlogout
  #         bind=$mainMod, N, exec, $term --class=filemanager -- fish -c 'handlr open (xplr)'
  #         bind=$mainMod, V, togglefloating,
  #         bind=$mainMod, R, exec, pkill $menu || $menu
  #         bind=$mainMod, W, exec, wezterm
  #         bind=$mainMod, P, pseudo, # dwindle
  #         bind=$mainMod, S, togglesplit, # dwindle
  #         bind=$mainMod, D, exec, hyprctl keyword general:layout dwindle
  #         bind=$mainMod, M, exec, hyprctl keyword general:layout master
  #         bind=$mainMod, O, exec, $opener x-scheme-handler/https
  #         bind=$mainMod, G, togglegroup
  #         bind=$mainMod, F, fullscreen
  #         bind=$mainMod, C, exec, hyprpicker --autocopy
  #         bind=$mainMod SHIFT, G, lockactivegroup, toggle
  #         bind=$mainMod, bracketleft, changegroupactive, b
  #         bind=$mainMod, bracketright, changegroupactive, f
  #         bind=, Print, exec, screenshot.sh
  #         bind=, XF86AudioPlay, exec, playerctl play-pause
  #         bind=CTRL ALT, delete, exec, hyprctl kill
  #         bind=$mainMod, Z, exec, $scratchpad
  #         bind=$mainMod SHIFT, Z, exec, $scratchpad -g
  #         bind=$mainMod, $left, movefocus, l
  #         bind=$mainMod SHIFT, $left, movewindoworgroup, l
  #         bind=$mainMod, $down, movefocus, d
  #         bind=$mainMod SHIFT, $down, movewindoworgroup, d
  #         bind=$mainMod, $up, movefocus, u
  #         bind=$mainMod SHIFT, $up, movewindoworgroup, u
  #         bind=$mainMod, $right, movefocus, r
  #         bind=$mainMod SHIFT, $right, movewindoworgroup, r
  #         bind=$mainMod, 1, workspace, 1
  #         bind=$mainMod SHIFT, 1, movetoworkspace, 1
  #         bind=$mainMod, 2, workspace, 2
  #         bind=$mainMod SHIFT, 2, movetoworkspace, 2
  #         bind=$mainMod, 3, workspace, 3
  #         bind=$mainMod SHIFT, 3, movetoworkspace, 3
  #         bind=$mainMod, 4, workspace, 4
  #         bind=$mainMod SHIFT, 4, movetoworkspace, 4
  #         bind=$mainMod, 5, workspace, 5
  #         bind=$mainMod SHIFT, 5, movetoworkspace, 5
  #         bind=$mainMod, 6, workspace, 6
  #         bind=$mainMod SHIFT, 6, movetoworkspace, 6
  #         bind=$mainMod, 7, workspace, 7
  #         bind=$mainMod SHIFT, 7, movetoworkspace, 7
  #         bind=$mainMod, 8, workspace, 8
  #         bind=$mainMod SHIFT, 8, movetoworkspace, 8
  #         bind=$mainMod, 9, workspace, 9
  #         bind=$mainMod SHIFT, 9, movetoworkspace, 9
  #         bind=$mainMod, 0, workspace, 10
  #         bind=$mainMod SHIFT, 0, movetoworkspace, 10
  #         bind=$mainMod, mouse_down, workspace, e+1
  #         bind=$mainMod, mouse_up, workspace, e-1
  #         bindm=$mainMod, $LMB, movewindow
  #         bindm=$mainMod, $RMB, resizewindow
  #         exec-once=hyprpaper
  #         exec-once=hypridle
  #         workspace=1, monitor:desc:BOE 0x0C3F,      default:true
  #         workspace=2, monitor:desc:Samsung Electric Company LS27D60xU HNAX501336, default:true
  #         workspace=3, monitor:desc:Dell Inc. DELL P2418D MY3ND87U07VT,    default:true
  #         monitor = desc:BOE 0x0C3F,      1920x1200,    0x720,      1
  #         monitor = desc:Chimei Innolux Corporation 0x15D7,       1920x1080,    0x720,      1
  #         monitor = desc:Ancor Communications Inc ASUS PB278 E8LMTF000788,    2560x1440,    1920x0,     1
  #         monitor = desc:Ancor Communications Inc ASUS PB278 E8LMTF000788,   2560x1440,    4480x0,     1
  #         monitor = desc:Samsung Electric Company LS27D60xU HNAX501336, 2560x1440,    1920x0,     1
  #         monitor = desc:Dell Inc. DELL P2418D MY3ND87U07VT,    2560x1440,    4480x0,     1

  #         # monitor = desc:Lenovo Group Limited D22-20 U7608Z7N,             1920x1080,    3490x-1080, 1
  #         # monitor = desc:Chimei Innolux Corporation 0x15D7,                1980x1080,    0x910,      1
  #         # monitor = desc:Ancor Communications Inc ASUS PB278 E8LMTF000788, 2560x1440,    1920x0,     0.8
  #         # monitor = desc:Lenovo Group Limited D22-20 U7608Z7N,             1920x1080,    3920x-1350, 0.8
  #         # monitor = desc:Ancor Communications Inc ASUS PB278 E8LMTF000809, 2560x1440,    5120x0,     0.8
  #         # monitor=eDP-2,1920x1080@240,0x0,1
  #         # monitor=HDMI-A-1,2560x1440@60,1920x0,1

  #         # Does not show up when defined in settings for some reason
  #         # plugin {
  #         #   hyprtrails {
  #         #     color = {accent} #deleted $ to prevent error
  #         #   }
  #         # }

  #         # Resize submap
  #         bind = $mainMod ALT, R, submap, resize
  #         submap = resize

  #         binde = , $right, resizeactive, 10 0
  #         binde = , $left, resizeactive, -10 0
  #         binde = , $up, resizeactive, 0 -10
  #         binde = , $down, resizeactive, 0 10

  #         bind = , escape, submap, reset
  #         submap = reset

  #       '';
  #     }
  #   )
  #   setupSet)

  # // (helpers.mkPerSetup
  #   (
  #     setupName: {
  #       "./hypr/hyprpaper.conf".text =
  #         builtins.concatLines
  #         (monitorName: "wallpaper = desc:${g.monitors.${monitorName}.desc}, ${bgPhotos.${monitorName}}")
  #         (getMonitorNames setupName);
  #     }
  #   )
  #   setupSet);

  # {
  #   "./hypr/hyprland.conf".text =
  #   "./hypr-setups/__SETUP_DIR__/${bgPhoto}".source = ./${bgPhoto};
  #   "./hypr/${profilePhoto}".source = ./${profilePhoto};

  #   "./hypr/hyprpaper.conf".text = ''
  #     # preload = ${bgPhotoAbs}
  #     wallpaper = desc:${g.monitors.betsy.desc},       ${bgPhotosAbs.betsy}
  #     wallpaper = desc:${g.monitors.olivia.desc},      ${bgPhotosAbs.olivia}
  #     # wallpaper = desc:${g.monitors.hank.desc},      ${bgPhotosAbs.hank}
  #     wallpaper = desc:${g.monitors.homeLeft.desc},    ${bgPhotosAbs.homeLeft}
  #     wallpaper = desc:${g.monitors.homeRight.desc},   ${bgPhotosAbs.homeRight}
  #     wallpaper = desc:${g.monitors.work1Samsung.desc}, ${bgPhotosAbs.work1Samsung}
  #     wallpaper = desc:${g.monitors.work1Dell.desc},    ${bgPhotosAbs.work1Dell}
  #   '';

  #   "./hypr/hypridle.conf".text = ''
  #     general {
  #         lock_cmd = pidof hyprlock || hyprlock       # avoid starting multiple hyprlock instances.
  #         before_sleep_cmd = loginctl lock-session    # lock before suspend.
  #         after_sleep_cmd = hyprctl dispatch dpms on  # to avoid having to press a key twice to turn on the display.
  #     }

  #     listener {
  #         timeout = 150                                # 2.5min.
  #         on-timeout = brightnessctl -s set 10         # set monitor backlight to minimum, avoid 0 on OLED monitor.
  #         on-resume = brightnessctl -r                 # monitor backlight restore.
  #     }

  #     listener {
  #         timeout = 300                                 # 5min
  #         on-timeout = loginctl lock-session            # lock screen when timeout has passed
  #     }

  #   '';

  #   "./hypr/hyprlock.conf".text = ''
  #       widget_name {
  #           monitor =
  #       }

  #       background {
  #           monitor =
  #           path = ${bgPhotoAbs}   # supports png, jpg, webp (no animations, though)
  #           color = rgba(20, 20, 20, 1.0)

  #           # all these options are taken from hyprland, see https://wiki.hyprland.org/Configuring/Variables/#blur for explanations
  #           blur_passes = 0 # 0 disables blurring
  #           blur_size = 7
  #           noise = 0.0117
  #           contrast = 0.8916
  #           brightness = 0.8172
  #           vibrancy = 0.1696
  #           vibrancy_darkness = 0.0
  #       }

  #       image {
  #           monitor =
  #           path = ${profilePhotoAbs}
  #           size = 150 # lesser side if not 1:1 ratio
  #           rounding = -1 # negative values mean circle
  #           border_size = 2
  #           border_color = rgba(8, 16, 8, 0.9)
  #           rotate = 0 # degrees, counter-clockwise
  #           reload_time = -1 # seconds between reloading, 0 to reload with SIGUSR2
  #           reload_cmd =  # command to get new path. if empty, old path will be used. don't run "follow" commands like tail -F

  #           position = 0, 180
  #           halign = center
  #           valign = center
  #       }

  #       # shape {
  #       #     monitor =
  #       #     size = 280, 30
  #       #     color = rgba(5, 17, 5, 1.0)
  #       #     rounding = 6
  #       #     border_size = 2
  #       #     border_color = rgba(40, 90, 50, 1.0)
  #       #     rotate = 0
  #       #     xray = false # if true, make a "hole" in the background (rectangle of specified size, no rotation)

  #       #     position = 0, 50
  #       #     halign = center
  #       #     valign = center
  #       # }

  #       # label {
  #       #     monitor =
  #       #     text = Hallo, bester Papa!
  #       #     text_align = center # center/right or any value for default left. multi-line text alignment inside label container
  #       #     color = rgba(40, 72, 40, 0.8)
  #       #     font_size = 16
  #       #     font_family = Noto Sans
  #       #     rotate = 0 # degrees, counter-clockwise
  #       #     position = 0, 50
  #       #     halign = center
  #       #     valign = center
  #       # }

  #       input-field {
  #           monitor =
  #           size = 100, 30
  #           outline_thickness = 2
  #           dots_size = 0.33 # Scale of input-field height, 0.2 - 0.8
  #           dots_spacing = 0.15 # Scale of dots' absolute size, 0.0 - 1.0
  #           dots_center = true
  #           dots_rounding = -1 # -1 default circle, -2 follow input-field rounding
  #           outer_color = rgba(8, 16, 8, 0.9)
  #           inner_color = rgba(128, 128, 128, 0.7)
  #           # background_color = rgba(5, 17, 5, 1.0)
  #           font_color = rgba(8, 16, 8, 0.9)
  #           fade_on_empty = true
  #           fade_timeout = 1000 # Milliseconds before fade_on_empty is triggered.
  #           placeholder_text = <i>Input Password...</i> # Text rendered in the input box when it's empty.
  #           hide_input = false
  #           rounding = 6 # -1 means complete rounding (circle/oval)
  #           check_color = rgb(204, 136, 34)
  #           fail_color = rgb(204, 34, 34) # if authentication failed, changes outer_color and fail message color
  #           fail_text = <i>$FAIL <b>($ATTEMPTS)</b></i> # can be set to empty
  #           fail_timeout = 2000 # milliseconds before fail_text and fail_color disappears
  #           fail_transition = 300 # transition time in ms between normal outer_color and fail_color
  #           # capslock_color = -1
  #           # numlock_color = -1
  #           # bothlock_color = -1 # when both locks are active. -1 means don't change outer color (same for above)
  #           # invert_numlock = false # change color if numlock is off
  #           swap_font_color = false # see below

  #           position = 0, 50
  #           halign = center
  #           valign = center
  #       }
  #     }
  #   '';
  # };
  #  \\ (mkFilePerSetup (setupName: {"./hypr/hyprland_${setupName}.conf".text = ''
  #     source = ${mkAbs "hyprland.conf"}
  #   '';}));
}
