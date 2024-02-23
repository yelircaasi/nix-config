let
  keys = (import ./primitives.nix).keys;
  getKeyName = keyNameAttrSet: keyName: keyNameAttrSet.${keyName};
in {
    sway = getKeyName {
      ctrl = "mod1";
    };

    nvim = getKeyName {};

    hyprland = getKeyName {
      super = "SUPER";
      # mainMod = "$mainMod"
      a = "A";
      b = "B";
      c = "C";
      d = "D";
      e = "E";
      f = "F";
      g = "G";
      h = "H";
      i = "I";
      j = "J";
      k = "K";
      l = "L";
      m = "M";
      n = "N";
      o = "O";
      p = "P";
      q = "Q";
      r = "R";
      s = "S";
      t = "T";
      u = "U";
      v = "V";
      w = "W";
      x = "X";
      y = "Y";
      z = "Z";
    };

    kanata = getKeyName {};

    # convert = appName: keyName: adapters.${appName} keyName;

    wezterm = getKeyName {};
}
