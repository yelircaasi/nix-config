let
  p = import ./primitives.nix;
  keys = p.keys;
  convertTo = import ./keyname-formatters.nix;
in {
  # ============================================================================
  kanata = {
    # modify the key(s) pressed next - must be held down
    layerMods = {
      international = keys.ph;
      unicodeFavorites = keys.ph;
      leftHandNumberpad = keys.ph;
      nerdFontFavorites = keys.ph;
    };

    # modifies the key pressed next; does not need to be held
    layerPrefixes = {
    };
  };

  # ============================================================================

  # TODO: refactor to move all app-specific into their own file and all p into their own file, then import both into default.nix
  hyprland = let
    rn = convertTo.hyprland;
  in rec {
    mod = rn p.desktop.compositor.mod;
    modAlias = "$mainMod"; # unnecessary? remove?
    left = rn p.move.left;
    down = rn p.move.down;
    up = rn p.move.up;
    right = rn p.move.right;
    killActive = {
      mod = modAlias;
      base = rn p.generalBase.kill;
    };
    /*
      ❯ hyprctl binds
    bind
            modmask: 64
            submap:
            key: Return
            keycode: -1
            dispatcher: exec
            arg: handlr launch x-scheme-handler/terminal --

    bind
            modmask: 64
            submap:
            key: Q
            keycode: -1
            dispatcher: killactive
            arg:

    bind
            modmask: 65
            submap:
            key: Q
            keycode: -1
            dispatcher: exec
            arg: wlogout

    bind
            modmask: 64
            submap:
            key: N
            keycode: -1
            dispatcher: exec
            arg: handlr launch x-scheme-handler/terminal -- --class=filemanager -- fish -c 'handlr open (xplr)'

    bind
            modmask: 64
            submap:
            key: V
            keycode: -1
            dispatcher: togglefloating
            arg:

    bind
            modmask: 64
            submap:
            key: R
            keycode: -1
            dispatcher: exec
            arg: pkill fuzzel || fuzzel

    bind
            modmask: 64
            submap:
            key: W
            keycode: -1
            dispatcher: exec
            arg: wezterm

    bind
            modmask: 64
            submap:
            key: P
            keycode: -1
            dispatcher: pseudo
            arg:

    bind
            modmask: 64
            submap:
            key: S
            keycode: -1
            dispatcher: togglesplit
            arg:

    bind
            modmask: 64
            submap:
            key: D
            keycode: -1
            dispatcher: exec
            arg: hyprctl keyword general:layout dwindle

    bind
            modmask: 64
            submap:
            key: M
            keycode: -1
            dispatcher: exec
            arg: hyprctl keyword general:layout master

    bind
            modmask: 64
            submap:
            key: O
            keycode: -1
            dispatcher: exec
            arg: handlr launch x-scheme-handler/https

    bind
            modmask: 64
            submap:
            key: G
            keycode: -1
            dispatcher: togglegroup
            arg:

    bind
            modmask: 64
            submap:
            key: F
            keycode: -1
            dispatcher: fullscreen
            arg:

    bind
            modmask: 64
            submap:
            key: C
            keycode: -1
            dispatcher: exec
            arg: hyprpicker --autocopy

    bind
            modmask: 65
            submap:
            key: G
            keycode: -1
            dispatcher: lockactivegroup
            arg: toggle

    bind
            modmask: 64
            submap:
            key: bracketleft
            keycode: -1
            dispatcher: changegroupactive
            arg: b

    bind
            modmask: 64
            submap:
            key: bracketright
            keycode: -1
            dispatcher: changegroupactive
            arg: f

    bind
            modmask: 0
            submap:
            key: Print
            keycode: -1
            dispatcher: exec
            arg: screenshot.sh

    bind
            modmask: 0
            submap:
            key: XF86AudioPlay
            keycode: -1
            dispatcher: exec
            arg: playerctl play-pause

    bind
            modmask: 12
            submap:
            key: delete
            keycode: -1
            dispatcher: exec
            arg: hyprctl kill

    bind
            modmask: 64
            submap:
            key: Z
            keycode: -1
            dispatcher: exec
            arg: scratchpad -m 'fuzzel --dmenu'

    bind
            modmask: 65
            submap:
            key: Z
            keycode: -1
            dispatcher: exec
            arg: scratchpad -m 'fuzzel --dmenu' -g

    bind
            modmask: 64
            submap:
            key: H
            keycode: -1
            dispatcher: movefocus
            arg: l

    bind
            modmask: 65
            submap:
            key: H
            keycode: -1
            dispatcher: movewindoworgroup
            arg: l

    bind
            modmask: 64
            submap:
            key: J
            keycode: -1
            dispatcher: movefocus
            arg: d

    bind
            modmask: 65
            submap:
            key: J
            keycode: -1
            dispatcher: movewindoworgroup
            arg: d

    bind
            modmask: 64
            submap:
            key: K
            keycode: -1
            dispatcher: movefocus
            arg: u

    bind
            modmask: 65
            submap:
            key: K
            keycode: -1
            dispatcher: movewindoworgroup
            arg: u

    bind
            modmask: 64
            submap:
            key: L
            keycode: -1
            dispatcher: movefocus
            arg: r

    bind
            modmask: 65
            submap:
            key: L
            keycode: -1
            dispatcher: movewindoworgroup
            arg: r

    bind
            modmask: 64
            submap:
            key: 1
            keycode: -1
            dispatcher: workspace
            arg: 1

    bind
            modmask: 65
            submap:
            key: 1
            keycode: -1
            dispatcher: movetoworkspace
            arg: 1

    bind
            modmask: 64
            submap:
            key: 2
            keycode: -1
            dispatcher: workspace
            arg: 2

    bind
            modmask: 65
            submap:
            key: 2
            keycode: -1
            dispatcher: movetoworkspace
            arg: 2

    bind
            modmask: 64
            submap:
            key: 3
            keycode: -1
            dispatcher: workspace
            arg: 3

    bind
            modmask: 65
            submap:
            key: 3
            keycode: -1
            dispatcher: movetoworkspace
            arg: 3

    bind
            modmask: 64
            submap:
            key: 4
            keycode: -1
            dispatcher: workspace
            arg: 4

    bind
            modmask: 65
            submap:
            key: 4
            keycode: -1
            dispatcher: movetoworkspace
            arg: 4

    bind
            modmask: 64
            submap:
            key: 5
            keycode: -1
            dispatcher: workspace
            arg: 5

    bind
            modmask: 65
            submap:
            key: 5
            keycode: -1
            dispatcher: movetoworkspace
            arg: 5

    bind
            modmask: 64
            submap:
            key: 6
            keycode: -1
            dispatcher: workspace
            arg: 6

    bind
            modmask: 65
            submap:
            key: 6
            keycode: -1
            dispatcher: movetoworkspace
            arg: 6

    bind
            modmask: 64
            submap:
            key: 7
            keycode: -1
            dispatcher: workspace
            arg: 7

    bind
            modmask: 65
            submap:
            key: 7
            keycode: -1
            dispatcher: movetoworkspace
            arg: 7

    bind
            modmask: 64
            submap:
            key: 8
            keycode: -1
            dispatcher: workspace
            arg: 8

    bind
            modmask: 65
            submap:
            key: 8
            keycode: -1
            dispatcher: movetoworkspace
            arg: 8

    bind
            modmask: 64
            submap:
            key: 9
            keycode: -1
            dispatcher: workspace
            arg: 9

    bind
            modmask: 65
            submap:
            key: 9
            keycode: -1
            dispatcher: movetoworkspace
            arg: 9

    bind
            modmask: 64
            submap:
            key: 0
            keycode: -1
            dispatcher: workspace
            arg: 10

    bind
            modmask: 65
            submap:
            key: 0
            keycode: -1
            dispatcher: movetoworkspace
            arg: 10

    bind
            modmask: 64
            submap:
            key: mouse_down
            keycode: -1
            dispatcher: workspace
            arg: e+1

    bind
            modmask: 64
            submap:
            key: mouse_up
            keycode: -1
            dispatcher: workspace
            arg: e-1

    bindm
            modmask: 64
            submap:
            key: mouse:272
            keycode: -1
            dispatcher: mouse
            arg: movewindow

    bindm
            modmask: 64
            submap:
            key: mouse:275
            keycode: -1
            dispatcher: mouse
            arg: resizewindow

    bind
            modmask: 72
            submap:
            key: R
            keycode: -1
            dispatcher: submap
            arg: resize

    binde
            modmask: 0
            submap: resize
            key: L
            keycode: -1
            dispatcher: resizeactive
            arg: 10 0

    binde
            modmask: 0
            submap: resize
            key: H
            keycode: -1
            dispatcher: resizeactive
            arg: -10 0

    binde
            modmask: 0
            submap: resize
            key: K
            keycode: -1
            dispatcher: resizeactive
            arg: 0 -10

    binde
            modmask: 0
            submap: resize
            key: J
            keycode: -1
            dispatcher: resizeactive
            arg: 0 10

    bind
            modmask: 0
            submap: resize
            key: escape
            keycode: -1
            dispatcher: submap
            arg: reset
    */
  };

  sway = let
    rn = convertTo.sway;
  in rec {
    mod = rn p.desktop.compositor.mod;
    fx = {
      # keybinds specific to swayfx
    };
  };
  river = {};
  dwl = {};
  wayfire = {};
  jay = {};
  cagebreak = {};
  hikari = {};

  # ============================================================================
  terminal = {
    wezterm = let
      rn = convertTo.wezterm;
    in {
      # https://wezfurlong.org/wezterm/config/default-keys.html
      copyToClipboard = {
        mod = rn keys.super;
        base = rn keys.c;
      };
      copyToClipboardAlt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.c;
      };
      pasteFromClipboard = {
        mod = rn keys.super;
        base = rn keys.v;
      };
      pasteFromClipboardAlt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.v;
      };
      copyToClipboardAlt2 = {
        base = rn keys.copy;
      };
      pasteFromClipboardAlt2 = {
        base = rn keys.paste;
      };
      copyToPrimarySelection = {
        mod = rn keys.ctrl;
        base = rn keys.insert;
      };
      pasteFromPrimarySelection = {
        mod = rn keys.shift;
        base = rn keys.insert;
      };
      hide = {
        mod = rn keys.super;
        base = rn keys.m;
      };
      spawnWindow = {
        mod = rn keys.super;
        base = rn keys.n;
      };
      spawnWindowAlt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.n;
      };
      toggleFullScreen = {
        mod = rn keys.alt;
        base = rn keys.return;
      };
      decreaseFontSize = {
        mod = rn keys.super;
        base = rn keys.hyphen;
      };
      decreaseFontSizeAlt = {
        mod = rn keys.ctrl;
        base = rn keys.hyphen;
      };
      increaseFontSize = {
        mod = rn keys.super;
        base = rn keys.equals;
      };
      increaseFontSizeAlt = {
        mod = rn keys.ctrl;
        base = rn keys.equals;
      };
      resetFontSize = {
        mod = rn keys.super;
        base = rn keys._0;
      };
      resetFontSizeAlt = {
        mod = rn keys.ctrl;
        base = rn keys._0;
      };
      spawnTabCurrentPaneDomain = {
        mod = rn keys.super;
        base = rn keys.t;
      };
      spawnTabCurrentPaneDomainAlt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.t;
      };
      closeCurrentTabWithConfirm = {
        mod = rn keys.super;
        base = rn keys.w;
      };
      closeCurrentTabWithConfirmAlt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.w;
      };
      activateTab0 = {
        mod = rn keys.super;
        base = rn keys .1;
      };
      activateTab1 = {
        mod = rn keys.super;
        base = rn keys .2;
      };
      activateTab2 = {
        mod = rn keys.super;
        base = rn keys .3;
      };
      activateTab3 = {
        mod = rn keys.super;
        base = rn keys .4;
      };
      activateTab4 = {
        mod = rn keys.super;
        base = rn keys .5;
      };
      activateTab5 = {
        mod = rn keys.super;
        base = rn keys .6;
      };
      activateTab6 = {
        mod = rn keys.super;
        base = rn keys .7;
      };
      activateTab7 = {
        mod = rn keys.super;
        base = rn keys .8;
      };
      activateTab0Alt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys .1;
      };
      activateTab1Alt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys .2;
      };
      activateTab2Alt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys .3;
      };
      activateTab3Alt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys .4;
      };
      activateTab4Alt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys .5;
      };
      activateTab5Alt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys .6;
      };
      activateTab6Alt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys .7;
      };
      activateTab7Alt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys .8;
      };
      activateLastTab = {
        mod = rn keys.super;
        base = rn keys .9;
      };
      activateLastTabAlt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys .9;
      };
      activatePreviousTab = {
        mods = map rn [keys.super keys.shift];
        base = rn keys.squareBracketLeft;
      };
      activatePreviousTabAlt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.tab;
      };
      activatePreviousTabAlt2 = {
        mod = rn keys.ctrl;
        base = rn keys.pageUp;
      };
      activateNextTab = {
        mods = map rn [keys.super keys.shift];
        base = rn keys.squareBracketRight;
      };
      activateNextTabAlt = {
        mods = rn keys.ctrl;
        base = rn keys.tab;
      };
      activateNextTabAlt2 = {
        mod = rn keys.ctrl;
        base = rn keys.pageDown;
      };
      moveTabDown = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.pageUp;
      };
      moveTabUp = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.pageDown;
      };
      scrollPageUp = {
        mod = rn keys.shift;
        base = rn keys.pageUp;
      };
      scrollPageDown = {
        mod = rn keys.shift;
        base = rn keys.pageDown;
      };
      reloadConfig = {
        mod = rn keys.super;
        base = rn keys.r;
      };
      reloadConfigAlt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.r;
      };
      hideApplicationMacOSOnly = {
        mod = rn keys.super;
        base = rn keys.h;
      };
      clearScrollbackScrollbackOnly = {
        mod = rn keys.super;
        base = rn keys.k;
      };
      clearScrollbackScrollbackOnlyAlt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.k;
      };
      showDebugOverlay = {
        mod = map rn [keys.ctrl keys.shift];
        base = rn keys.l;
      };
      activateCommandPalette = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.p;
      };
      charSelect = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.u;
      };
      searchCaseSensitiveSring = {
        mod = rn keys.super;
        base = rn keys.f;
      };
      searchCaseSensitiveSringAlt = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.f;
      };
      activateCopyMode = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.x;
      };
      quickSelect = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.space;
      };
      splitVerticalInCurrentPaneDomain = {
        mods = map rn [keys.ctrl keys.shift keys.alt];
        base = rn keys.quote;
      };
      splitHorizontalInCurrentPaneDomain = {
        mods = map rn [keys.ctrl keys.shift keys.alt];
        base = rn keys._5;
      };
      adjustPaneSizeLeft = {
        mods = map rn [keys.ctrl keys.shift keys.alt];
        base = rn keys.leftArrow;
      };
      adjustPaneSizeRight = {
        mods = map rn [keys.ctrl keys.shift keys.alt];
        base = rn keys.rightArrow;
      };
      adjustPaneSizeUp = {
        mods = map rn [keys.ctrl keys.shift keys.alt];
        base = rn keys.upArrow;
      };
      adjustPaneSizeDown = {
        mods = map rn [keys.ctrl keys.shift keys.alt];
        base = rn keys.downArrow;
      };
      activatePaneDirectionLeft = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.leftArrow;
      };
      activatePaneDirectionRight = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.rightArrow;
      };
      activatePaneDirectionUp = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.upArrow;
      };
      activatePaneDirectionDown = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.downArrow;
      };
      togglePaneZoomState = {
        mods = map rn [keys.ctrl keys.shift];
        base = rn keys.z;
      };

      /*


      config.keys = {
          { key = 'Tab', mods = 'CTRL', action = act.ActivateTabRelative(1) },
          { key = 'Tab', mods = 'SHIFT|CTRL', action = act.ActivateTabRelative(-1) },
          { key = 'Enter', mods = 'ALT', action = act.ToggleFullScreen },
          { key = '!', mods = 'CTRL', action = act.ActivateTab(0) },
          { key = '!', mods = 'SHIFT|CTRL', action = act.ActivateTab(0) },
          { key = '\"', mods = 'ALT|CTRL', action = act.SplitVertical{ domain =  'CurrentPaneDomain' } },
          { key = '\"', mods = 'SHIFT|ALT|CTRL', action = act.SplitVertical{ domain =  'CurrentPaneDomain' } },
          { key = '#', mods = 'CTRL', action = act.ActivateTab(2) },
          { key = '#', mods = 'SHIFT|CTRL', action = act.ActivateTab(2) },
          { key = '$', mods = 'CTRL', action = act.ActivateTab(3) },
          { key = '$', mods = 'SHIFT|CTRL', action = act.ActivateTab(3) },
          { key = '%', mods = 'CTRL', action = act.ActivateTab(4) },
          { key = '%', mods = 'SHIFT|CTRL', action = act.ActivateTab(4) },
          { key = '%', mods = 'ALT|CTRL', action = act.SplitHorizontal{ domain =  'CurrentPaneDomain' } },
          { key = '%', mods = 'SHIFT|ALT|CTRL', action = act.SplitHorizontal{ domain =  'CurrentPaneDomain' } },
          { key = '&', mods = 'CTRL', action = act.ActivateTab(6) },
          { key = '&', mods = 'SHIFT|CTRL', action = act.ActivateTab(6) },
          { key = '\'', mods = 'SHIFT|ALT|CTRL', action = act.SplitVertical{ domain =  'CurrentPaneDomain' } },
          { key = '(', mods = 'CTRL', action = act.ActivateTab(-1) },
          { key = '(', mods = 'SHIFT|CTRL', action = act.ActivateTab(-1) },
          { key = ')', mods = 'CTRL', action = act.ResetFontSize },
          { key = ')', mods = 'SHIFT|CTRL', action = act.ResetFontSize },
          { key = '*', mods = 'CTRL', action = act.ActivateTab(7) },
          { key = '*', mods = 'SHIFT|CTRL', action = act.ActivateTab(7) },
          { key = '+', mods = 'CTRL', action = act.IncreaseFontSize },
          { key = '+', mods = 'SHIFT|CTRL', action = act.IncreaseFontSize },
          { key = ',', mods = 'SUPER', action = act.SpawnCommandInNewTab{ args = { 'nvim', '/home/isaac/.config/wezterm/wezterm.lua' }, cwd =  '/home/isaac/.config/wezterm', domain =  'CurrentPaneDomain', set_environment_variables = { TERM =  'screen-256color' } } },
          { key = '-', mods = 'CTRL', action = act.DecreaseFontSize },
          { key = '-', mods = 'SHIFT|CTRL', action = act.DecreaseFontSize },
          { key = '-', mods = 'SUPER', action = act.DecreaseFontSize },
          { key = '0', mods = 'CTRL', action = act.ResetFontSize },
          { key = '0', mods = 'SHIFT|CTRL', action = act.ResetFontSize },
          { key = '0', mods = 'SUPER', action = act.ResetFontSize },
          { key = '1', mods = 'SHIFT|CTRL', action = act.ActivateTab(0) },
          { key = '1', mods = 'SUPER', action = act.ActivateTab(0) },
          { key = '2', mods = 'SHIFT|CTRL', action = act.ActivateTab(1) },
          { key = '2', mods = 'SUPER', action = act.ActivateTab(1) },
          { key = '3', mods = 'SHIFT|CTRL', action = act.ActivateTab(2) },
          { key = '3', mods = 'SUPER', action = act.ActivateTab(2) },
          { key = '4', mods = 'SHIFT|CTRL', action = act.ActivateTab(3) },
          { key = '4', mods = 'SUPER', action = act.ActivateTab(3) },
          { key = '5', mods = 'SHIFT|CTRL', action = act.ActivateTab(4) },
          { key = '5', mods = 'SHIFT|ALT|CTRL', action = act.SplitHorizontal{ domain =  'CurrentPaneDomain' } },
          { key = '5', mods = 'SUPER', action = act.ActivateTab(4) },
          { key = '6', mods = 'SHIFT|CTRL', action = act.ActivateTab(5) },
          { key = '6', mods = 'SUPER', action = act.ActivateTab(5) },
          { key = '7', mods = 'SHIFT|CTRL', action = act.ActivateTab(6) },
          { key = '7', mods = 'SUPER', action = act.ActivateTab(6) },
          { key = '8', mods = 'SHIFT|CTRL', action = act.ActivateTab(7) },
          { key = '8', mods = 'SUPER', action = act.ActivateTab(7) },
          { key = '9', mods = 'SHIFT|CTRL', action = act.ActivateTab(-1) },
          { key = '9', mods = 'SUPER', action = act.ActivateTab(-1) },
          { key = '=', mods = 'CTRL', action = act.IncreaseFontSize },
          { key = '=', mods = 'SHIFT|CTRL', action = act.IncreaseFontSize },
          { key = '=', mods = 'SUPER', action = act.IncreaseFontSize },
          { key = '@', mods = 'CTRL', action = act.ActivateTab(1) },
          { key = '@', mods = 'SHIFT|CTRL', action = act.ActivateTab(1) },
          { key = 'C', mods = 'CTRL', action = act.CopyTo 'Clipboard' },
          { key = 'C', mods = 'SHIFT|CTRL', action = act.CopyTo 'Clipboard' },
          { key = 'E', mods = 'ALT', action = act.EmitEvent 'trigger-vim-with-visible-text' },
          { key = 'F', mods = 'CTRL', action = act.Search 'CurrentSelectionOrEmptyString' },
          { key = 'F', mods = 'SHIFT|CTRL', action = act.Search 'CurrentSelectionOrEmptyString' },
          { key = 'K', mods = 'CTRL', action = act.ClearScrollback 'ScrollbackOnly' },
          { key = 'K', mods = 'SHIFT|CTRL', action = act.ClearScrollback 'ScrollbackOnly' },
          { key = 'L', mods = 'CTRL', action = act.ShowDebugOverlay },
          { key = 'L', mods = 'SHIFT|CTRL', action = act.ShowDebugOverlay },
          { key = 'M', mods = 'CTRL', action = act.Hide },
          { key = 'M', mods = 'SHIFT|CTRL', action = act.Hide },
          { key = 'N', mods = 'CTRL', action = act.SpawnWindow },
          { key = 'N', mods = 'SHIFT|CTRL', action = act.SpawnWindow },
          { key = 'P', mods = 'CTRL', action = act.ActivateCommandPalette },
          { key = 'P', mods = 'SHIFT|CTRL', action = act.ActivateCommandPalette },
          { key = 'R', mods = 'CTRL', action = act.ReloadConfiguration },
          { key = 'R', mods = 'SHIFT|CTRL', action = act.ReloadConfiguration },
          { key = 'T', mods = 'CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
          { key = 'T', mods = 'SHIFT|CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
          { key = 'T', mods = 'SUPER', action = act.ShowTabNavigator },
          { key = 'U', mods = 'CTRL', action = act.CharSelect{ copy_on_select = true, copy_to =  'ClipboardAndPrimarySelection' } },
          { key = 'U', mods = 'SHIFT|CTRL', action = act.CharSelect{ copy_on_select = true, copy_to =  'ClipboardAndPrimarySelection' } },
          { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
          { key = 'V', mods = 'SHIFT|CTRL', action = act.PasteFrom 'Clipboard' },
          { key = 'W', mods = 'ALT', action = act.SendString 'Hello\u{20}there' },
          { key = 'W', mods = 'CTRL', action = act.CloseCurrentTab{ confirm = true } },
          { key = 'W', mods = 'SHIFT|CTRL', action = act.CloseCurrentTab{ confirm = true } },
          { key = 'X', mods = 'CTRL', action = act.ActivateCopyMode },
          { key = 'X', mods = 'SHIFT|CTRL', action = act.ActivateCopyMode },
          { key = 'Z', mods = 'CTRL', action = act.TogglePaneZoomState },
          { key = 'Z', mods = 'SHIFT|CTRL', action = act.TogglePaneZoomState },
          { key = '[', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(-1) },
          { key = ']', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(1) },
          { key = '^', mods = 'CTRL', action = act.ActivateTab(5) },
          { key = '^', mods = 'SHIFT|CTRL', action = act.ActivateTab(5) },
          { key = '_', mods = 'CTRL', action = act.DecreaseFontSize },
          { key = '_', mods = 'SHIFT|CTRL', action = act.DecreaseFontSize },
          { key = 'c', mods = 'SHIFT|CTRL', action = act.CopyTo 'Clipboard' },
          { key = 'c', mods = 'SUPER', action = act.CopyTo 'Clipboard' },
          { key = 'f', mods = 'SHIFT|CTRL', action = act.Search 'CurrentSelectionOrEmptyString' },
          { key = 'f', mods = 'SUPER', action = act.Search 'CurrentSelectionOrEmptyString' },
          { key = 'k', mods = 'SHIFT|CTRL', action = act.ClearScrollback 'ScrollbackOnly' },
          { key = 'k', mods = 'SUPER', action = act.ClearScrollback 'ScrollbackOnly' },
          { key = 'l', mods = 'SHIFT|CTRL', action = act.ShowDebugOverlay },
          { key = 'm', mods = 'CTRL', action = act.EmitEvent 'user-defined-0' },
          { key = 'm', mods = 'SHIFT|CTRL', action = act.Hide },
          { key = 'm', mods = 'SUPER', action = act.Hide },
          { key = 'n', mods = 'SHIFT|CTRL', action = act.SpawnWindow },
          { key = 'n', mods = 'SUPER', action = act.SpawnWindow },
          { key = 'p', mods = 'SHIFT|CTRL', action = act.ActivateCommandPalette },
          { key = 'r', mods = 'SHIFT|CTRL', action = act.ReloadConfiguration },
          { key = 'r', mods = 'SUPER', action = act.ReloadConfiguration },
          { key = 't', mods = 'SHIFT|CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
          { key = 't', mods = 'SUPER', action = act.SpawnTab 'CurrentPaneDomain' },
          { key = 'u', mods = 'SHIFT|CTRL', action = act.CharSelect{ copy_on_select = true, copy_to =  'ClipboardAndPrimarySelection' } },
          { key = 'v', mods = 'SHIFT|CTRL', action = act.PasteFrom 'Clipboard' },
          { key = 'v', mods = 'SUPER', action = act.PasteFrom 'Clipboard' },
          { key = 'w', mods = 'SHIFT|CTRL', action = act.CloseCurrentTab{ confirm = true } },
          { key = 'w', mods = 'SUPER', action = act.CloseCurrentTab{ confirm = true } },
          { key = 'x', mods = 'SHIFT|CTRL', action = act.ActivateCopyMode },
          { key = 'z', mods = 'SHIFT|CTRL', action = act.TogglePaneZoomState },
          { key = '{', mods = 'SUPER', action = act.ActivateTabRelative(-1) },
          { key = '{', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(-1) },
          { key = '}', mods = 'SUPER', action = act.ActivateTabRelative(1) },
          { key = '}', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(1) },
          { key = 'phys:Space', mods = 'SHIFT|CTRL', action = act.QuickSelect },
          { key = 'PageUp', mods = 'SHIFT', action = act.ScrollByPage(-1) },
          { key = 'PageUp', mods = 'CTRL', action = act.ActivateTabRelative(-1) },
          { key = 'PageUp', mods = 'SHIFT|CTRL', action = act.MoveTabRelative(-1) },
          { key = 'PageDown', mods = 'SHIFT', action = act.ScrollByPage(1) },
          { key = 'PageDown', mods = 'CTRL', action = act.ActivateTabRelative(1) },
          { key = 'PageDown', mods = 'SHIFT|CTRL', action = act.MoveTabRelative(1) },
          { key = 'LeftArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Left' },
          { key = 'LeftArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize{ 'Left', 1 } },
          { key = 'RightArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Right' },
          { key = 'RightArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize{ 'Right', 1 } },
          { key = 'UpArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Up' },
          { key = 'UpArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize{ 'Up', 1 } },
          { key = 'DownArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Down' },
          { key = 'DownArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize{ 'Down', 1 } },
          { key = 'Insert', mods = 'SHIFT', action = act.PasteFrom 'PrimarySelection' },
          { key = 'Insert', mods = 'CTRL', action = act.CopyTo 'PrimarySelection' },
          { key = 'Copy', mods = 'NONE', action = act.CopyTo 'Clipboard' },
          { key = 'Paste', mods = 'NONE', action = act.PasteFrom 'Clipboard' },
        },

      config.key_tables = -- https://wezfurlong.org/wezterm/config/key-tables.html
          copy_mode = { -- https://wezfurlong.org/wezterm/copymode.html
            { key = 'Tab', mods = 'NONE', action = act.CopyMode 'MoveForwardWord' },
            { key = 'Tab', mods = 'SHIFT', action = act.CopyMode 'MoveBackwardWord' },
            { key = 'Enter', mods = 'NONE', action = act.CopyMode 'MoveToStartOfNextLine' },
            { key = 'Escape', mods = 'NONE', action = act.CopyMode 'Close' },
            { key = 'Space', mods = 'NONE', action = act.CopyMode{ SetSelectionMode =  'Cell' } },
            { key = '$', mods = 'NONE', action = act.CopyMode 'MoveToEndOfLineContent' },
            { key = '$', mods = 'SHIFT', action = act.CopyMode 'MoveToEndOfLineContent' },
            { key = ',', mods = 'NONE', action = act.CopyMode 'JumpReverse' },
            { key = '0', mods = 'NONE', action = act.CopyMode 'MoveToStartOfLine' },
            { key = ';', mods = 'NONE', action = act.CopyMode 'JumpAgain' },
            { key = 'F', mods = 'NONE', action = act.CopyMode{ JumpBackward = { prev_char = false } } },
            { key = 'F', mods = 'SHIFT', action = act.CopyMode{ JumpBackward = { prev_char = false } } },
            { key = 'G', mods = 'NONE', action = act.CopyMode 'MoveToScrollbackBottom' },
            { key = 'G', mods = 'SHIFT', action = act.CopyMode 'MoveToScrollbackBottom' },
            { key = 'H', mods = 'NONE', action = act.CopyMode 'MoveToViewportTop' },
            { key = 'H', mods = 'SHIFT', action = act.CopyMode 'MoveToViewportTop' },
            { key = 'L', mods = 'NONE', action = act.CopyMode 'MoveToViewportBottom' },
            { key = 'L', mods = 'SHIFT', action = act.CopyMode 'MoveToViewportBottom' },
            { key = 'M', mods = 'NONE', action = act.CopyMode 'MoveToViewportMiddle' },
            { key = 'M', mods = 'SHIFT', action = act.CopyMode 'MoveToViewportMiddle' },
            { key = 'O', mods = 'NONE', action = act.CopyMode 'MoveToSelectionOtherEndHoriz' },
            { key = 'O', mods = 'SHIFT', action = act.CopyMode 'MoveToSelectionOtherEndHoriz' },
            { key = 'T', mods = 'NONE', action = act.CopyMode{ JumpBackward = { prev_char = true } } },
            { key = 'T', mods = 'SHIFT', action = act.CopyMode{ JumpBackward = { prev_char = true } } },
            { key = 'V', mods = 'NONE', action = act.CopyMode{ SetSelectionMode =  'Line' } },
            { key = 'V', mods = 'SHIFT', action = act.CopyMode{ SetSelectionMode =  'Line' } },
            { key = '^', mods = 'NONE', action = act.CopyMode 'MoveToStartOfLineContent' },
            { key = '^', mods = 'SHIFT', action = act.CopyMode 'MoveToStartOfLineContent' },
            { key = 'b', mods = 'NONE', action = act.CopyMode 'MoveBackwardWord' },
            { key = 'b', mods = 'ALT', action = act.CopyMode 'MoveBackwardWord' },
            { key = 'b', mods = 'CTRL', action = act.CopyMode 'PageUp' },
            { key = 'c', mods = 'CTRL', action = act.CopyMode 'Close' },
            { key = 'd', mods = 'CTRL', action = act.CopyMode{ MoveByPage = (0.5) } },
            { key = 'e', mods = 'NONE', action = act.CopyMode 'MoveForwardWordEnd' },
            { key = 'f', mods = 'NONE', action = act.CopyMode{ JumpForward = { prev_char = false } } },
            { key = 'f', mods = 'ALT', action = act.CopyMode 'MoveForwardWord' },
            { key = 'f', mods = 'CTRL', action = act.CopyMode 'PageDown' },
            { key = 'g', mods = 'NONE', action = act.CopyMode 'MoveToScrollbackTop' },
            { key = 'g', mods = 'CTRL', action = act.CopyMode 'Close' },
            { key = 'h', mods = 'NONE', action = act.CopyMode 'MoveLeft' },
            { key = 'j', mods = 'NONE', action = act.CopyMode 'MoveDown' },
            { key = 'k', mods = 'NONE', action = act.CopyMode 'MoveUp' },
            { key = 'l', mods = 'NONE', action = act.CopyMode 'MoveRight' },
            { key = 'm', mods = 'ALT', action = act.CopyMode 'MoveToStartOfLineContent' },
            { key = 'o', mods = 'NONE', action = act.CopyMode 'MoveToSelectionOtherEnd' },
            { key = 'q', mods = 'NONE', action = act.CopyMode 'Close' },
            { key = 't', mods = 'NONE', action = act.CopyMode{ JumpForward = { prev_char = true } } },
            { key = 'u', mods = 'CTRL', action = act.CopyMode{ MoveByPage = (-0.5) } },
            { key = 'v', mods = 'NONE', action = act.CopyMode{ SetSelectionMode =  'Cell' } },
            { key = 'v', mods = 'CTRL', action = act.CopyMode{ SetSelectionMode =  'Block' } },
            { key = 'w', mods = 'NONE', action = act.CopyMode 'MoveForwardWord' },
            { key = 'y', mods = 'NONE', action = act.Multiple{ { CopyTo =  'ClipboardAndPrimarySelection' }, { CopyMode =  'Close' } } },
            { key = 'PageUp', mods = 'NONE', action = act.CopyMode 'PageUp' },
            { key = 'PageDown', mods = 'NONE', action = act.CopyMode 'PageDown' },
            { key = 'End', mods = 'NONE', action = act.CopyMode 'MoveToEndOfLineContent' },
            { key = 'Home', mods = 'NONE', action = act.CopyMode 'MoveToStartOfLine' },
            { key = 'LeftArrow', mods = 'NONE', action = act.CopyMode 'MoveLeft' },
            { key = 'LeftArrow', mods = 'ALT', action = act.CopyMode 'MoveBackwardWord' },
            { key = 'RightArrow', mods = 'NONE', action = act.CopyMode 'MoveRight' },
            { key = 'RightArrow', mods = 'ALT', action = act.CopyMode 'MoveForwardWord' },
            { key = 'UpArrow', mods = 'NONE', action = act.CopyMode 'MoveUp' },
            { key = 'DownArrow', mods = 'NONE', action = act.CopyMode 'MoveDown' },
          },

          search_mode = {
            { key = 'Enter', mods = 'NONE', action = act.CopyMode 'PriorMatch' },
            { key = 'Escape', mods = 'NONE', action = act.CopyMode 'Close' },
            { key = 'n', mods = 'CTRL', action = act.CopyMode 'NextMatch' },
            { key = 'p', mods = 'CTRL', action = act.CopyMode 'PriorMatch' },
            { key = 'r', mods = 'CTRL', action = act.CopyMode 'CycleMatchType' },
            { key = 'u', mods = 'CTRL', action = act.CopyMode 'ClearPattern' },
            { key = 'PageUp', mods = 'NONE', action = act.CopyMode 'PriorMatchPage' },
            { key = 'PageDown', mods = 'NONE', action = act.CopyMode 'NextMatchPage' },
            { key = 'UpArrow', mods = 'NONE', action = act.CopyMode 'PriorMatch' },
            { key = 'DownArrow', mods = 'NONE', action = act.CopyMode 'NextMatch' },
          },

      */
    };
    kitty = let
      rn = convertTo.kitty;
    in {
      # https://sw.kovidgoyal.net/kitty/actions/
      # https://sw.kovidgoyal.net/kitty/conf/
    };
    alacritty = let
      rn = convertTo.alacritty;
    in {
      # https://github.com/alacritty/alacritty/wiki/Keyboard-mappings
      # https://github.com/alacritty/alacritty/blob/master/extra/man/alacritty.5.scd#keyboard
    };
    waveterm = {
      # https://docs.waveterm.dev/reference/keyboard
    };
    tabby = {};
    foot = {
      # https://codeberg.org/dnkl/foot/src/branch/master/foot.ini
    };
    extraterm = {};
    hyper = {
      # https://hyper.is/
    };
    wayst = {};
    commas = {};
    urxvt = {};
    tym = {
      # https://github.com/endaaman/tym?tab=readme-ov-file#customizing-keymap
    };
    blackbox = {};
  };
  # ============================================================================
  nvim = {
    # https://neovim.io/doc/user/quickref.html
    leader = keys.space;
    fileOps = {};
  };

  # ============================================================================
  emacs = {};

  # ============================================================================
  idea = {};
  # ============================================================================
  browser = rec {
    commonBrowser = {};
    nyxt = let rn = convertTo.nyxt; in {};
    qutebrowser = let rn = convertTo.qutebrowser; in {};
    chromium = let rn = convertTo.chromium; in {};
    firefox = let rn = convertTo.firefox; in {};
    luakit = let rn = convertTo.luakit; in {};
    vimb = let rn = convertTo.vimb; in {};
    brave = let rn = convertTo.brave; in {};
    icecat = let rn = convertTo.icecat; in {};
  };
  # ============================================================================
  cli = {};
  # ============================================================================
  tui = {};
  # ============================================================================
}
