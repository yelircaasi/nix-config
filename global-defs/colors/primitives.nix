rec {
  # color hue alias layer =======================================================
  blueDim = "#87CEEB"; #"#8AAFB4";
  blueNormal = "#2196F3";
  blueDarker = "#13446C";

  lightGray = "#D3D3D3";

  Normal = "";
  Dim = "";

  darkGreen1 = "#000800";
  darkGreen2 = "#002000";
  darkGreen3 = "#003000";

  #purple = "#8B008B";
  mellowPurple = "#B087B8";

  gray = "#808080";

  greenPale = "#20A45A"; # "#8C997E";
  greenPaleBright = "#3CB371";

  yellowPale = "#CBC383";
  goldDull = "#96883E";
  dimmedTeal = "#3A766C";
  dijon = "#69541F";
  darkSalmon = "#E9967A";

  silver = "#C0C0C0";
  maroon = "#800000";
  darkMahogany = "#482029";
  reddishBrown = "#5a130c";

  myBlack = darkGreen1;
  myBlackBright = darkGreen2;
  myRed = "#3f0d08";
  myRedBright = "#51110b";
  myGreen = "#246b44";
  myGreenBright = "#3cb371";
  myYellow = "#b7b076";
  myYellowBright = "#d0c98f";
  myBlue = "#13446c";
  myBlueBright = "#426989";
  myMagenta = "#6f006f";
  myMagentaBright = "#a233a2";
  myCyan = "#1e87db";
  myCyanBright = "#37a1f4";
  myWhite = "#9a9a9a";
  myWhiteBright = "#cdcdcd";

  # colorscheme definitiion layer ===============================================

  # base - follows the general base16 structure ---------------------------------
  base00 = "#000800"; # "#031A16"; # background
  base01 = "#002000"; # "#051C17"; # lighter background
  base02 = "#061E18"; # selection background
  base03 = darkMahogany; # comments, invisibles, line highlighting
  base04 = blueDarker; # dark foreground (used for status bars)
  base05 = gray; # default foreground, caret, delimiters, operators
  base06 = silver; # light foreground (not often used)
  base07 = greenPale; # light background (not often used)
  base08 = mellowPurple; # variables, xml tags, markup link text, markup lists, diff deleted
  base09 = darkSalmon; # integers, boolean, constants, xml attributes, markup link url
  base0A = reddishBrown; # classes, Markup Bold, Search Text Background
  base0B = blueDarker; # strings, inherited class, markup code, diff inserted
  base0C = "#963E4C"; # support, regular expressions, escape characters, markup quotes
  base0D = "#96883E"; # functions, methods, attribute ids, headings
  base0E = dijon; # keywords, storage, selector, markup italic, diff changed
  base0F = maroon; # deprecated, opening/closing embedded language tags, e.g. <?php ?>

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
}
