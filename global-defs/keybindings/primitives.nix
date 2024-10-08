let
  tmp = "placeholder";

  attrSetFrom1ValueNKeys = value: keyList: builtins.foldl' (a: b: a // b) {} (builtins.map (k: {"${builtins.toString k}" = value;}) keyList);
  attrSetFromFullSetAndKey = fullSet: value: attrSetFrom1ValueNKeys value fullSet.${value};
  foldAttrSets = attrSetList: builtins.foldl' (a: b: a // b) {} attrSetList;
  unpackCompact = compactSet: foldAttrSets (map (attrSetFromFullSetAndKey compactSet) (builtins.attrNames compactSet));
in rec {
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
    placeholder = "PLACEHOLDER";

    escape = "esc";
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
    printScreen = "printScreen";
    insert = "insert";
    delete = "delete";

    backtick = "backtick";
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
    hyphen = "hyphen";
    equals = "equals";
    backspace = "backspace";

    tab = "tab";
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
    leftSquareBracket = "leftSquareBracket";
    rightSquareBracket = "rightSquareBracket";
    backslash = "backslash";

    capsLock = "capsLock";
    a = "a";
    s = "s";
    d = "d";
    f = "f";
    g = "g";
    h = "h";
    j = "j";
    k = "k";
    l = "l";
    semicolon = "semicolon";
    singleQuote = "singleQuote";
    enter = "enter";

    lshift = "lshift";
    z = "z";
    x = "x";
    c = "c";
    v = "v";
    b = "b";
    n = "n";
    m = "m";
    comma = "comma";
    period = "period";
    slash = "slash";
    rshift = "rshift";

    lctrl = "lctrl";
    fn = "fn";
    super = "super";
    alt = "alt";
    space = "space";
    altGr = "altGr";
    rsuper = "rsuper";
    menu = "menu";
    rctrl = "rctrl";

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

    # insert = "insert";
    home = "home";
    end = "end";
    pageUp = "pageUp";
    pageDown = "pageDown";
    # delete = "delete";

    leftArrow = "leftArrow";
    rightArrow = "rightArrow";
    upArrow = "upArrow";
    downArrow = "downArrow";

    # printScreen = "printScreen";
    scrollLock = "scrollLock";
    pause = "pause";

    num0 = "num0";
    num1 = "num1";
    num2 = "num2";
    num3 = "num3";
    num4 = "num4";
    num5 = "num5";
    num6 = "num6";
    num7 = "num7";
    num8 = "num8";
    num9 = "num9";
    numLock = "numLock";
    numSlash = "numSlash";
    numAsterisk = "numAsterisk";
    numHyphen = "numHyphen";
    numPlus = "numPlus";
    numReturn = "numReturn";
    numPeriod = "numPeriod";
    # copy = "copy";
    # paste = "paste";
  };

  sem = {
    # enum-like attrset to ensure internal uniformity of key naming conventions
    none = "NONE";
    placeholder = "PLACEHOLDER";

    super = "super";
    alt = "alt";
    ctrl = "ctrl";
    lctrl = "lctrl";
    rctrl = "rctrl";
    altGr = "altGr";
    lsuper = "lsuper";
    rsuper = "rsuper";
    shift = "shift";
    lshift = "lshift";
    rshift = "rshift";
    tab = "tab";

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

    return = "return";
    space = "space";
    newline = "newline"; #                     "\n"
    carriageReturn = "carriageReturn"; #       "\r"
    tabulation = "tabulation"; #               "\t"
    backspace = "backspace";
    exclamationMark = "exclamationMark";
    at = "at";
    backtick = "backtick";
    tilde = "tilde";
    octothorpe = "octothorpe";
    dollar = "dollar";
    percent = "dollar";
    caret = "caret";
    ampersand = "ampersand";
    asterisk = "asterisk";
    leftParenthesis = "leftParenthesis";
    rightParenthesis = "rightParenthesis";
    hyphen = "hyphen";
    underscore = "underscore";
    equals = "equals";
    plus = "plus";
    singleQuote = "singleQuote";
    doubleQuote = "doubleQuote";
    semicolon = "semicolon";
    colon = "colon";
    leftSquareBracket = "leftSquareBracket";
    rightSquareBracket = "rightSquareBracket";
    leftCurlyBracket = "leftCurlyBracket";
    rightCurlyBracket = "rightCurlyBracket";
    backslash = "backslash";
    pipe = "pipe";
    comma = "comma";
    period = "period";
    slash = "slash";
    questionMark = "slash";
    lessThan = "lessThan";
    greaterThan = "greaterThan";

    escape = "escape";
    capsLock = "capsLock";

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

    insert = "insert";
    home = "home";
    end = "end";
    pageUp = "pageUp";
    pageDown = "pageDown";
    delete = "delete";

    leftArrow = "delete";
    rightArrow = "rightArrow";
    upArrow = "upArrow";
    downArrow = "upArrow";

    printScreen = "printScreen";
    scrollLock = "scrollLock";
    pause = "pause";

    num0 = "num0";
    num1 = "num1";
    num2 = "num2";
    num3 = "num3";
    num4 = "num4";
    num5 = "num5";
    num6 = "num6";
    num7 = "num7";
    num8 = "num8";
    num9 = "num9";
    numLock = "numLock";
    numSlash = "numSlash";
    numAsterisk = "numAsterisk";
    numHyphen = "numHyphen";
    numPlus = "numPlus";
    numReturn = "numReturn";
    numPeriod = "numPeriod";
    copy = "copy";
    paste = "paste";
  };

  keys = phys // sem; # TODO

  commands = keys; #commands = {placeholder = "placeholder";};  # TODO

  generalAssociationsRaw = {
    ${phys._0} = ["rightRingFingerMod"];
    ${phys._1} = [];
    ${phys._2} = ["leftRingFingerMod"];
    ${phys._3} = ["leftMiddleFingerMod"];
    ${phys._4} = ["leftIndexFingerMod"];
    ${phys._5} = [];
    ${phys._6} = [];
    ${phys._7} = [];
    ${phys._8} = ["rightIndexFingerMod"];
    ${phys._9} = ["rightMiddleFingerMod"];
    ${phys.a} = ["execute"];
    ${phys.alt} = [];
    ${phys.altGr} = [];
    ${phys.b} = [];
    ${phys.backslash} = ["killPart"];
    ${phys.backspace} = [];
    ${phys.backtick} = [];
    ${phys.c} = ["copy"];
    ${phys.capsLock} = [];
    ${phys.comma} = [];
    ${phys.d} = ["delete"];
    ${phys.e} = ["explore"];
    ${phys.enter} = ["enter"];
    ${phys.equals} = ["increase"];
    ${phys.escape} = [];
    ${phys.f} = ["fullscreen"];
    ${phys.f1} = ["help"];
    ${phys.f2} = [];
    ${phys.f4} = [];
    ${phys.f5} = [];
    ${phys.f6} = [];
    ${phys.f7} = [];
    ${phys.f8} = [];
    ${phys.f9} = [];
    ${phys.f10} = [];
    ${phys.f11} = [];
    ${phys.f12} = [];
    ${phys.fn} = [];
    ${phys.g} = [];
    ${phys.h} = ["left"];
    ${phys.hyphen} = ["decrease"];
    ${phys.i} = ["insertMode"];
    ${phys.j} = ["down"];
    ${phys.k} = ["up"];
    ${phys.l} = ["right"];
    ${phys.lctrl} = [];
    ${phys.leftSquareBracket} = ["downOrLeftOther"];
    ${phys.lshift} = [];
    ${phys.m} = ["hide"];
    ${phys.menu} = [];
    ${phys.n} = ["new"];
    ${phys.o} = ["open"];
    ${phys.p} = ["clear"]; # purge
    ${phys.period} = ["repeat"];
    ${phys.q} = ["kill"];
    ${phys.r} = ["reload"];
    ${phys.rctrl} = [];
    ${phys.rightSquareBracket} = ["upOrRightOther"];
    ${phys.rshift} = [];
    ${phys.rsuper} = [];
    ${phys.s} = [];
    ${phys.semicolon} = [];
    ${phys.singleQuote} = [];
    ${phys.slash} = ["search"];
    ${phys.space} = [];
    ${phys.super} = [];
    ${phys.t} = ["newPart"];
    ${phys.tab} = [];
    ${phys.u} = ["undo"];
    ${phys.v} = ["paste"];
    ${phys.w} = ["windowNavigation"];
    ${phys.x} = ["cut"];
    ${phys.y} = [];
    ${phys.z} = [];
  };

  generalAssociations = unpackCompact generalAssociationsRaw;

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
      tap = [keys.placeholder];
      hold = [keys.placeholder];
      sticky = [keys.placeholder];
    };
    default = {
      tap = [keys.placeholder];
      hold = [keys.placeholder];
      sticky = [keys.placeholder];
    };
    number = {
      tap = [keys.placeholder];
      hold = [keys.placeholder];
      sticky = [keys.placeholder];
    };
    parentheses = {
      tap = [keys.placeholder];
      hold = [keys.placeholder];
      sticky = [keys.placeholder];
    };
    asciiSpecial = {
      tap = [keys._0];
      hold = [keys.semicolon];
      sticky = [keys.placeholder];
    };
    unicodeFavorites = {
      tap = [keys.placeholder];
      hold = [keys.placeholder];
      sticky = [keys.placeholder];
    };
    international = {
      tap = [keys.placeholder];
      hold = [keys.placeholder];
      sticky = [keys.placeholder];
    };
    cyrillic = {
      tap = [keys.placeholder];
      hold = [keys.placeholder];
      sticky = [keys.placeholder];
    };
  };
  simpleRemaps = {
    ${phys.escape} = commands.capsLock;
    ${phys.capsLock} = commands.escape;
    ${phys._1} = commands.placeholder;
    ${phys._2} = commands.super;
    ${phys._3} = commands.alt; # for terminal navigation
    ${phys._4} = commands.placeholder;
    ${phys._5} = commands.placeholder;
    ${phys._6} = commands.placeholder;
    ${phys._7} = commands.placeholder;
    ${phys._8} = commands.placeholder;
    ${phys._9} = commands.alt;
    ${phys._0} = commands.super;

    ${phys.printScreen} = commands.placeholder;
    ${phys.scrollLock} = commands.placeholder;
    ${phys.pause} = commands.placeholder;
    ${phys.insert} = commands.placeholder;
    ${phys.delete} = commands.placeholder;
    ${phys.home} = commands.placeholder;
    ${phys.end} = commands.placeholder;
    ${phys.pageUp} = commands.placeholder;
    ${phys.numLock} = commands.placeholder;
    ${phys.numSlash} = commands.placeholder;
    ${phys.numAsterisk} = commands.placeholder;
    ${phys.numHyphen} = commands.placeholder;
    ${phys.num1} = commands.placeholder;
    ${phys.num2} = commands.placeholder;
    ${phys.num3} = commands.placeholder;
    ${phys.num4} = commands.placeholder;
    ${phys.num5} = commands.placeholder;
    ${phys.num6} = commands.placeholder;
    ${phys.num7} = commands.placeholder;
    ${phys.num8} = commands.placeholder;
    ${phys.num9} = commands.placeholder;
    ${phys.num0} = commands.placeholder;
    ${phys.numPeriod} = commands.placeholder;
    ${phys.numReturn} = commands.placeholder;
    ${phys.numPlus} = commands.placeholder;
    ${phys.placeholder} = commands.placeholder;
  };
  hybridModifiers = {
    "${phys.capsLock}" = {
      tap = sem.escape;
      hold = sem.ctrl;
    };
    "${phys._1}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys._2}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys._3}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys._4}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys._5}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys._6}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys._7}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys._8}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys._9}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.backtick}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.hyphen}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.equals}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.leftSquareBracket}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.rightSquareBracket}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.backslash}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.semicolon}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.singleQuote}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.comma}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.period}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.slash}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.tab}" = {
      tap = sem.tab;
      hold = sem.placeholder;
    };
    "${phys.insert}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.home}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.pageUp}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.delete}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.end}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.pageDown}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f1}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f2}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f3}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f4}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f5}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f6}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f7}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f8}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f9}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f10}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f11}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.f12}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
    };
    "${phys.placeholder}" = {
      tap = sem.placeholder;
      hold = sem.placeholder;
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

  desktop = let
    desktopMod = keys.super;
  in {
    compositor = rec {
      logoutMenu = {};
      launcher = {};
      lockScreen = {};
      killActive = {
        inherit desktopMod;
        base = generalAssociations.kill;
      };
      launch = {
        defaultTerminal = {};
        defaultBrowser = {};
        defaultFileBrowserGUI = {};
        defaultFileBrowserTUI = {};
        firefox = {
          mod = keys.placeholder;
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
  terminal = let
    terminalLeader = "placeholder";
    terminalNavigationKey = "placeholder";
    terminalStateChangeKey = "placeholder";
  in {
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
  ide = let
    ideLeader = "placeholder";
    ideNavigationKey = "placeholder";
    ideStateChangeKey = "placeholder";
  in {
    writeFile = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    writeAndQuit = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };

    # terminal
    openTerminal = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    closeTerminal = {};

    # file exploration
    openFileTree = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    closeFileTree = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    openFloatingFileBrowser = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    closeFloatingFileBrowser = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };

    # opening files
    openFileInSplitLeft = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    openFileInSplitRight = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    openFileInSplitAbove = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    openFileInSplitBelow = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };

    # navigation between files
    goToNextBuffer = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideNavigationKey];
        base = [phys.placeholder];
      };
    };
    goToPreviousBuffer = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder ideNavigationKey];
      };
    };
    goToNextTab = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder ideNavigationKey];
      };
    };
    goToPreviousTab = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder ideNavigationKey];
      };
    };
    goToWindowRight = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideNavigationKey];
        base = [phys.l];
      };
    };
    goToWindowLeft = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideNavigationKey];
        base = [phys.h];
      };
    };
    goToWindowAbove = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideNavigationKey];
        base = [phys.k];
      };
    };
    goToWindowBelow = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideNavigationKey];
        base = [phys.j];
      };
    };

    # layout modification
    closeCurrentBuffer = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    closeAllBuffers = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };

    resizeSplitLeft = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideStateChangeKey ideNavigationKey];
        base = [phys.h];
      };
    };
    resizeSplitRight = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideStateChangeKey ideNavigationKey];
        base = [phys.l];
      };
    };
    resizeSplitUp = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideStateChangeKey ideNavigationKey];
        base = [phys.k];
      };
    };
    resizeSplitDown = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideStateChangeKey ideNavigationKey];
        base = [phys.j];
      };
    };

    switchWindowWithRight = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified"; # if bare, then {base = [];}; if sticky, then {prefix = []; base = [];}; if mod, then {mod = []; base = [];};
      keys = {
        mod = [ideLeader ideStateChangeKey];
        base = [phys.l];
      };
      commandText = "";
    };
    switchWindowWithLeft = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideStateChangeKey];
        base = [phys.h];
      };
      commandText = "";
    };
    switchWindowWithBelow = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideStateChangeKey];
        base = [phys.j];
      };
      commandText = "";
    };
    switchWindowWithAbove = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader ideStateChangeKey];
        base = [phys.k];
      };
      commandText = "";
    };

    # code navigation
    goToDefinition = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    previewInstances = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    goToContainingSymbol = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    openPathUnderCursor = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };

    # quickfix
    openQuickfixWindow = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    goToIssue = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };

    # linting, formatting, testing, etc. and related navigation
    formatFullDirectory = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    lintFullDirectory = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    lintAndFormatFullDirectory = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    typeCheckFullDirectory = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    runAllTests = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    goToLintOrTestOutput = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    openFileFromLintOrTestOutput = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    incrementOrToggleValueUnderCursor = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    openLinkInBrowser = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    pickBuffer = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };

    # refactoring
    extractMethod = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    inlineMethod = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };

    # snippets
    openSnippetMenu = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };
    attemptReplaceWithSnippet = {
      description = "";
      scope = ["ide"];
      mode = ["normal"];
      type = "modified";
      keys = {
        mod = [ideLeader];
        base = [phys.placeholder];
      };
    };

    # autocomplete

    # code actions (first need to configure lspsaga)
    ## https://github.com/aznhe21/actions-preview.nvim
  };
}
