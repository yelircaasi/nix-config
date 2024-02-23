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
    mod = rn p.desktop.wm.mod;
    modAlias = "$mainMod"; # unnecessary? remove?
    left = rn p.move.left;
    down = rn p.move.down;
    up = rn p.move.up;
    right = rn p.move.right;
    killActive = {
      mod = modAlias;
      base = rn p.generalBase.kill;
    };
  };

  sway = let
    rn = convertTo.sway;
  in rec {
    mod = rn p.desktop.wm.mod;
  };

  # ============================================================================
  /*
  terminal = {
    wezterm = let rn = convertTo.wezterm; in { # https://wezfurlong.org/wezterm/config/default-keys.html
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
        mod = rn keys.;
        base = rn keys.;
      };
      pasteFromPrimarySelection = {
        mod = rn keys.;
        base = rn keys.;
      };
      hide = {
        mod = rn keys.;
        base = rn keys.;
      };
      spawnWindow = {
        mod = rn keys.;
        base = rn keys.;
      };
      spawnWindowAlt = {
        mod = rn keys.;
        base = rn keys.;
      };
      toggleFullScreen = {
        mod = rn keys.;
        base = rn keys.;
      };
      decreaseFontSize = {
        mod = rn keys.;
        base = rn keys.;
      };
      decreaseFontSizeAlt = {
        mod = rn keys.;
        base = rn keys.;
      };
      increaseFontSize = {
        mod = rn keys.;
        base = rn keys.;
      };
      increaseFontSizeAlt = {
        mod = rn keys.;
        base = rn keys.;
      };
      resetFontSize = {
        mod = rn keys.;
        base = rn keys.;
      };
      resetFontSizeAlt = {
        mod = rn keys.;
        base = rn keys.;
      };
      spawnTabCurrentPaneDomain = {
        mod = rn keys.;
        base = rn keys.;
      };
      spawnTabCurrentPaneDomainAlt = {
        mod = rn keys.;
        base = rn keys.;
      };
      closeCurrentTabWithConfirm = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateTab0 = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateTab1 = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateTab2 = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateTab3 = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateTab4 = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateTab5 = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateTab6 = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateTab7 = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateTab8 = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateTab9 = {
        mod = rn keys.;
        base = rn keys.;
      };
      activatePreviousTab = {
        mod = rn keys.;
        base = rn keys.;
      };
      activatePreviousTabAlt = {
        mod = rn keys.;
        base = rn keys.;
      };
      activatePreviousTabAlt2 = {
        mod = rn keys.;
        base = rn keys.;
      };
      moveTabDown = {
        mod = rn keys.;
        base = rn keys.;
      };
      moveTabUp = {
        mod = rn keys.;
        base = rn keys.;
      };
      scrollByPageDown = {
        mod = rn keys.;
        base = rn keys.;
      };
      scrollByPageUp = {
        mod = rn keys.;
        base = rn keys.;
      };
      reloadConfig = {
        mod = rn keys.;
        base = rn keys.;
      };
      reloadConfigAlt = {
        mod = rn keys.;
        base = rn keys.;
      };
      hideApplicationMacOSOnly = {
        mod = rn keys.;
        base = rn keys.;
      };
      clearScrollbackScrollbackOnly = {
        mod = rn keys.;
        base = rn keys.;
      };
      clearScrollbackScrollbackOnlyAlt = {
        mod = rn keys.;
        base = rn keys.;
      };
      showDebugOverlay = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateCommandPalette = {
        mod = rn keys.;
        base = rn keys.;
      };
      charSelect = {
        mod = rn keys.;
        base = rn keys.;
      };
      searchCaseSensitiveSring = {
        mod = rn keys.;
        base = rn keys.;
      };
      searchCaseSensitiveSringAlt = {
        mod = rn keys.;
        base = rn keys.;
      };
      activateCopyMode = {
        mod = rn keys.;
        base = rn keys.;
      };
      quickSelect = {
        mod = rn keys.;
        base = rn keys.;
      };
      splitVerticalInCurrentPaneDomain = {
        mod = rn keys.;
        base = rn keys.;
      };
      splitHorizontalInCurrentPaneDomain = {
        mod = rn keys.;
        base = rn keys.;
      };
      adjustPaneSizeLeft = {
        mod = rn keys.;
        base = rn keys.;
      };
      adjustPaneSizeRight = {
        mod = rn keys.;
        base = rn keys.;
      };
      adjustPaneSizeUp = {
        mod = rn keys.;
        base = rn keys.;
      };
      adjustPaneSizeDown = {
        mod = rn keys.;
        base = rn keys.;
      };
      activatePaneDirectionLeft = {
        mod = rn keys.;
        base = rn keys.;
      };
      activatePaneDirectionRight = {
        mod = rn keys.;
        base = rn keys.;
      };
      activatePaneDirectionUp = {
        mod = rn keys.;
        base = rn keys.;
      };
      activatePaneDirectionDown = {
        mod = rn keys.;
        base = rn keys.;
      };
      togglePaneZoomState = {
        mod = rn keys.;
        base = rn keys.;
      };






    };
    kitty = let rn = convertTo.kitty; in {
      # https://sw.kovidgoyal.net/kitty/actions/
      # https://sw.kovidgoyal.net/kitty/conf/
    };
    alacritty = let rn = convertTo.alacritty; in {
      # https://github.com/alacritty/alacritty/wiki/Keyboard-mappings
      # https://github.com/alacritty/alacritty/blob/master/extra/man/alacritty.5.scd#keyboard
    };
    waveterm = { # https://docs.waveterm.dev/reference/keyboard
    };
    tabby = {};
    foot = { # https://codeberg.org/dnkl/foot/src/branch/master/foot.ini
    };
    extraterm = {};
    hyper = { # https://hyper.is/
    };
    wayst = {};
    commas = {};
    urxvt = {};
    tym = { # https://github.com/endaaman/tym?tab=readme-ov-file#customizing-keymap
    };
    blackbox = {};
  */

  # ============================================================================
  nvim = {
    leader = " ";
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
