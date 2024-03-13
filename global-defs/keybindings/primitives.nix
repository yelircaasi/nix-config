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
    # enum-like attrset to ensure internal uniformity of key naming conventions

    ph = "PLACEHOLDER";
    super = "SUPER";
    alt = "ALT";
    ctrl = "CTRL";
    lctrl = "LCTRL";
    rctrl = "RCTRL";
    altGr = "ALTGR";
    lsuper = "LSUPER";
    rsuper = "RSUPER";
    shift = "SHIFT";
    lshift = "LSHIFT";
    rshift = "RSHIFT";
    tab = "TAB";

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

    _0 = "_0";
    _1 = "_1";
    _2 = "_2";
    _3 = "_3";
    _4 = "_4";
    _5 = "_5";
    _6 = "_6";
    _7 = "_7";
    _8 = "_8";
    _9 = "_9";

    exclamationMark = "EXCLAMATIONMARK";
    at = "AT";
    backtick = "BACKTICK";
    tilde = "TILDE";
    octothorpe = "OCTOTHORPE";
    dollar = "DOLLAR";
    percent = "PERCENT";
    caret = "CARET";
    ampersand = "AMPERSAND";
    asterisk = "ASTERISK";
    leftParenthesis = "LEFTPARENTHESIS";
    rightParenthesis = "RIGHTPARENTHESIS";
    hyphen = "HYPHEN";
    underscore = "UNDERSCORE";
    equals = "EQUALS";
    plus = "PLUS";
    singleQuote = "SINGLEQUOTE";
    doubleQuote = "DOUBLEQUOTE";
    semicolon = "SEMICOLON";
    colon = "COLON";
    squareBracketLeft = "SQUAREBRACKETLEFT";
    squareBracketRight = "SQUAREBRACKETRIGHT";
    curlyBracketLeft = "CURLYBRACKETLEFT";
    curlyBracketRight = "CURLYBRACKETRIGHT";
    backslash = "BACKSLASH";
    pipe = "PIPE";
    comma = "COMMA";
    period = "PERIOD";
    slash = "SLASH";
    questionMark = "QUESTIONMARK";
    lessThan = "LESSTHAN";
    greaterThan = "GREATERTHAN";

    escape = "ESCAPE";
    capsLock = "CAPSLOCK";

    f1 = "f1";
    f2 = "f2";
    f3 = "f3";
    f4 = "f4";
    f5 = "f5";
    f6 = "f6";
    f7 = "f7";
    f8 = "f8";
    f9 = "f9";
    f10 = "f10";
    f11 = "f11";
    f12 = "f12";

    insert = "INSERT";
    home = "HOME";
    end = "END";
    pageUp = "PAGEUP";
    pageDown = "PAGEDOWN";
    delete = "DELETE";

    leftArrow = "LEFT";
    rightArrow = "RIGHT";
    upArrow = "UP";
    downArrow = "DOWN";

    printScreen = "PRINTSCREEN";
    scrollLock = "SCROLLLOCK";
    pause = "PAUSE";

    num0 = "NUM0";
    num1 = "NUM1";
    num2 = "NUM2";
    num3 = "NUM3";
    num4 = "NUM4";
    num5 = "NUM5";
    num6 = "NUM6";
    num7 = "NUM7";
    num8 = "NUM8";
    num9 = "NUM9";
    numLock = "NUMLOCK";
    numSlash = "NUMSLASH";
    numAsterisk = "NUMASTERISK";
    numHyphen = "NUMHYPHEN";
    numPlus = "NUMPLUS";
    numReturn = "NUMRETURN";
    numPeriod = "NUMPERIOD";
  };

  commands = {ph = "PLACEHOLDER";};
  layers = rec {
    physical = {}; #() keys; # map every key name to itself
    default = physical // {}; # keys.insert;
    number =
      default
      // {
        /*
        q0  w1  e2  r3  t4
         a5  s6  d7  f8  g9
        */
        ${keys.q} = 0;
        ${keys.w} = 1;
        ${keys.e} = 2;
        ${keys.r} = 3;
        ${keys.t} = 4;
        ${keys.a} = 5;
        ${keys.s} = 6;
        ${keys.d} = 7;
        ${keys.f} = 8;
        ${keys.g} = 9;
      }; # keys.semicolon;
    parentheses =
      default
      // {
        /*
        q[  w]  e<  r>  t❬  y❭  u  i  o  p
         a{  s}  d(  f)  g⸨  h⸩  j«  k»  l‹  ;›
          z  x  c  v  b  n  m
        */
        ${keys.q} = keys.squareBracketLeft;
        ${keys.w} = keys.squareBracketRight;
        ${keys.e} = keys.lessThan;
        ${keys.r} = keys.greaterThan;
        # ${keys.t} = keys.leftAngled; # ❬
        # ${keys.y} = keys.rightAngled; # ❭
        ${keys.a} = keys.curlyBracketLeft;
        ${keys.s} = keys.curlyBracketRight;
        ${keys.d} = keys.leftParenthesis;
        ${keys.f} = keys.rightParenthesis;
        # ${keys.g} = keys.leftDoubleRound; # ⸨
        # ${keys.h} = keys.rightDoubleRound; # ⸩
        # ${keys.z} = keys.leftFrenchQuoteDouble; # «
        # ${keys.x} = keys.rightFrenchQuoteDouble; # »
        # ${keys.c} = keys.leftFrenchQuoteSingle; # ‹
        # ${keys.b} = keys.rightFrenchQuoteDouble; # ›
      };
    asciiSpecial =
      default
      // {
        /*
        q@  w\  e%  r|  t-  y  u  i  o  p
         a$  s*  d=  f_  g&  h  j  k  l  ;
          z~  x^  c#  v`  b!  n  m  ,  .  /
        */
        ${keys.b} = keys.exclamationMark;
        ${keys.q} = keys.at;
        ${keys.c} = keys.octothorpe;
        ${keys.a} = keys.dollar;
        ${keys.e} = keys.percent;
        ${keys.x} = keys.caret;
        ${keys.g} = keys.ampersand;
        ${keys.s} = keys.asterisk;
        ${keys.t} = keys.hyphen;
        ${keys.d} = keys.equals;
        ${keys.f} = keys.underscore;
        ${keys.h} = keys.plus;
        ${keys.z} = keys.tilde;
        ${keys.v} = keys.backtick;
        # ${keys.ph} = keys.semicolon;
        # ${keys.ph} = keys.colon;
        # ${keys.ph} = keys.singleQuote;
        # ${keys.ph} = keys.doubleQuote;
        # ${keys.ph} = keys.comma;
        # ${keys.ph} = keys.period;
        # ${keys.ph} = keys.lessThan;
        # ${keys.ph} = keys.greaterThan;
        # ${keys.ph} = keys.slash;
        # ${keys.ph} = keys.question;
        ${keys.w} = keys.backslash;
        ${keys.r} = keys.pipe;
      };
    unicodeFavorites =
      default
      // {
        /*
        q  w  e  r  t  y  u  i  o  p
         a  s  d  f  g  h  j  k  l  ;
          z  x  c  v  b  n  m  ,  .  /
        */
      };
    international =
      default
      // {
        /*
        q  w  e  r  t  y  u  i  o  p
         a  s  d  f  g  h  j  k  l  ;
          z  x  c  v  b  n  m  ,  .  /
        */
      }; # keys.backslash;
    cyrillic =
      default
      // {
        /*
        q  w  e  r  t  y  u  i  o  p  [  ]  \
         a  s  d  f  g  h  j  k  l  ;  '
          z  x  c  v  b  n  m  ,  .  /
        */
      };
  };
  layerAccessKeys = {
    physical = {};
    default = {};
    number = {};
    parentheses = {};
    asciiSpecial = {};
    unicodeFavorites = {};
    international = {};
    cyrillic = {};
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
    ${keys.numPeriod} = commands.ph;
    ${keys.numReturn} = commands.ph;
    ${keys.numPlus} = commands.ph;
    ${keys.ph} = commands.ph;
  };
  hybridModifiers = {
    "${keys.capsLock}" = {
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
    "${keys.squareBracketLeft}" = {
      tap = keys.ph;
      hold = keys.ph;
    };
    "${keys.squareBracketRight}" = {
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
    "${keys.q}${keys.squareBracketLeft}" = {};
    "${keys.q}${keys.squareBracketRight}" = {};
    "${keys.q}${keys.comma}" = {};
    "${keys.q}${keys.v}" = {};
    "${keys.v}${keys.w}" = {};
    "${keys.p}${keys.w}" = {};
    "${keys.y}${keys.w}" = {};
    "${keys.w}${keys.w}" = {};
    "${keys.p}${keys.q}" = {};
  };

  move = {
    left = keys.h;
    down = keys.j;
    up = keys.k;
    right = keys.l;
    downOrLeftAlt = keys.squareBracketLeft;
    upOrRightAlt = keys.squareBracketRight;
  };
  modModifier = {
    sideEffect = keys.shift;
  };
  sem = {
    kill = keys.q;
    killPart = keys.backslash;
    copy = keys.c;
    paste = keys.v;
    hide = keys.m; # masquer, mache unsichtbar :)
    new = keys.n;
    newPart = keys.t;
    decrease = keys.hyphen;
    increase = keys.plus;
    fullscreen = keys.f;
    search = keys.slash;
    explore = keys.e;
    reload = keys.r;
    clear = keys.p; # purge
  };
  desktop = let
    mod = keys.super;
  in {
    compositor = rec {
      logoutMenu = {};
      launcher = {};
      lockScreen = {};
      killActive = {
        inherit mod;
        base = sem.kill;
      };
      launch = {
        defaultTerminal = {};
        defaultBrowser = {};
        defaultFileBrowserGUI = {};
        defaultFileBrowserTUI = {};
        firefox = {
          mod = keys.ph;
          base = "";
        };
        wezterm = {};
        kitty = {};
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
        # layoutDwindle = {};
        # layoutMaster = {};
        # fullscreen = {};
      };
      toggleMode = {
        tiling = {};
        floating = {};
        stacking = {};
        horizontalVsVertical = {};
        tilingLayout = {
          dwindle = {};
          recursiveSplit = {};
          master = {};
          centralColumn = {};
          predefined1 = {};
          predefined2 = {};
          predefined3 = {};
        };
        fullscreen = {};
        pseudotile = {};
      };
      goToScreen = {
        builtIn = {};
        external1 = {};
        external2 = {};
      };
      window = {
        goLeft = {};
        goRight = {};
        goUp = {};
        goDown = {};
        moveLeft = {};
        moveRight = {};
        moveUp = {};
        moveDown = {};
        resizeActiveLeft = {};
        resizeActiveRight = {};
        resizeActiveUp = {};
        resizeActiveDown = {};
        resetSizes = {};
      };
      group = {
        goToPrevious = {};
        goToNext = {};
        goTo1 = {};
        goTo2 = {};
        goTo3 = {};
        lockActive = {};
      };
      workspace = {
        goToPrevious = {};
        goToNext = {};
        goTo1 = {};
        goTo2 = {};
        goTo3 = {};
        goTo4 = {};
        goTo5 = {};
        goTo6 = {};
        goTo7 = {};
      };
      colorPicker = {
        copyCurrent = {};
      };
      screenshot = {};
      mediaPlayer = {
        playOrPause = {};
      };
    };
    widgets = {
      bar = {};
    };
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
    goToTabN = builtins.foldl' (s: n:
      s
      // {
        "_${builtins.toString n}" = {
          mod = browserMod;
          base = builtins.toString n;
        };
      }) {} [1 2 3 4 5 6 7 8 9];
    goToBookmarkN = builtins.foldl' (s: n:
      s
      // {
        "_${builtins.toString n}" = {
          mod = keys.alt;
          base = builtins.toString n;
        };
      }) {} [1 2 3 4 5 6 7 8 9];
  };
  # goToTabN = lib.attrSets.genAttrs (name:
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
