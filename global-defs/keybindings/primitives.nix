rec {
  # notes: best format should be universal, so maybe something that contains
  syntax = {
    "action" = "someActionTaken";
    "description" = "additional notes, as needed (optional)";
    "command" = "the command that is executed";
    "type" = "one of: single, modified, chord";
    "keys" = "attrSet containg 'key' for single, 'mod' and 'base' / 'bases' for modified, [] for chord (where each entry is of the type modified)";
  };
  # keysAlternative = "${key} | ${mod}+${base} | ${mod}+${base}+${base} | ${chord1} ${chord2} | ${chord1} ${chord2} ${chord3}";

  keys = {
    ph = "PLACEHOLDER";
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
  commands = {};
  layers = rec {
    physical = {}; #() keys; # map every key name to itself
    default = physical // {}; # keys.insert;
    number =
      default
      // {
        ${keys.z} = 0;
        ${keys.x} = 1;
        ${keys.c} = 2;
        ${keys.s} = 3;
        ${keys.d} = 4;
        ${keys.f} = 5;
        ${keys.w} = 6;
        ${keys.e} = 7;
        ${keys.r} = 8;
        ${keys.z} = 9;
      }; # keys.semicolon;
    parentheses = default // {}; # keys.rightSquareBracket;
    asciiSpecial =
      default
      // {
        ${keys.ph} = keys.exclamation;
        ${keys.ph} = keys.at;
        ${keys.ph} = keys.octothorpe;
        ${keys.ph} = keys.dollar;
        ${keys.ph} = keys.percent;
        ${keys.ph} = keys.caret;
        ${keys.ph} = keys.ampersand;
        ${keys.ph} = keys.asterisk;
        ${keys.ph} = keys.hyphen;
        ${keys.ph} = keys.equals;
        ${keys.ph} = keys.underscore;
        ${keys.ph} = keys.plus;
        ${keys.ph} = keys.tilde;
        ${keys.ph} = keys.backtick;
        ${keys.ph} = keys.semicolon;
        ${keys.ph} = keys.colon;
        ${keys.ph} = keys.singleQuote;
        ${keys.ph} = keys.doubleQuote;
        ${keys.ph} = keys.comma;
        ${keys.ph} = keys.period;
        ${keys.ph} = keys.lessThan;
        ${keys.ph} = keys.greaterThan;
        ${keys.ph} = keys.slash;
        ${keys.ph} = keys.question;
        ${keys.ph} = keys.backslash;
        ${keys.ph} = keys.pipe;
      }; # keys.leftSquareBracket;
    unicodeFavorites = default // {};
    international = default // {}; # keys.backslash;
  };
  layerAccess = {
    physical = {};
    default = {};
    number = {};
    parentheses = {};
    asciiSpecial = {};
    unicodeFavorites = {};
    international = {};
  };
  simpleRemaps = {
    ${keys.printScreen} = commands.ph;
    ${keys.scrollLock} = commands.ph;
    ${keys.pause} = commands.ph;
    ${keys.insert} = commands.ph;
    ${keys.delete} = commands.ph;
    ${keys.home} = commands.ph;
    ${keys.end} = commands.ph;
    ${keys.pageUp} = commands.ph;
    ${keys.numLock} = commands.ph;
    ${keys.numSlash} = commands.ph;
    ${keys.numAsterisk} = commands.ph;
    ${keys.numHyphen} = commands.ph;
    ${keys.numEscape} = commands.ph;
    ${keys.numAltGr} = commands.ph;
    ${keys.num1} = commands.ph;
    ${keys.num2} = commands.ph;
    ${keys.num3} = commands.ph;
    ${keys.num4} = commands.ph;
    ${keys.num5} = commands.ph;
    ${keys.num6} = commands.ph;
    ${keys.num7} = commands.ph;
    ${keys.num8} = commands.ph;
    ${keys.num9} = commands.ph;
    ${keys.num0} = commands.ph;
    ${keys.num1} = commands.ph;
    ${keys.numDot} = commands.ph;
    ${keys.numEnter} = commands.ph;
    ${keys.numPlus} = commands.ph;
    ${keys.ph} = commands.ph;
    ${keys.ph} = commands.ph;
    ${keys.ph} = commands.ph;
    ${keys.ph} = commands.ph;
  };
  hybridModifiers = {
    "${keys.capslock}" = {
      tap = keys.escape;
      hold = keys.ctrl;
    };
    "${keys._1}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys._2}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys._3}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys._4}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys._5}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys._6}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys._7}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys._8}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys._9}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.tilde}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.hyphen}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.equals}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.leftSquareBracket}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.rightSquareBracket}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.backslash}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.semicolon}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.singleQuote}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.comma}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.period}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.slash}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.tab}" = {
      tap = keys.tab;
      hold = keys.ph;
    };
    "${keys.insert}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.home}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.pageUp}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.delete}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.end}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.pageDown}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f1}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f2}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f3}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f4}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f5}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f6}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f7}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f8}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f9}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f10}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f11}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.f12}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.ph}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
  };
  bigramHybridRemaps = {
    "${keys.q}${keys.w}" = {};
    "${keys.q}${keys.r}" = {};
    "${keys.q}${keys.g}" = {};
    "${keys.q}${keys.j}" = {};
    "${keys.q}${keys.h}" = {};
    "${keys.q}${keys.k}" = {};
    "${keys.q}${keys.l}" = {};
    "${keys.q}${keys.b}" = {};
    "${keys.q}${keys.f}" = {};
    "${keys.q}${keys.d}" = {};
    "${keys.q}${keys.p}" = {};
    "${keys.q}${keys.n}" = {};
    "${keys.q}${keys.m}" = {};
    "${keys.q}${keys.y}" = {};
    "${keys.q}${keys.singleQuote}" = {};
    "${keys.q}${keys.leftSquareBracket}" = {};
    "${keys.q}${keys.rightSquareBracket}" = {};
    "${keys.q}${keys.comma}" = {};
    "${keys.q}${keys.v}" = {};
    "${keys.v}${keys.w}" = {};
    "${keys.p}${keys.w}" = {};
    "${keys.y}${keys.w}" = {};
    "${keys.w}${keys.w}" = {};
    "${keys.p}${keys.w}" = {};
    "${keys.p}${keys.q}" = {};
    "${keys.p}${keys.w}" = {};
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
  browser = rec {
    browserMod = keys.altGr;
    newTab = {};
    newBuffer = {};
    closeTab = {};
    closeBuffer = {};
    goToTabN = builtins.foldl' (n: {
      "_${n}" = {
        mod = browserMod;
        base = n;
      };
    }) {} [0 1 2 3 4 5 6 7 8 9];
    goToBookmarkN = builtins.foldl' (n: {
      "_${n}" = {
        mod = keys.b;
        base = n;
      };
    }) {} [0 1 2 3 4 5 6 7 8 9];
  };
  ide = {
    writeFile = {};
    writeAndQuit = {};

    # terminal
    openTerminal = {};
    closeTerminal = {};

    # file exploration
    openFileTree = {};
    closeFileTree = {};
    openFloatingFileBrowser = {};
    closeFloatingFileBrowser = {};

    # opening files
    openFileInSplitLeft = {};
    openFileInSplitRight = {};
    openFileInSplitAbove = {};
    openFileInSplitBelow = {};

    # navigation between files
    goToNextBuffer = {};
    goToPreviousBuffer = {};
    goToNextTab = {};
    goToPreviousTab = {};
    goToWindowRight = {};
    goToWindowLeft = {};
    goToWindowAbove = {};
    goToWindowBelow = {};
    resizeSplitLeft = {};
    resizeSplitRight = {};
    resizeSplitUp = {};
    resizeSplitDown = {};

    # linting, formatting, testing, etc. and related navigation
    lintFullDirectory = {};
    typeCheckFullDirectory = {};
    runAllTests = {};
    goToLintOrTestOutput = {};
    openFileFromLintOrTestOutput = {};
    incrementValueUnderCursor = {};
    openLinkInBrowser = {};
    pickBuffer = {};

    # refactoring

    # snippets

    # autocomplete

    # code actions (first need to configure lspsaga)
    ## https://github.com/aznhe21/actions-preview.nvim

    # quickfix
  };
}
