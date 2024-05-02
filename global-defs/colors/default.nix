{lib}: let
  p = import ./primitives.nix;
  #
in rec {
  # semantic alias layer ---------------------------------------------------------
  # refer to: https://neovim.io/doc/user/lsp_html
  #           https://neovim.io/doc/user/syntax.html
  #           https://gist.github.com/swarn/fb37d9eefe1bc616c2a7e476c0bc0316
  #           https://github.com/nvim-treesitter/nvim-treesitter/blob/master/README.md
  #------------------------------------------------- Terminal colors
  terminalColor00 = p.myBlack; # black
  terminalColor01 = p.myRed; # red
  terminalColor02 = p.myGreen; # green
  terminalColor03 = p.myYellow; # yellow
  terminalColor04 = p.myBlue; # blue
  terminalColor05 = p.myMagenta; # purple
  terminalColor06 = p.myCyan; # cyan
  terminalColor07 = p.myWhite; # white (light gray)
  terminalColor08 = p.myBlackBright; # gray
  terminalColor09 = p.myRedBright; # bright red
  terminalColor0A = p.myGreenBright; # bright green
  terminalColor0B = p.myYellowBright; # bright yellow
  terminalColor0C = p.myBlueBright; # bright blue
  terminalColor0D = p.myMagentaBright; # bright purple (magenta)
  terminalColor0E = p.myCyanBright; # bright cyan
  terminalColor0F = p.myWhiteBright; # bright white

  #------------------------------------------------------------------------------- currently being used; need to refactor
  # nvim_NormalFloat = bg;
  # nvim_NeoTreeEndOfBufferBg = bg;
  # nvim_NeoTreeEndOfBufferFg = bg;
  # nvim_NeoTreeNormal = bg;
  # nvim_NeoTreeNormalNC = bg;
  # nvim_NeoTreeWinSeparator = bg;
  # nvim_NeoTreeVertSplit = "#900000";
  # nvim_Terminal = bg;
  inherit (p) bg fg;

  # ide
  nvim = {
    #=UI Backgrounds========================================================================================================
    #=Syntax================================================================================================================
    #=UI Syntax-like (Status Bar, File Explorer, Search, etc.)======================================================================
    #=UI Lines==============================================================================================================
    #=Coding Utils and Navigation===========================================================================================
    #=======================================================================================================================
    #=======================================================================================================================
    #=======================================================================================================================
    #=======================================================================================================================

    Normal = {inherit fg bg;};
    NormalFloat = {inherit fg bg;};
    NormalNC = {inherit fg bg;};

    # Special = {fg = special;};
    # CursorLine = {bg = bgAccent;};

    Identifier = {fg = p.identifier;};
    at_variable = {fg = p.variable;};
    Function = {fg = p.function;};
    Statement = {fg = p.statement;};
    Directory = {fg = p.directory;};
    String = {fg = p.string;};
    Comment = {fg = p.comment;};
    PreProc = {fg = p.preproc;};
    Operator = {fg = p.operator;};
    Delimiter = {fg = p.delimiter;};
    NeotreeFileName = {fg = p.filename;};

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
      fg = p.error;
      inherit bg;
    };

    SpecialKey = {fg = "#491d5e";};
    NonText = {
      fg = nvim.StatusLine.bg;
      # "#191d4c";};
    };
    ErrorMsg = {fg = p.error;};
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
    WarningMsg = {fg = p.warn;};
    SignColumn = {fg = "#1b8984";};
    Conceal = {inherit fg bg;};
    QuickFixLine = {fg = "#A30101";};
    Special = {fg = "#49125e";};
    DiagnosticError = {fg = p.error;};
    DiagnosticFloatingWarn = {fg = p.warn;};
    DiagnosticWarn = {fg = p.warn;};
    DiagnosticFloatingInfo = {fg = p.info;};
    DiagnosticInfo = {fg = p.info;};
    DiagnosticFloatingHint = {fg = p.hint;};
    DiagnosticHint = {fg = p.hint;};
    DiagnosticFloatingOk = {fg = p.info;};
    DiagnosticOk = {fg = p.info;};
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
  emacs = {};
  idea = {};

  # widgets, bar, etc.
  waybar = {};
  ags = {};

  # cli
  bat = {};
  spotify-tui = {};

  # desktop environment theming framework
  gtk = {
    theme = {
      fg = "#D2E7E4";
      text = "#3E9688";
      bg = "#031A16";
      base = "#082620";
    };
    selected = {
      bg = "#3E7996";
      fg = "#A7CEC8";
    };
    insensitive = {
      bg = "#092A24";
      fg = "#D2E7E4";
      base = "#A7CEC8";
    };
    unfocused = {
      fg = "#A7CEC8";
      text = "#3E7996";
      bg = "#031A16";
      base = "#031A16";
    };
    borders = {
      normal = "#061E18";
      unfocused = "#07221C";
    };
    semantic = {
      success = "#3E965B";
      error = "#963E4C";
      warning = "#96883E";
      test = "#3E4C96";
    };
  };
  # https://gitlab.gnome.org/GNOME/nautilus/-/blob/main/src/resources/style.css
  # https://github.com/hugolabe/Wike/blob/caf8644d3251e5a1a1ae7269411cf082e1c5a9cb/data/gtk/style.css
  # https://github.com/tsujan/Kvantum
  # https://gitlab.gnome.org/GNOME/gedit/-/tree/master/gedit/resources/css
  kvantum = {};

  # gui file browsers
  thunar = {};
  mucommander = {};
  pcmanfm = {};
  pcmanfm-qt = {};
  spacefm = {};
  nautilus = {};
  nemo = {};
  dolphin = {};
  filebrowser = {};

  # browsers
  qutebrowser = {};
  nyxt = {};
  ungoogled-chromium = {};
  luakit = {};
  vimb = {};
  vieb = {};
}
