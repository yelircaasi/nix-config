{
  pkgs,
  lib,
  g,
  deviceConfig,
}: let
  mkHyprlockBackgrounds = setupName: bgPhotos:
    lib.concatLines (map (monitorInfo: ''
        background {
            monitor = desc:${monitorInfo.desc}
            path = ${bgPhotos.${setupName}.${monitorInfo.name}}
            color = rgba(20, 20, 20, 1.0)

            blur_passes = 0 # 0 disables blurring
            blur_size = 2
            noise = 0.0117
            contrast = 0.8916
            brightness = 0.8172
            vibrancy = 0.1696
            vibrancy_darkness = 0.0
        }
      '')
      g.setups.${setupName}.monitors);

  cumulativeLocations = setupName:
    map
    (w: "${builtins.toString w}x0")
    ([0] ++ (g.cumulativeSum (map (m: m.pixelWidth) g.setups.${setupName}.monitors)));

  mkMonitors = setupName:
    lib.concatLines (lib.zipListsWith (
        monitorInfo: location: ''
          monitor = desc:${monitorInfo.desc}, ${builtins.toString monitorInfo.pixelWidth}x${builtins.toString monitorInfo.pixelHeight}, ${location}, 1
        ''
      )
      g.setups.${setupName}.monitors
      (cumulativeLocations setupName));

  mkWorkspaces = setupName:
    lib.concatLines (
      lib.zipListsWith (monInfo: num: ''
        workspace=${builtins.toString num}, monitor:desc:${monInfo.desc}, default:true
      '')
      g.setups.${setupName}.monitors
      (lib.range 1 (builtins.length g.setups.${setupName}.monitors))
    );
in {
  # create one hyprland config dir for each monitor setup

  mkPerMonitorPerSetup = nameMaker: attrMaker: setupSet:
    lib.concatMapAttrs
    (
      setupName: setupInfo:
        g.constructFromList
        # (monitorName: configMaker setupName monitorName)
        (monitorName: nameMaker setupName monitorName)
        (monitorName: attrMaker setupName monitorName)
        (map (monitorSet: monitorSet.name) g.setups.${setupName}.monitors)
    )
    setupSet;

  mkPerSetup = nameMaker: attrMaker: _setupSet:
    g.constructFromSet
    (setupName: _: nameMaker setupName)
    (setupName: _: attrMaker setupName)
    _setupSet;

  mkHyprlandConfig = setupName: ''
    exec-once = ${pkgs.dbus}/bin/dbus-update-activation-environment --systemd DISPLAY HYPRLAND_INSTANCE_SIGNATURE WAYLAND_DISPLAY XDG_CURRENT_DESKTOP && systemctl --user stop hyprland-session.target && systemctl --user start hyprland-session.target
    $LMB=mouse:272
    $RMB=mouse:275
    $down=j
    $left=h
    $mainMod=super
    $menu=fuzzel
    $opener=handlr launch
    $right=l
    $scratchpad=scratchpad -m '$menu --dmenu'
    $term=$opener x-scheme-handler/terminal --
    $up=k
    animations {
      bezier=myBezier, 0.05, 0.9, 0.1, 1.05
      animation=windows, 1, 7, myBezier
      animation=windowsOut, 1, 7, default, popin 80%
      animation=border, 1, 10, default
      animation=borderangle, 1, 8, default
      animation=fade, 1, 7, default
      animation=workspaces, 1, 6, default
      enabled=true
    }

    decoration {
      blur {
        enabled=true
        passes=2
        size=3
      }
      rounding=5

      active_opacity = 0.96
      fullscreen_opacity = 0.98
      inactive_opacity = 0.93

    }

    windowrulev2 = opacity 1.0, class:^(Hyprlock)$
    windowrulev2 = noanim, class:^(Hyprlock)$
    windowrulev2 = nofocus, class:^(Hyprlock)$

    dwindle {
      preserve_split=true
      pseudotile=true
    }

    general {
      border_size=2
      col.active_border=rgb(002400)
      col.inactive_border=rgb(162016)
      gaps_in=5
      gaps_out=20
      layout=dwindle
    }

    group {
      groupbar {
        text_color=0xffffffff
      }
      col.border_locked_active=rgb(003366)
      col.border_locked_inactive=rgb(242424)
    }

    misc {
      disable_hyprland_logo=true
      disable_splash_rendering=true
      enable_swallow=true
      swallow_regex=^(org.wezfurlong.wezterm)$
    }

    bind=$mainMod, Return, exec, $term
    bind=$mainMod, Q, killactive,
    bind=$mainMod SHIFT, Q, exec, wlogout
    bind=$mainMod, R, exec, pkill $menu || $menu
    bind=$mainMod, W, exec, wezterm
    bind=$mainMod, 1, workspace, 1
    bind=$mainMod SHIFT, 1, movetoworkspace, 1
    bind=$mainMod, 2, workspace, 2
    bind=$mainMod SHIFT, 2, movetoworkspace, 2
    bind=$mainMod, 3, workspace, 3
    bind=$mainMod SHIFT, 3, movetoworkspace, 3
    bind=$mainMod, 4, workspace, 4
    bind=$mainMod SHIFT, 4, movetoworkspace, 4
    bind=$mainMod, 5, workspace, 5
    bind=$mainMod SHIFT, 5, movetoworkspace, 5
    bind=$mainMod, 6, workspace, 6
    bind=$mainMod SHIFT, 6, movetoworkspace, 6
    bind=$mainMod, 7, workspace, 7
    bind=$mainMod SHIFT, 7, movetoworkspace, 7
    bind=$mainMod, 8, workspace, 8
    bind=$mainMod SHIFT, 8, movetoworkspace, 8
    bind=$mainMod, 9, workspace, 9
    bind=$mainMod SHIFT, 9, movetoworkspace, 9
    bind=$mainMod, 0, workspace, 10

    exec-once=hyprpaper
    exec-once=hypridle
    exec-once=waybar

    ${mkMonitors setupName}

    ${mkWorkspaces setupName}

  '';

  mkHyprlockConfig = setupName: bgPhotos: ''

    ${mkHyprlockBackgrounds setupName bgPhotos}

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
        background_color = rgba(5, 17, 5, 0.7)
        font_color = rgba(8, 16, 8, 0.9)
        fade_on_empty = false
        # fade_timeout = 1000 # Milliseconds before fade_on_empty is triggered.
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

    label {
        monitor =
        text = Isaac Riley
        text_align = center # center/right or any value for default left. multi-line text alignment inside label container
        color = rgba(40, 72, 40, 0.8)
        font_size = 16
        font_family = Noto Sans
        rotate = 0 # degrees, counter-clockwise
        position = 0, 120
        halign = center
        valign = center
    }

  '';
}
/*
   OLD HYPRLOCK

# image {
      #     monitor =
      #     path = $  {profilePhotoAbs}
      #     size = 150 # lesser side if not 1:1 ratio
      #     rounding = -1 # negative values mean circle
      #     border_size = 2
      #     border_color = rgba(8, 16, 8, 0.9)
      #     rotate = 0 # degrees, counter-clockwise
      #     reload_time = -1 # seconds between reloading, 0 to reload with SIGUSR2
      #     reload_cmd =  # command to get new path. if empty, old path will be used. don't run "follow" commands like tail -F

      #     position = 0, 180
      #     halign = center
      #     valign = center
      # }

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

      label {
          monitor =
          text = Isaac Riley
          text_align = center # center/right or any value for default left. multi-line text alignment inside label container
          color = rgba(40, 72, 40, 0.8)
          font_size = 16
          font_family = Noto Sans
          rotate = 0 # degrees, counter-clockwise
          position = 0, 50
          halign = center
          valign = center
      }


OLD HYPRLAND.conf

gestures {
      workspace_swipe=false
    }

bind=$mainMod, N, exec, $term --class=filemanager -- fish -c 'handlr open (xplr)'
bind=$mainMod, V, togglefloating,
bind=$mainMod, P, pseudo, # dwindle
bind=$mainMod, S, togglesplit, # dwindle
bind=$mainMod, D, exec, hyprctl keyword general:layout dwindle
bind=$mainMod, M, exec, hyprctl keyword general:layout master
bind=$mainMod, O, exec, $opener x-scheme-handler/h ttps
bind=$mainMod, G, togglegroup
bind=$mainMod, F, fullscreen
bind=$mainMod, C, exec, hyprpicker --autocopyv
bind=$mainMod SHIFT, G, lockactivegroup, toggle
bind=$mainMod, bracketleft, changegroupactive, b
bind=$mainMod, bracketright, changegroupactive, f
bind=, Print, exec, screenshot.sh
bind=, XF86AudioPlay, exec, playerctl play-pause
bind=CTRL ALT, delete, exec, hyprctl kill
bind=$mainMod, Z, exec, $scratchpad
bind=$mainMod SHIFT, Z, exec, $scratchpad -g
bind=$mainMod, $left, movefocus, l
bind=$mainMod SHIFT, $left, movewindoworgroup, l
bind=$mainMod, $down, movefocus, d
bind=$mainMod SHIFT, $down, movewindoworgroup, d
bind=$mainMod, $up, movefocus, u
bind=$mainMod SHIFT, $up, movewindoworgroup, u
bind=$mainMod, $right, movefocus, r
bind=$mainMod SHIFT, $right, movewindoworgroup, r
bind=$mainMod SHIFT, 0, movetoworkspace, 10
bind=$mainMod, mouse_down, workspace, e+1
bind=$mainMod, mouse_up, workspace, e-1
bindm=$mainMod, $LMB, movewindow
bindm=$mainMod, $RMB, resizewindow

# Resize submap
bind = $mainMod ALT, R, submap, resize
submap = resize

binde = , $right, resizeactive, 10 0
binde = , $left, resizeactive, -10 0
binde = , $up, resizeactive, 0 -10
binde = , $down, resizeactive, 0 10
*/
/*
  monitor = desc:Chimei Innolux Corporation 0x15D7,                     1920x1080,    0x720,      1
  monitor = desc:Ancor Communications Inc ASUS PB278 E8LMTF000788,      2560x1440,    1920x0,     1
  monitor = desc:Ancor Communications Inc ASUS PB278 E8LMTF000788,      2560x1440,    4480x0,     1
  monitor = desc:Samsung Electric Company LS27D60xU HNAX501336,         2560x1440,    1920x0,     1
  monitor = desc:Dell Inc. DELL P2418D MY3ND87U07VT,                    2560x1440,      4480x0,     1

''
*/
#   workspace=1, monitor:desc:BOE 0x0C3F,      default:true
#   workspace=2, monitor:desc:Samsung Electric Company LS27D60xU HNAX501336, default:true
#   workspace=3, monitor:desc:Dell Inc. DELL P2418D MY3ND87U07VT,    default:true
# '';

