rec {
  # notes: best format should be universal, so maybe something that contains
  keys = {
    super = "SUPER";
    a = "a";
    b = "b";
    c = "c";
    d = "d";
    e = "e";
    f = "f";
    g = "g";
    h = "h";
    i = "i";
    j = "j";
    k = "k";
    l = "l";
    m = "m";
    n = "n";
    o = "o";
    p = "p";
    q = "q";
    r = "r";
    s = "s";
    t = "t";
    u = "u";
    v = "v";
    w = "w";
    x = "x";
    y = "y";
    z = "z";
  };
  move = {
    left = keys.h;
    down = keys.j;
    up = keys.k;
    right = keys.l;
  };
  generalBase = {
    kill = keys.q;
    copy = keys.q;
    paste = keys.q;
  };
  desktop = {
    compositor = rec {
      mod = "super";
      kill = {
        inherit mod;
        base = generalBase.kill;
      };
      launch = {
        firefox = {
          mod = keys.ph;
          base = "";
        };
      };
      switchToWindow = {};
      switchToWorkspace = {};
      changeLayoutTo = {};
      moveWindowToWorkspace = {};
      moveWorkspace = {
        left = {};
        right = {};
      };
      switchToMode = {
        tiling = {};
        floating = {};
        stacking = {};
      };
    };
    bar = {};
    widgets = {};
  };
  terminal = {
    newPane = {
      right = {};
      left = {};
      above = {};
      below = {};
    };
    newTab = {
      atPosition = {};
      atStart = {};
      atEnd = {};
    };
    goToTab = {
      position = {
        _0 = {};
        _1 = {};
      };
      prev = {};
      next = {};
    };
    navigatePane = {
      right = {};
      left = {};
      up = {};
      down = {};
    };
    closePane = {
      current = {};
      byNumber = {};
    };
    closeTab = {
      current = {};
      byNumber = {};
    };
    changePaneLayoutTo = {};
    showTabBar = {};
  };
  browser = {};
}
