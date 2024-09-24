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
  phys = {
    ph = "PLACEHOLDER";

    escape = "ESC";
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
    printScreen = "PRINTSCREEN";
    insert = "INSERT";
    delete = "DELETE";

    backtick = "BACKTICK";
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
    hyphen = "HYPHEN";
    equals = "EQUALS";
    backspace = "BACKSPACE";

    tab = "TAB";
    q = "q";
    w = "w";
    e = "e";
    r = "r";
    t = "t";
    y = "y";
    u = "u";
    i = "i";
    o = "o";
    p = "p";
    leftSquareBracket = "LEFTSQUAREBRACKET";
    rightSquareBracket = "RIGHTSQUAREBRACKET";
    backslash = "BACKSLASH";

    capsLock = "CAPSLOCK";
    a = "a";
    s = "s";
    d = "d";
    f = "f";
    g = "g";
    h = "h";
    j = "j";
    k = "k";
    l = "l";
    semicolon = "SEMICOLON";
    singleQuote = "SINGLEQUOTE";
    enter = "ENTER";

    z = "z";
    x = "x";
    c = "c";
    v = "v";
    b = "b";
    n = "n";
    m = "m";
    comma = "COMMA";
    period = "PERIOD";
    slash = "SLASH";

    lctrl = "LCTRL";
    fn = "FN";
    super = "SUPER";
    alt = "ALT";
    space = "SPACE";
    altGr = "ALTGR";
    menu = "MENU";
    rctrl = "RCTRL";

    # f1 = "f1";
    # f2 = "f2";
    # f3 = "f3";
    # f4 = "f4";
    # f5 = "f5";
    # f6 = "f6";
    # f7 = "f7";
    # f8 = "f8";
    # f9 = "f9";
    # f10 = "f10";
    # f11 = "f11";
    # f12 = "f12";

    # insert = "INSERT";
    home = "HOME";
    end = "END";
    pageUp = "PAGEUP";
    pageDown = "PAGEDOWN";
    # delete = "DELETE";

    leftArrow = "LEFT";
    rightArrow = "RIGHT";
    upArrow = "UP";
    downArrow = "DOWN";

    # printScreen = "PRINTSCREEN";
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
    # copy = "COPY";
    # paste = "PASTE";
  };

  sem = {
    # enum-like attrset to ensure internal uniformity of key naming conventions
    none = "NONE";

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

    return = "RETURN";
    space = "SPACE";
    newline = "NEWLINE"; #                     "\n"
    carriageReturn = "CARRIAGERETURN"; #       "\r"
    tabulation = "TABULATION"; #               "\t"
    backspace = "BACKSPACE";
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
    leftSquareBracket = "leftSquareBracket";
    rightSquareBracket = "rightSquareBracket";
    leftCurlyBracket = "leftCurlyBracket";
    rightCurlyBracket = "rightCurlyBracket";
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
    copy = "COPY";
    paste = "PASTE";
  };
  keys = phys // sem;

  commands = keys; #commands = {ph = "PLACEHOLDER";};
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
        ${phys.q} = 0;
        ${phys.w} = 1;
        ${phys.e} = 2;
        ${phys.r} = 3;
        ${phys.t} = 4;

        ${phys.a} = 5;
        ${phys.s} = 6;
        ${phys.d} = 7;
        ${phys.f} = 8;
        ${phys.g} = 9;
      }; # keys.semicolon;
    parentheses =
      default
      // {
        /*
        q[  w]  e<  r>  t❬  y❭  u  i  o  p
         a{  s}  d(  f)  g⸨  h⸩  j«  k»  l‹  ;›
          z  x  c  v  b  n  m
        */
        ${phys.q} = keys.leftSquareBracket;
        ${phys.w} = keys.rightSquareBracket;
        ${phys.e} = keys.lessThan;
        ${phys.r} = keys.greaterThan;
        # ${phys.t} = keys.leftAngled; # ❬
        # ${phys.y} = keys.rightAngled; # ❭
        ${phys.a} = keys.leftCurlyBracket;
        ${phys.s} = keys.rightCurlyBracket;
        ${phys.d} = keys.leftParenthesis;
        ${phys.f} = keys.rightParenthesis;
        # ${phys.g} = keys.leftDoubleRound; # ⸨
        # ${phys.h} = keys.rightDoubleRound; # ⸩
        # ${phys.z} = keys.leftFrenchQuoteDouble; # «
        # ${phys.x} = keys.rightFrenchQuoteDouble; # »
        # ${phys.c} = keys.leftFrenchQuoteSingle; # ‹
        # ${phys.b} = keys.rightFrenchQuoteDouble; # ›
      };
    notesSpecial =
      default // {};
    asciiSpecial =
      default
      // {
        /*
        q@  w\  e%  r|  t-  y&  u  i  o  p
         a$  s*  d=  f_  g+  h  j  k  l  ;
          z~  x^  c#  v`  b!  n  m  ,  .  /
        */
        ${phys.q} = keys.at;
        ${phys.w} = keys.backslash;
        ${phys.e} = keys.percent;
        ${phys.r} = keys.pipe;
        ${phys.t} = keys.hyphen;
        ${phys.y} = keys.ampersand;

        ${phys.a} = keys.dollar;
        ${phys.s} = keys.asterisk;
        ${phys.d} = keys.equals;
        ${phys.f} = keys.underscore;
        ${phys.g} = keys.plus;

        ${phys.z} = keys.tilde;
        ${phys.x} = keys.caret;
        ${phys.c} = keys.octothorpe;
        ${phys.v} = keys.backtick;
        ${phys.b} = keys.exclamationMark;

        # ${phys.u} = keys.semicolon;
        # ${phys.i} = keys.colon;
        # ${phys.o} = keys.singleQuote;
        # ${phys.p} = keys.doubleQuote;

        # ${phys.h} = keys.comma;
        # ${phys.j} = keys.period;
        # ${phys.k} = keys.lessThan;
        # ${phys.l} = keys.greaterThan;

        # ${phys.n} = keys.slash;
        # ${phys.m} = keys.question;
        # ${phys.comma} = keys.slash;
        # ${phys.period} = keys.question;
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
    physical = {
      # en_US basic
      tap = [keys.ph];
      hold = [keys.ph];
      sticky = [keys.ph];
    };
    default = {
      tap = [keys.ph];
      hold = [keys.ph];
      sticky = [keys.ph];
    };
    number = {
      tap = [keys.ph];
      hold = [keys.ph];
      sticky = [keys.ph];
    };
    parentheses = {
      tap = [keys.ph];
      hold = [keys.ph];
      sticky = [keys.ph];
    };
    asciiSpecial = {
      tap = [keys._0];
      hold = [keys.semicolon];
      sticky = [keys.ph];
    };
    unicodeFavorites = {
      tap = [keys.ph];
      hold = [keys.ph];
      sticky = [keys.ph];
    };
    international = {
      tap = [keys.ph];
      hold = [keys.ph];
      sticky = [keys.ph];
    };
    cyrillic = {
      tap = [keys.ph];
      hold = [keys.ph];
      sticky = [keys.ph];
    };
  };
  simpleRemaps = {
    ${phys.escape} = commands.capsLock;
    ${phys.capsLock} = commands.escape;
    ${phys._1} = commands.ph;
    ${phys._2} = commands.super;
    ${phys._3} = commands.alt; # for terminal navigation
    ${phys._4} = commands.ph;
    ${phys._5} = commands.ph;
    ${phys._6} = commands.ph;
    ${phys._7} = commands.ph;
    ${phys._8} = commands.ph;
    ${phys._9} = commands.alt;
    ${phys._0} = commands.super;

    ${phys.printScreen} = commands.ph;
    ${phys.scrollLock} = commands.ph;
    ${phys.pause} = commands.ph;
    ${phys.insert} = commands.ph;
    ${phys.delete} = commands.ph;
    ${phys.home} = commands.ph;
    ${phys.end} = commands.ph;
    ${phys.pageUp} = commands.ph;
    ${phys.numLock} = commands.ph;
    ${phys.numSlash} = commands.ph;
    ${phys.numAsterisk} = commands.ph;
    ${phys.numHyphen} = commands.ph;
    ${phys.num1} = commands.ph;
    ${phys.num2} = commands.ph;
    ${phys.num3} = commands.ph;
    ${phys.num4} = commands.ph;
    ${phys.num5} = commands.ph;
    ${phys.num6} = commands.ph;
    ${phys.num7} = commands.ph;
    ${phys.num8} = commands.ph;
    ${phys.num9} = commands.ph;
    ${phys.num0} = commands.ph;
    ${phys.numPeriod} = commands.ph;
    ${phys.numReturn} = commands.ph;
    ${phys.numPlus} = commands.ph;
    ${phys.ph} = commands.ph;
  };
  hybridModifiers = {
    "${phys.capsLock}" = {
      tap = sem.escape;
      hold = sem.ctrl;
    };
    "${phys._1}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys._2}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys._3}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys._4}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys._5}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys._6}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys._7}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys._8}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys._9}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.backtick}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.hyphen}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.equals}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.leftSquareBracket}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.rightSquareBracket}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.backslash}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.semicolon}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.singleQuote}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.comma}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.period}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.slash}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.tab}" = {
      tap = sem.tab;
      hold = sem.ph;
    };
    "${phys.insert}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.home}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.pageUp}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.delete}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.end}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.pageDown}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f1}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f2}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f3}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f4}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f5}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f6}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f7}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f8}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f9}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f10}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f11}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.f12}" = {
      tap = sem.ph;
      hold = sem.ph;
    };
    "${phys.ph}" = {
      tap = sem.ph;
      hold = sem.ph;
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
    "${keys.p}${keys.q}" = {};
  };

  move = {
  };
  modModifier = {
    sideEffect = keys.shift;
  };
  sem = {
    kill = keys.q;
    killPart = keys.backslash;
    # copy = keys.c;
    # paste = keys.v;
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
    left = keys.h;
    down = keys.j;
    up = keys.k;
    right = keys.l;
    downOrLeftAlt = keys.leftSquareBracket;
    upOrRightAlt = keys.rightSquareBracket;
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
