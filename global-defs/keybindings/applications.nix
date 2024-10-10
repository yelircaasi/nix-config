{lib}: let
  p = import ./primitives.nix;
  keys = p.keys;
  format = import ./keyname-formatters.nix {inherit lib;};
in {
  # ============================================================================
  kanata = format.kanata rec {
    tapTypes = {
      simple = "simple";
      layerSwitch = "layerSwitch";
      multi = "multi";
      tapDance = "tapDance";
    };
    mouse = {};
    source = {};
    chords = {};
    layers = {
      default = {
        definitions = {
          "${keys.escape}" = {
            alias = "";
            tap = {
              value = keys.capsLock;
              type = "key";
            };
            hold = keys.super;
            prefix = keys.none;
            command = keys.none;
          };
          "${keys.placeholder}" = {
            alias = keys.none;
            tap = {
              value = keys.none;
              type = "layerSwitch";
            };
            hold = keys.none;
            prefix = keys.none;
            command = keys.none;
          };
          # modifiers = {
          #   "${keys.placeholder}" = {
          #     tapValue = {
          #       string = "";
          #       class = "ascii";
          #     };
          #     holdValue = {
          #       type = "layerSwitch";
          #       layerName = "";
          #     };
          #   };
          #   "${keys.placeholder}" = {
          #     tapValue = {
          #       string = "";
          #       class = "ascii";
          #     };
          #     holdValue = {
          #       type = "key";
          #       key = keys.placeholder;
          #     };
          #   };
          # };
          # prefixes = {};
          # commands = {};
          # definition = {};
        };
      };
      asciiSpecial = {
      };
      unicodeFavorites = {
      };
      international = {
      };
      numbers = {
      };
      nerdFontFavorites = {
      };
      cyrillic = {
      };
    };
  };
  # ============================================================================
  # TODO: refactor to move all app-specific into their own file and all p into their own file, then import both into default.nix
  hyprland = let
    scope = "global";
    mod = keys.super; #p.desktop.compositor.mod;
    # modAlias = "$mainMod"; # unnecessary? remove?
    # left = "H"; #p.move.left;
    # down = "J"; #p.move.down;
    # up = "K"; #p.move.up;
    # right = "L"; #p.move.right;
  in
    format.hyprland rec {
      /*
      hyprland = format.hyprland (rec {
        mod = p.mods.compositor;
        modAlias = "$mainMod"; # unnecessary? remove?
              killActive = {
          mod = modAlias;
          base = rn p.generalBase.kill;
        };

        );
      */
      # ❯ hyprctl binds
      inherit mod;
      killActive = {
        inherit mod;
        base = "Q"; #p.generalBase.kill;
      };
      left = {
        inherit mod;
        base = p.generalAssociations.left;
      };
      down = {
        inherit mod;
        base = p.generalAssociations.down;
      };
      up = {
        inherit mod;
        base = p.generalAssociations.up;
      };
      right = {
        inherit mod;
        base = p.generalAssociations.right;
      };

      launchTerminal = {
        inherit scope;
        key = "return";
        # dispatcher = "exec";
        # arg = "handlr launch x-scheme-handler/terminal --";
      };
      launchGuiFileManager = {
        inherit scope;
      };
      launchTuiFileManager = {
        inherit scope;
        key = keys.n;
        # dispatcher = "exec";
        # arg = "handlr launch x-scheme-handler/terminal -- --class=filemanager -- fish -c 'handlr open (xplr)'";
      };
      toggleFloating = {
        inherit scope;
        key = keys.v;
        # dispatcher = "togglefloating";
        # arg = "";
      };
      launchLauncher = {
        inherit scope;
        key = keys.r;
        # dispatcher = "exec";
        # arg = "pkill fuzzel || fuzzel";
      };
      pseudo = {
        inherit scope;
        key = "ph";
        # dispatcher = "pseudo";
        # arg = "";
      };
      switchLayoutDwindle = {
        inherit scope;
        key = keys.d;
        # dispatcher = "exec";
        # arg = "hyprctl keyword general:layout dwindle";
      };
      switchLayoutMaster = {
        inherit scope;
        key = keys.m;
        # dispatcher = "exec";
        # arg = "hyprctl keyword general:layout master";
      };
      httpsLauncher = {
        inherit scope;
        key = keys.o;
        # dispatcher = "exec";
        # arg = "handlr launch x-scheme-handler/https";
      };
      toggleGroup = {
        inherit scope;
        key = keys.g;
        # dispatcher = "togglegroup";
        # arg = "";
      };
      toggleFullscreen = {
        inherit scope;
        key = keys.f;
        # dispatcher = "fullscreen";
        # arg = "";
      };
      hyprpickerAutocopy = {
        inherit scope;
        key = keys.c;
        # dispatcher = "exec";
        # arg = "hyprpicker - -autocopy";
      };
      lockActiveGroup = {
        inherit scope;
        key = keys.g;
        # dispatcher = "lockactivegroup";
        # arg = "toggle";
      };
      changeActiveGroupBackward = {
        inherit scope;
        key = "leftSquareBracket";
        # dispatcher = "changegroupactive";
        # arg = keys.b;
      };
      changeActiveGroupForward = {
        inherit scope;
        key = "rightSquareBracket";
        # dispatcher = "changegroupactive";
        # arg = keys.f;
      };
      screenshot = {
        inherit scope;
        key = "printScreen";
        # dispatcher = "exec";
        # arg = "screenshot.sh";
      };
      playAudio = {
        inherit scope;
        # key = keys.XF86AudioPlay;
        # dispatcher = "exec";
        # arg = "playerctl play-pause";
      };
      killHyprland = {
        inherit scope;
        # modmask = 12;
        key = "delete";
        # dispatcher = "exec";
        # arg = "hyprctl kill";
      };
      goToWorkspace = {
        inherit scope;
      };
      moveToWorkspace = {
        inherit scope;
      }; #<shift><n>:  N
      launchLauncherMenuMode = {
        inherit scope;
        key = keys.z;
        # dispatcher = "exec";
        # arg = "scratchpad -m 'fuzzel --dmenu'";
      };

      launchLauncherMenuModeG = {
        inherit scope;
        key = keys.z;
        # dispatcher = "exec";
        # arg = "scratchpad -m 'fuzzel --dmenu' -g";
      };
      moveFocusLeft = {
        inherit scope;
        key = keys.h;
        # dispatcher = "movefocus";
        # arg = keys.l;
      };
      moveWindowOrGroupLeft = {
        inherit scope;
        key = keys.h;
        # dispatcher = "movewindoworgroup";
        # arg = keys.l;
      };
      moveFocusDown = {
        inherit scope;
        key = keys.j;
        # dispatcher = "movefocus";
        # arg = keys.d;
      };
      moveWindowOrGroupDown = {
        inherit scope;
        key = keys.j;
        # dispatcher = "movewindoworgroup";
        # arg = keys.d;
      };
      moveFocusUp = {
        inherit scope;
        key = keys.k;
        # dispatcher = "movefocus";
        # arg = "u";
      };
      moveWindowOrGroupUp = {
        inherit scope;
        key = keys.k;
        # dispatcher = "movewindoworgroup";
        # arg = "u";
      };
      moveFocusRight = {
        inherit scope;
        key = keys.l;
        # dispatcher = "movefocus";
        # arg = keys.r;
      };
      moveWindowOrGroupRight = {
        inherit scope;
        key = keys.l;
        # dispatcher = "movewindoworgroup";
        # arg = keys.r;
      };
      resizeActivate = {
        inherit scope;
        # modmask = 72;
        key = keys.r;
        # dispatcher = "   submap";
        # arg = "resize";
      };
      resizeActiveRight = {
        inherit scope;
        bindFlag = "e";
        submap = "resize";
        key = keys.l;
        # dispatcher = "resizeactive";
        # arg = 10 0;
      };
      resizeActiveLeft = {
        inherit scope;
        bindFlag = "e";
        submap = "resize";
        key = keys.h;
        # dispatcher = "   resizeactive";
        # arg = -10 0;
      };
      resiveActiveUp = {
        inherit scope;
        bindFlag = "e";
        submap = "resize";
        key = keys.k;
        # dispatcher = "resizeactive";
        # arg = 0 - 10;
      };
      resiveActiveDown = {
        inherit scope;
        bindFlag = "e";
        submap = "resize";
        key = keys.j;
        # dispatcher = "resizeactive";
        # arg = 0 10;
      };

      resizeReset = {
        inherit scope;
        submap = "resize";
        key = "escape";
        # dispatcher = "submap";
        # arg = "reset";
      };
    };

  sway = let
    scope = "global";
    rn = format.sway;
  in rec {
    mod = keys.super;
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
  wezterm = let
    weztermLeader = {
      mod = keys.alt;
      modPhys = keys.q;
      modPhysAlt = keys.rightSquareBracket;
      base = keys.w;
      name = "LEADER";
    };
    leader = weztermLeader.name;
    weztermAction = "act";
  in
    format.wezterm {
      # inherit weztermLeader weztermAction;
      copyToClipboard = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.copy;
        commandText = "${weztermAction}.CopyTo 'Clipboard'";
      };

      pasteFromClipboard = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.paste;
        commandText = "${weztermAction}.PasteFrom 'Clipboard'";
      };
      copyToClipboardAlt = {
        scope = "wezterm::normal";
        base = keys.copy;
        commandText = "${weztermAction}.CopyTo 'Clipboard'";
      };
      pasteFromClipboardAlt = {
        scope = "wezterm::normal";
        base = keys.paste;
        commandText = "${weztermAction}.PasteFrom 'Clipboard'";
      };
      hide = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.hide;
        commandText = "${weztermAction}.Hide";
      };
      spawnWindow = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.new;
        commandText = "${weztermAction}.SpawnWindow";
      };
      toggleFullScreen = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.return;
        commandText = "${weztermAction}.ToggleFullScreen";
      };
      decreaseFontSize = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.decrease;
        commandText = "${weztermAction}.DecreaseFontSize";
      };
      increaseFontSize = {
        scope = "wezterm::normal";
        prefix = keys.ctrl;
        base = p.generalAssociations.increase;
        commandText = "${weztermAction}.IncreaseFontSize";
      };
      resetFontSize = {
        scope = "wezterm::normal";
        prefix = keys.ctrl;
        mod = p.modModifier.sideEffect;
        base = keys._0;
        commandText = "${weztermAction}.ResetFontSize";
      };
      spawnTabCurrentPaneDomain = {
        scope = "wezterm::normal";
        prefix = leader;
        mod = keys.shift;
        base = keys.t;
        commandText = "${weztermAction}.SpawnTab 'CurrentPaneDomain'";
      };
      spawnTabHome = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.t;
        commandText = "${weztermAction}.SpawnTab 'Home'";
      };
      closeCurrentTabWithConfirm = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.killPart;
        commandText = "${weztermAction}.CloseCurrentTab{ confirm = true }";
      };
      activateTab0 = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys._1;
        commandText = "${weztermAction}.ActivateTab(0)";
      };
      activateTab1 = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys._2;
        commandText = "${weztermAction}.ActivateTab(1)";
      };
      activateTab2 = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys._3;
        commandText = "${weztermAction}.ActivateTab(2)";
      };
      activateTab3 = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys._4;
        commandText = "${weztermAction}.ActivateTab(3)";
      };
      activateTab4 = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys._5;
        commandText = "${weztermAction}.ActivateTab(4)";
      };
      activateTab5 = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys._6;
        commandText = "${weztermAction}.ActivateTab(5)";
      };
      activateTab6 = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys._7;
        commandText = "${weztermAction}.ActivateTab(6)";
      };
      activateTab7 = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys._8;
        commandText = "${weztermAction}.ActivateTab(7)";
      };
      activateLastTab = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys._9;
        commandText = "${weztermAction}.ActivateTab(-1)";
      };
      activatePreviousTab = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.downOrLeftOther;
        commandText = "${weztermAction}.ActivateTabRelative(-1)";
      };
      activatePreviousTabAlt = {
        scope = "wezterm::normal";
        prefix = leader;
        mod = keys.shift;
        base = keys.tab;
        commandText = "${weztermAction}.ActivateTabRelative(-1)";
      };
      activatePreviousTabAlt2 = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.pageUp;
        commandText = "${weztermAction}.ActivateTabRelative(-1)";
      };
      activateNextTab = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.upOrRightOther;
        commandText = "${weztermAction}.ActivateTabRelative(1)";
      };
      activateNextTabAlt = {
        scope = "wezterm::normal";
        mods = leader;
        base = keys.tab;
        commandText = "${weztermAction}.ActivateTabRelative(1)";
      };
      activateNextTabAlt2 = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.pageDown;
        commandText = "${weztermAction}.ActivateTabRelative(1)";
      };
      moveTabDown = {
        scope = "wezterm::normal";
        prefix = leader;
        mod = keys.shift;
        base = p.generalAssociations.downOrLeftOther;
        commandText = "${weztermAction}.MoveTabRelative(-1)";
      };
      moveTabUp = {
        scope = "wezterm::normal";
        prefix = leader;
        mod = keys.shift;
        base = p.generalAssociations.upOrRightOther;
        commandText = "${weztermAction}.MoveTabRelative(1)";
      };
      scrollPageUp = {
        scope = "wezterm::normal";
        # prefix = leader;
        base = keys.pageUp;
        commandText = "${weztermAction}.ScrollByPage(-1)";
      };
      scrollPageDown = {
        scope = "wezterm::normal";
        # prefix = leader;
        base = keys.pageDown;
        commandText = "${weztermAction}.scrollByPage(1)";
      };
      reloadConfiguration = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.reload;
        commandText = "${weztermAction}.ReloadConfiguration";
      };
      clearScrollbackScrollbackOnly = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.clear;
        commandText = "${weztermAction}.ClearScrollback 'ScrollbackOnly'";
      };
      showDebugOverlay = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.explore;
        commandText = "${weztermAction}.ShowDebugOverlay";
      };
      activateCommandPalette = {
        scope = "wezterm::normal";
        prefix = leader;
        mod = keys.shift;
        base = keys.e;
        commandText = "${weztermAction}.ActivateCommandPalette";
      };
      charSelect = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.u;
        commandText = "${weztermAction}.CharSelect{ copy_on_select = true, copy_to =  'ClipboardAndPrimarySelection'}";
      };
      searchCurrentSelectionOrEmpty = {
        scope = "wezterm::normal";
        prefix = leader;
        base = p.generalAssociations.search;
        commandText = "${weztermAction}.Search 'CurrentSelectionOrEmptyString'";
      };
      activateCopyMode = {
        scope = "wezterm::normal";
        prefix = leader;
        mod = keys.shift;
        base = p.generalAssociations.copy;
        commandText = "${weztermAction}.ActivateCopyMode";
      };
      quickSelect = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.space;
        commandText = "${weztermAction}.QuickSelect";
      };
      splitVerticalInCurrentPaneDomain = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.singleQuote;
        commandText = "${weztermAction}.SplitVertical{ domain =  'CurrentPaneDomain' }";
      };
      splitHorizontalInCurrentPaneDomain = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.hyphen;
        commandText = "${weztermAction}.SplitHorizontal{ domain =  'CurrentPaneDomain' }";
      };
      adjustPaneSizeLeft = {
        scope = "wezterm::normal";
        prefix = leader;
        mod = keys.shift;
        base = keys.h;
        commandText = "${weztermAction}.AdjustPaneSize{ 'Left', 1 }";
      };
      adjustPaneSizeRight = {
        scope = "wezterm::normal";
        prefix = leader;
        mod = keys.shift;
        base = keys.l;
        commandText = "${weztermAction}.AdjustPaneSize{ 'Right', 1 }";
      };
      adjustPaneSizeUp = {
        scope = "wezterm::normal";
        prefix = leader;
        mod = keys.shift;
        base = keys.k;
        commandText = "${weztermAction}.AdjustPaneSize{ 'Up', 1 }";
      };
      adjustPaneSizeDown = {
        scope = "wezterm::normal";
        prefix = leader;
        mod = keys.shift;
        base = keys.j;
        commandText = "${weztermAction}.AdjustPaneSize{ 'Down', 1 }";
      };
      activatePaneDirectionLeft = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.h;
        commandText = "${weztermAction}.ActivatePaneDirection 'Left' }";
      };
      activatePaneDirectionRight = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.l;
        commandText = "${weztermAction}.ActivatePaneDirection 'Right' }";
      };
      activatePaneDirectionUp = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.k;
        commandText = "${weztermAction}.ActivatePaneDirection 'Up' }";
      };
      activatePaneDirectionDown = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.j;
        commandText = "${weztermAction}.ActivatePaneDirection 'Down' }";
      };
      togglePaneZoomState = {
        scope = "wezterm::normal";
        prefix = leader;
        base = keys.z;
        commandText = "${weztermAction}.TogglePaneZoomState";
      };
      copyModeMoveToStartOfNextLine = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToStartOfNextLine')";
      };
      copyModeClose = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('Close')";
      };
      copyModeMoveToEndOfLineContent = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToEndOfLineContent')";
      };
      copyModeJumpReverse = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('JumpReverse')";
      };
      copyModeMoveToStartOfLine = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToStartOfLine')";
      };
      copyModeJumpAgain = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('JumpAgain')";
      };
      copyModeJumpBackwardPrevCharFalse = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode({ JumpBackward = { prev_char = false } })";
      };
      copyModeMoveMoveToScrollbackBottom = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToScrollbackBottom')";
      };
      copyModeMoveToViewportTop = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToViewportTop')";
      };
      copyModeMoveToViewportBottom = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToViewportBottom')";
      };
      copyModeMoveToViewportMiddle = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToViewportMiddle')";
      };
      copyModeMoveToSelectionOtherEndHoriz = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToSelectionOtherEndHoriz')";
      };
      copyModeJumpBackwardPrevCharTrue = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode({ JumpBackward = { prev_char = true } })";
      };
      copyModeMoveSetSelectionModeLine = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode({ setSelectionMode = 'Line' })";
      };
      copyModeMoveBackwardWord = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveBackwardWord')";
      };
      copyModePageUp = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('PageUp')";
      };
      copyModeMoveByPageHalf = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode({ MoveByPage = 0.5)";
      };
      copyModeMoveForwardWordEnd = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveForwardWordEnd')";
      };
      copyModePageDown = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('PageDown')";
      };
      copyModeMoveToScrollbackTop = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToScrollbackTop')";
      };
      copyModeMoveLeft = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveLeft')";
      };
      copyModeMoveDown = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveDown')";
      };
      copyModeMoveUp = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveUp')";
      };
      copyModeMoveRight = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveRight')";
      };
      copyModeMoveToStartOfLineContent = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToStartOfLineContent')";
      };
      copyModeMoveToSelectionOtherEnd = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveToSelectionOtherEnd')";
      };
      copyModeJumpForwardPrevCharTrue = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('{ JumpForward = { prev_char = true } }')";
      };
      copyModeMoveByPageMinusHalf = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode({ MoveByPage = -0.5 })";
      };
      copyModeSetSelectionModeCell = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode({ SetSelectionMode = 'Cell' })";
      };
      copyModeSetSelectionModeBlock = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode({ SetSelectionMode = 'Block' })";
      };
      copyModeMoveForwardWord = {
        scope = "wezterm::copyMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('MoveForwardWord')";
      };
      searchModePriorMatch = {
        scope = "wezterm::searchMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('Priormatch')";
      };
      searchModeNextMatch = {
        scope = "wezterm::searchMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('NextMatch')";
      };
      searchModeClose = {
        scope = "wezterm::searchMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('Close')";
      };
      searchModeClearPattern = {
        scope = "wezterm::searchMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('ClearPattern')";
      };
      searchModeCycleMatchType = {
        scope = "wezterm::searchMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('CycleMatchType')";
      };
      searchModePriorMatchPage = {
        scope = "wezterm::searchMode";
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('PriorMatchPage')";
      };
      searchModeNextMatchPage = {
        scope = "wezterm::searchMode";
        prefix = leader;
        mod = keys.placeholder;
        base = keys.placeholder;
        commandText = "${weztermAction}.CopyMode('NextMatchPage')";
      };
    };

  /*

    * /
  };
  */
  kitty =
    # format.kitty
    {
      # https://sw.kovidgoyal.net/kitty/actions/
      # https://sw.kovidgoyal.net/kitty/conf/
    };
  alacritty =
    # format.alacritty;
    {
      # https://githucodeb.com/alacritty/alacritty/wiki/Keyboard-mappings
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
  # ============================================================================
  nvim = {
    # https://neovim.io/doc/user/quickref.html
    leader = keys.space;
    # fileOps = {};
    vimCtrlW = keys.backspace;

    #------
    normalMode = {
      # leftRightMotions # https://neovim.io/doc/user/quickref.html#Q_lr
      left = {
        scope = "nvimNormal";
        mod = keys.none;
        base = keys.h;
        numPrefix = true; # optNumPrefix vs reqNumPrefix
      };
      leftAlt = {
      };
      leftAlt2 = {};
      leftAlt3 = {};
      right = {};
      rightAlt = {};
      rightAlt2 = {};
      lineStartSemantic = {
        base = keys._0;
      };
      lineStartApparent = {
        mod = keys.g;
        base = keys.caret;
      };
      lineStartAlt = {};
      lineStartNonBlank = {};
      lineEndSemantic = {};
      lineEndSemanticAlt = {};
      lineEndApparent = {};
      lineMiddleSemantic = {};
      lineMiddleApparent = {};
      columnN = {};
      nthOccurrenceRight = {};
      nthOccurrenceLeft = {};
      tillBeforeNthOccurrenceRight = {};
      tillBeforeNthOccurrenceLeft = {};
      repeatLastNthOccurrence = {};
      repeatLastNthOccurrenceOpposite = {};

      # upDownMotions # https://neovim.io/doc/user/quickref.html#Q_ud
      up = {};
      down = {};
      upNonBlank = {};
      downNonBlank = {};
      downNMinus1 = {};
      lastLine = {};
      lineN = {};
      upNLinesApparent = {};
      downNLinesApparent = {};

      # textObject # https://neovim.io/doc/user/quickref.html#Q_tm
      nWordsForward = {};
      nBlankSepWordsForward = {};
      endofWordForward = {};
      endofBlankSepWordForward = {};
      endofWordBackward = {};
      endofBlankSepWordBackward = {};
      endOfNthWordBackward = {};
      endOfNthBlankSepWordBackward = {};
      nSentencesForward = {};
      nSentencesBackward = {};
      nParagraphsForward = {};
      nParagraphsBackward = {};
      nSectionStartsForward = {};
      nSectionStartsBackward = {};
      nSectionEndsForward = {};
      nSectionEndsBackward = {};
      nTimesBackToUnclosedRound = {};
      nTimesBackToUnclosedCurly = {};
      nTimesBackToStartOfMethod = {};
      nTimesBackToEndOfMethod = {};
      nTimesForwardToUnclosedRound = {};
      nTimesForwardToUnclosedCurly = {};
      nTimesForwardToUnclosedRound = {};
      nTimesForwardToUnclosedCurly = {};
      nTimesForwardToStartOfMethod = {};
      nTimesForwardToEndOfMethod = {};
      nTimesBackToElseOrIf = {};
      nTimesForwardToElseOrIf = {};
      nTimesBackToStartOfCComment = {};
      nTimesForwardToEndOfCComment = {};

      # patternSearch # https://neovim.io/doc/user/quickref.html#Q_pa
      searchForward = {};
      searchBackward = {};
      repeatSearchForward = {};
      repeatSearchBackward = {};
      jumpToNextSearchResult = {};
      jumpToPreviousSearchResult = {};
      searchCurrentForward = {};
      searchCurrentBackward = {};
      searchCurrentForwardPartial = {};
      searchCurrentBackwardPartial = {};
      declarationOfCurrentLocal = {};
      declarationOfCurrentGlobal = {};

      # marks # https://neovim.io/doc/user/quickref.html#Q_ma
      markCurrent = {};

      # various # https://neovim.io/doc/user/quickref.html#Q_vm

      # usingTags # https://neovim.io/doc/user/quickref.html#Q_ta

      # scrolling # https://neovim.io/doc/user/quickref.html#Q_sc

      # textInsertion # https://neovim.io/doc/user/quickref.html#Q_in

      # insertModeKeys

      # insertModeKeysSpecial

      # insertDigraphs

      # insertsSpecial

      # changeDeletingText

      # changeCopyingAndMoving

      # changeText

      # changeComplex

      # visualMode

      # textObjects

      # repeatingCommands

      # keyMapping

      # abbreviations

      # options

      # undoRedo

      # externalCommands

      # quickfixCommands

      # variousCommands

      # exEditing

      # exRanges

      # exSpecialCharacters

      # startingVim

      # fileEditing

      # argumentList

      # writingAndQuitting

      # automaticCommands

      # multiWindowCommands

      # bufferListCommands

      # syntaxHighlighting

      # guiCommands

      # folding
    };
  };

  # ============================================================================
  emacs = {};

  # ============================================================================
  idea = {};
  # ============================================================================
  nyxt =
    # format.nyxt
    {
      set-url = {};
      reload-current-buffer = {};
      set-url-new-buffer = {};
      switch-buffer-previous = {};
      history-backwards = {};
      history-forwards = {};
      follow-hint = {};
      follow-hint-new-buffer = {};
      quit = {};
      execute-command = {};
      describe-bindings = {};

      run-action-on-return = {};
      set-action-on-return = {};
      toggle-mark-forwards = {};
      mark-all = {};
      unmark-all = {};
      toggle-mark-all = {};
      toggle-attributes-display = {};

      list-messages = {};

      scroll-down = {};
      scroll-up = {};
      scroll-page-down = {};
      scroll-page-up = {};
      scroll-to-bottom = {};
      scroll-to-top = {};

      set-url = {};
      set-url-new-buffer = {};
      make-buffer-focus = {};
      switch-buffer = {};
      switch-buffer-next = {};
      switch-buffer-previous = {};
      copy = {};
      paste = {};
      copy-url = {};
      copy-title = {bind = "${keys.alt}+${keys.c} ${keys.t}";};
      copy-placeholder = {};
      copy-hint-url = {};
      copy-username = {};
      copy-password = {};
      copy-password-prompt-details = {};
      paste-from-clipboard-ring = {};
      show-system-information = {};
      follow-hint = {};
      follow-hint-new-buffer-focus = {};
      follow-hint-new-buffer = {};

      history-forwards = {};
      history-backwards = {};
      history-forwards-query = {};
      history-backwards-query = {};
      history-forwards-all-query = {};
      history-all-query = {};

      search-buffer = {};
      search-buffers = {};
      remove-search-marks = {};

      bookmark-current-url = {};
      bookmark-buffer-url = {};
      bookmark-url = {};
      bookmark-hint = {};
      set-url-from-bookmark = {};
      delete-bookmark = {};
      list-bookmarks = {};
      import-bookmarks-from-html = {};
      bookmark-frequent-visits-mode = {};

      annotate-current-url = {};
      annotate-highlighted-text = {};
      show-annotation = {};
      show-annotation = {};
      show-annotations = {};
      show-annotations-for-current-url = {};

      enable-modes = {};
      disable-modes = {};
      toggle-mode = {};

      no-image-mode = {};
      no-script-mode = {};
      no-webgl-mode = {};

      jump-to-heading = {};
      previous-heading = {};
      next-heading = {};
      jump-to-heading-buffers = {};

      go-next = {};
      go-previous = {};
      go-up = {};
      go-to-homepage = {};

      spell-check-word = {};
      spell-check-word-at-cursor = {};
      spell-check-suggest-word = {};
      spell-check-highlighted-word = {};
      spell-check-list-languages = {};
      spell-check-text-input = {};

      visual-mode = {};
      select-paragraph = {};
      toggle-mark = {};
      forward-char = {};
      backward-char = {};
      forward-word = {};
      backward-word = {};
      forward-line = {};
      backward-line = {};
      beginning-line = {};
      end-line = {};
      forward-sentence = {};
      backward-sentence = {};

      forward-char-with-selection = {};
      backward-char-with-selection = {};
      forward-line-with-selection = {};
      backward-line-with-selection = {};

      cruise-control-mode = {};
      autofill = {};
      toggle-checkboxes = {};
      watch-mode = {};
      repeat-every = {};
      repeat-mode = {};
      preview-mode = {};
      edit-macro = {};
      process-mode = {};

      zoom-page = {};
      unzoom-page = {};
      reset-page-zoom = {};
      autofill = {};
      download-open-file = {};
      edit-with-external-editor = {};
      tutorial = {};
      describe-key = {};
      describe-bindings = {};
      describe-command = {};
      describe-function = {};
      describe-variable = {};
      describe-class = {};
      describe-slot = {};
      describe-any = {};

      # history
      history-backwards = {};
      history-forwards = {};
      backtrap-to-hubs-p = {};
      history-forwards-query = {};
      history-backwards-query = {};
      history-all-query = {};

      # downloads
      list-downloads = {};

      # other modes
      proxy-mode = {};
      blocker-mode = {};

      # misc
      url-dispatching-handler = {};

      # auto rules
      save-non-default-modes-for-future-visits = {};
      save-exact-modes-for-future-visits = {};
      match-domain = {};
      match-host = {};
      match-url = {};
      match-regex = {};
      match-scheme = {};

      # passwords
      save-new-password = {};
      copy-password = {};

      # status buffer appearance
      #TODO

      # built-in repl
      #TODO

      # continue from https://nyxt.atlas.engineer/documentation#automation
    };
  qutebrowser =
    # format.qutebrowser
    {};
  chromium =
    # format.chromium
    {};
  firefox =
    # format.firefox
    {};
  luakit =
    # format.luakit
    {};
  vimb =
    # format.vimb
    {};
  brave =
    # format.brave
    {};
  icecat =
    # format.icecat
    {};
  # ============================================================================
  cli = {};
  # ============================================================================
  tui = {};
  # ============================================================================
}
