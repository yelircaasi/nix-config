{lib}: let
  adapt = import ./app-specific-keyname-formatters.nix;
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

    # modifies the key pressed next; does not need to be held
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
