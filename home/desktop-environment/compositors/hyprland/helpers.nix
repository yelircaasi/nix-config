{
  pkgs,
  lib,
  g,
  deviceConfig,
}: {
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
        passes=1
        size=3
      }
      rounding=5
    }

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

    gestures {
      workspace_swipe=false
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
    bind=$mainMod, N, exec, $term --class=filemanager -- fish -c 'handlr open (xplr)'
    bind=$mainMod, V, togglefloating,
    bind=$mainMod, R, exec, pkill $menu || $menu
    bind=$mainMod, W, exec, wezterm
    bind=$mainMod, P, pseudo, # dwindle
    bind=$mainMod, S, togglesplit, # dwindle
    bind=$mainMod, D, exec, hyprctl keyword general:layout dwindle
    bind=$mainMod, M, exec, hyprctl keyword general:layout master
    bind=$mainMod, O, exec, $opener x-scheme-handler/https
    bind=$mainMod, G, togglegroup
    bind=$mainMod, F, fullscreen
    bind=$mainMod, C, exec, hyprpicker --autocopy
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
    bind=$mainMod SHIFT, 0, movetoworkspace, 10
    bind=$mainMod, mouse_down, workspace, e+1
    bind=$mainMod, mouse_up, workspace, e-1
    bindm=$mainMod, $LMB, movewindow
    bindm=$mainMod, $RMB, resizewindow
    exec-once=hyprpaper
    exec-once=hypridle
    workspace=1, monitor:desc:BOE 0x0C3F,      default:true
    workspace=2, monitor:desc:Samsung Electric Company LS27D60xU HNAX501336, default:true
    workspace=3, monitor:desc:Dell Inc. DELL P2418D MY3ND87U07VT,    default:true
    monitor = desc:BOE 0x0C3F,      1920x1200,    0x720,      1
    monitor = desc:Chimei Innolux Corporation 0x15D7,       1920x1080,    0x720,      1
    monitor = desc:Ancor Communications Inc ASUS PB278 E8LMTF000788,    2560x1440,    1920x0,     1
    monitor = desc:Ancor Communications Inc ASUS PB278 E8LMTF000788,   2560x1440,    4480x0,     1
    monitor = desc:Samsung Electric Company LS27D60xU HNAX501336, 2560x1440,    1920x0,     1
    monitor = desc:Dell Inc. DELL P2418D MY3ND87U07VT,    2560x1440,    4480x0,     1

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
}
