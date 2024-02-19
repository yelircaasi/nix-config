{lib}: let
  adapters = import ./app-specific-keyname-formatters.nix;
  convert = appName: keyName: adapters.${appName} keyName;
in rec {
  # ============================================================================
  common = {
    move = {
      left = "h";
      down = "j";
      up = "k";
      right = "l";
    };
    base = {
      kill = "q";
      copy = "c";
      paste = "p";
    };
  };

  # ============================================================================
  kanata = {
    # modify the key(s) pressed next - must be held down
    layerMods = {
      international = "?";
      unicodeFavorites = "?";
      leftHandNumberpad = "?";
      nerdFontFavorites = "?";
    };

    # modifies the key pressed next; does not need to be held -> rename to prefix?
    layerStickyMods = {
    };
  };

  # ============================================================================
  desktop = {
    wm = rec {
      mod = "super";
      kill = {
        inherit mod;
        base = common.kill;
      };
      launch = {
        firefox = {
          mod = "";
          base = "";
        };
      };
    };
    bar = {};
    widgets = {};
  };

  hyprland = rec {
    mod = convert "hyprland" desktop.wm.mod;
    modAlias = "$mainMod";
    left = common.move.left;
    down = common.move.down;
    up = common.move.up;
    right = common.move.right;
    killActive = {
      mod = modAlias;
      base = convert "hyprland" common.base.kill;
    };
  };

  sway = {
    mod = convert desktop.wm.mod sway;
  };

  # ============================================================================
  terminal = {};

  # ============================================================================
  nvim = {
    leader = " ";
    fileOps = {};
  };

  # ============================================================================
  emacs = {};

  # ============================================================================
  browser = {};
}
