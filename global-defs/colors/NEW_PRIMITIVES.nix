rec {
  namedHues = {
    blueDim = "#87CEEB"; #"#8AAFB4";
    blueNormal = "#2196F3";
    blueDarker = "#13446C";

    darkGreen1 = "#000800";
    darkGreen2 = "#002000";
    darkGreen3 = "#003000";
    greenPale = "#20A45A"; # "#8C997E";
    greenPaleBright = "#3CB371";
    mysteriousGreen = "#061E18";

    mutedRed = "#963E4C";

    purple = "#8B008B";
    mellowPurple = "#B087B8";

    gray = "#808080";
    lightGray = "#D3D3D3";

    yellowPale = "#CBC383";
    goldDull = "#96883E";
    dimmedTeal = "#3A766C";
    dijon = "#69541F";

    darkSalmon = "#E9967A";

    silver = "#C0C0C0";

    maroon = "#800000";
    darkMahogany = "#482029";
    reddishBrown = "#5a130c";

    apathyDark00 = "#031A16";
    apathyDark01 = "#0B342D";
    apathyDark02 = "#184E45";
    apathyDark03 = "#2B685E";
    apathyDark04 = "#5F9C92";
    apathyDark05 = "#81B5AC";
    apathyDark06 = "#A7CEC8";
    apathyDark07 = "#D2E7E4";
    apathyDarkCyan = "#3E9688";
    apathyDarkBlue = "#3E7996";
    apathyDarkPurple = "#3E4C96";
    apathyDarkMagenta = "#883E96";
    apathyDarkRed = "#963E4C";
    apathyDarkGold = "#96883E";
    apathyDarkBrightGreen = "#4C963E";
    apathyDarkLessBrightGreen = "#3E965B";

    apathyDarkBackground = "#031A16";
    apathyDarkForeground = "#81B5AC";
    apathyDarkCursorBackground = "#81B5AC";
    apathyDarkCursorForeground = "#81B5AC";
    apathyDarkAnsiBlack = "#031A16";
    apathyDarkAnsiBlue = "#96883E";
    apathyDarkAnsiBlackBright = "#2B685E";
    apathyDarkAnsiBlueBright = "#96883E";
    apathyDarkAnsiCyan = "#963E4C";
    apathyDarkAnsiCyanBright = "#963E4C";
    apathyDarkAnsiGreen = "#883E96";
    apathyDarkAnsiGreenBright = "#883E96";
    apathyDarkAnsiMagenta = "#4C963E";
    apathyDarkAnsiMagentaBright = "#4C963E";
    apathyDarkAnsiRed = "#3E9688";
    apathyDarkAnsiRedBright = "#3E9688";
    apathyDarkAnsiWhite = "#81B5AC";
    apathyDarkAnsiWhiteBright = "#D2E7E4";
    apathyDarkAnsiYellow = "#3E4C96";
    apathyDarkAnsiYellowBright = "#3E4C96";
  };

  theme = with namedHues; {
    name = "apathy dark";

    base16 = {
      base00 = apathyDark00; # "#031A16"; # background
      base01 = apathyDark01; # "#051C17"; # lighter background
      base02 = apathyDark02; # selection background
      base03 = apathyDark03; # comments, invisibles, line highlighting
      base04 = apathyDark04; # dark foreground (used for status bars)
      base05 = apathyDark05; # default foreground, caret, delimiters, operators
      base06 = apathyDark06; # light foreground (not often used)
      base07 = apathyDark07; # light background (not often used)
      base08 = apathyDarkRed; # red     variables, xml tags, markup link text, markup lists, diff deleted
      base09 = goldDull; # orange  integers, boolean, constants, xml attributes, markup link url
      base0A = apathyDarkGold; # yellow  classes, Markup Bold, Search Text Background
      base0B = apathyDarkBrightGreen; # green   strings, inherited class, markup code, diff inserted
      base0C = apathyDarkCyan; # cyan    support, regular expressions, escape characters, markup quotes
      base0D = apathyDarkBlue; # blue    functions, methods, attribute ids, headings
      base0E = apathyDarkMagenta; # magenta keywords, storage, selector, markup italic, diff changed
      base0F = apathyDarkPurple; # purple  deprecated, opening/closing embedded language tags, e.g. <?php ?>
    };

    ansi = {
      background = apathyDarkBackground;
      foreground = apathyDarkForeground;
      cursorBackground = apathyDarkCursorBackground;
      cursorForeground = apathyDarkCursorForeground;

      black = apathyDarkAnsiBlack;
      blackBright = apathyDarkAnsiBlackBright;
      blue = apathyDarkAnsiBlue;
      blueBright = apathyDarkAnsiBlueBright;
      cyan = apathyDarkAnsiCyan;
      cyanBright = apathyDarkAnsiCyanBright;
      green = apathyDarkAnsiGreen;
      greenBright = apathyDarkAnsiGreenBright;
      magenta = apathyDarkAnsiMagenta;
      magentaBright = apathyDarkAnsiMagentaBright;
      red = apathyDarkAnsiRed;
      redBright = apathyDarkAnsiRedBright;
      white = apathyDarkAnsiWhite;
      whiteBright = apathyDarkAnsiWhiteBright;
      yellow = apathyDarkAnsiYellow;
      yellowBright = apathyDarkAnsiYellowBright;
    };

    semantic = {};
  };

  # ======== OLD BENEATH THIS LINE ================================================
  _BASE16REFERENCE = {
    base00 = "#000000"; # Black
    base01 = "#121212"; # Dark Gray 1
    base02 = "#1c1c1c"; # Dark Gray 2
    base03 = "#262626"; # Dark Gray 3
    base04 = "#3a3a3a"; # Gray 1
    base05 = "#444444"; # Gray 2
    base06 = "#4e4e4e"; # Light Gray 1
    base07 = "#5e5e5e"; # Light Gray 2
    base08 = "#ff0000"; # Red
    base09 = "#ff8700"; # Orange
    base0A = "#ffd700"; # Yellow
    base0B = "#00ff00"; # Green
    base0C = "#00ffff"; # Cyan
    base0D = "#0000ff"; # Blue
    base0E = "#d700ff"; # Magenta
    base0F = "#8700ff"; # Purple
  };

  OLD_BASE16_THEME = with namedHues; {
    base00 = darkGreen1; # "#031A16"; # background
    base01 = darkGreen2; # "#051C17"; # lighter background
    base02 = mysteriousGreen; # selection background
    base03 = darkMahogany; # comments, invisibles, line highlighting
    base04 = blueDarker; # dark foreground (used for status bars)
    base05 = gray; # default foreground, caret, delimiters, operators
    base06 = silver; # light foreground (not often used)
    base07 = greenPale; # light background (not often used)
    base08 = mellowPurple; # variables, xml tags, markup link text, markup lists, diff deleted
    base09 = darkSalmon; # integers, boolean, constants, xml attributes, markup link url
    base0A = reddishBrown; # classes, Markup Bold, Search Text Background
    base0B = blueDarker; # strings, inherited class, markup code, diff inserted
    base0C = mutedRed; # support, regular expressions, escape characters, markup quotes
    base0D = goldDull; # functions, methods, attribute ids, headings
    base0E = dijon; # keywords, storage, selector, markup italic, diff changed
    base0F = maroon; # deprecated, opening/closing embedded language tags, e.g. <?php ?>
  };

  LEGACY = {
    bg = base00;
    bgAccent = base01;
    bgSelection = base02;
    fg = base05;
    text = fg;
    defaultBorder = base01;

    dim = myGreen;
    dimmer = "#123622";
    dimmest = "#333933";
    bright = myRed;
    brighter = myGreen;
    brightest = myCyan;

    special = "#005664"; #darkMahogany;
    identifier = myBlueBright;
    variable = myBlue;
    function = brighter;
    statement = myRed;
    directory = myBlue;
    string = gray;
    comment = dimmest;
    preproc = dimmer;
    operator = dim;
    delimiter = dimmer;
    filename = myWhite;
    error = "#bd1dc5";
    warn = yellowPale;
    info = "#555555";
    hint = "#9b73f1";

    brightFromBackground = "";

    syntaxBrackets = dimmest;
    syntaxDelimiters = dimmest;
    syntaxKeywordDefault = brightFromBackground;

    # general
    windowBorder = defaultBorder;
    #lines-inactive = lib.colorAverage bg defaultBorder;
    lineSeparator = defaultBorder;
  };
}
