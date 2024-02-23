{lib}: let
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
  base01 = "#002000"; # "#0B342D"; # lighter background
  base02 = "#184E45"; # selection background
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
  #
in rec {
  # semantic alias layer ---------------------------------------------------------
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

  special = darkMahogany;
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
  # refer to: https://neovim.io/doc/user/lsp_html
  #           https://neovim.io/doc/user/syntax.html
  #           https://gist.github.com/swarn/fb37d9eefe1bc616c2a7e476c0bc0316
  #           https://github.com/nvim-treesitter/nvim-treesitter/blob/master/README.md
  #------------------------------------------------- Terminal colors
  terminalColor00 = myBlack; # black
  terminalColor01 = myRed; # red
  terminalColor02 = myGreen; # green
  terminalColor03 = myYellow; # yellow
  terminalColor04 = myBlue; # blue
  terminalColor05 = myMagenta; # purple
  terminalColor06 = myCyan; # cyan
  terminalColor07 = myWhite; # white (light gray)
  terminalColor08 = myBlackBright; # gray
  terminalColor09 = myRedBright; # bright red
  terminalColor0A = myGreenBright; # bright green
  terminalColor0B = myYellowBright; # bright yellow
  terminalColor0C = myBlueBright; # bright blue
  terminalColor0D = myMagentaBright; # bright purple (magenta)
  terminalColor0E = myCyanBright; # bright cyan
  terminalColor0F = myWhiteBright; # bright white

  #------------------------------------------------------------------------------- currently being used; need to refactor
  # nvim_NormalFloat = bg;
  # nvim_NeoTreeEndOfBufferBg = bg;
  # nvim_NeoTreeEndOfBufferFg = bg;
  # nvim_NeoTreeNormal = bg;
  # nvim_NeoTreeNormalNC = bg;
  # nvim_NeoTreeWinSeparator = bg;
  # nvim_NeoTreeVertSplit = "#900000";
  # nvim_Terminal = bg;

  nvim = {
    Normal = {inherit fg bg;};
    NormalFloat = {inherit fg bg;};
    NormalNC = {inherit fg bg;};

    # Special = {fg = special;};
    # CursorLine = {bg = bgAccent;};

    Identifier = {fg = identifier;};
    at_variable = {fg = variable;};
    Function = {fg = function;};
    Statement = {fg = statement;};
    Directory = {fg = directory;};
    String = {fg = string;};
    Comment = {fg = comment;};
    PreProc = {fg = preproc;};
    Operator = {fg = operator;};
    Delimiter = {fg = delimiter;};
    NeotreeFileName = {fg = filename;};

    Search = {
      fg = "#8AA88A";
      bg = "#003600";
    };
    CurSearch = {
      fg = "#809880";
      bg = "#002600";
    };
    StatusLine = {
      fg = "#809880"; #"#0D0600"; #"#000a00";
      bg = "#111211"; #"#202328"; #"#809880";
    };
    StatusLineNC = {
      fg = nvim.StatusLine.fg; #"#0D0600"; #"#000a00";
      bg = nvim.StatusLine.bg; #"#202328"; #"#809880";
    };
    Visual = {
      fg = "#061815";
      bg = "#0d8f77";
    };
    Folded = {
      inherit fg;
      bg = "#001300";
    };
    DiffAdd = {
      fg = "#668366";
      bg = "#002200";
    };
    DiffChange = {
      fg = "#7f86f3";
      bg = "#050a58";
    };
    DiffDelete = {
      fg = "#d5776f";
      bg = "#380905";
    };
    DiffText = {
      fg = "#050a58";
      bg = "#7f86f3";
    };
    Pmenu = {
      fg = "#505ad6";
      bg = "#000800";
    };
    PmenuSel = {
      fg = "#737df1";
      bg = "#002600";
    };
    PmenuThumb = {
      fg = "#888888";
      bg = "#777777";
    };
    CursorColumn = {bg = "#000e00";};
    CursorLine = {bg = "#000e00";};
    ColorColumn = {bg = "#9b73f1";};
    WinBar = {
      fg = "#dddddd";
      inherit bg;
    };
    WinBarNC = {
      fg = "#dddddd";
      inherit bg;
    };
    FloatShadow = {bg = "#002600";};
    FloatShadowThrough = {bg = "#118811";};
    MatchParen = {
      fg = "#180322";
      bg = "#51136e";
    };
    RedrawDebugClear = {bg = "#dddddd";};
    RedrawDebugComposed = {bg = "#dddddd";};
    RedrawDebugRecompose = {bg = "#dddddd";};
    Error = {
      fg = error;
      inherit bg;
    };

    SpecialKey = {fg = "#491d5e";};
    NonText = {fg = nvim.StatusLine.bg;
    # "#191d4c";};
    };
    ErrorMsg = {fg = error;};
    MoreMsg = {fg = "#1db6c5";};
    ModeMsg = {fg = "#376808";};
    LineNr = {
      fg = "#333833"; # "#002b00";
    };
    VertSplit = {
      fg = nvim.StatusLine.bg; # "#002b00";
      inherit bg;
    };
    WinSeparator = {
      fg = nvim.StatusLine.bg; # "#002b00";
      inherit bg;
    };
    Question = {fg = "#402967";};
    WarningMsg = {fg = warn;};
    SignColumn = {fg = "#1b8984";};
    Conceal = {inherit fg bg;};
    QuickFixLine = {fg = "#A30101";};
    Special = {fg = "#49125e";};
    DiagnosticError = {fg = error;};
    DiagnosticFloatingWarn = {fg = warn;};
    DiagnosticWarn = {fg = warn;};
    DiagnosticFloatingInfo = {fg = info;};
    DiagnosticInfo = {fg = info;};
    DiagnosticFloatingHint = {fg = hint;};
    DiagnosticHint = {fg = hint;};
    DiagnosticFloatingOk = {fg = info;};
    DiagnosticOk = {fg = info;};
    Added = {fg = "#368366";};
    at_diff_minus = {fg = "#d5776f";};
    Removed = {fg = "#d5776f";};
    Changed = {fg = "#7f86f3";};
    CmpItemAbbrDeprecatedDefault = {fg = "#ffffff";};
    CmpItemKindDefault = {fg = "#eeeeee";};

    RainbowDelimiter1 = "#2b1400";
    RainbowDelimiter2 = "#4f473b";
    RainbowDelimiter3 = "#381900";
    RainbowDelimiter4 = "#726c62";
    RainbowDelimiter5 = "#51331a";
    RainbowDelimiter6 = "#959189";
    RainbowDelimiter7 = "#78604d";

    statusline = {
    };
  };
}
