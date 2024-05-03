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

  wezterm = {
    fg = "gray";
    bg = "#000a00";
    cursorBg = "#52ad70";
    cursorFg = "black";
    cursorBorder = "#52ad70";
    selectionFg = "black";
    selectionBg = "#fffacd";
    scrollbarThumb = "#222222";
    splitLine = "#444444";
    indexed136 = "#af8700";
    composeCursor = "orange";
    copyModeActiveHighlightBg = "#000000";
    copyModeActiveHighlightFg = "Black";
    copyModeInactiveHighlightBg = "#52ad70";
    copyModeInactiveHighlightFg = "White";
    quickSelectLabelBg = "peru";
    quickSelectLabelFg = "#ffffff";
    quickSelectMatchBg = "Navy";
    quickSelectMatchFg = "#ffffff";
  };
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

    icon = {
      json = null;
      html = "#DE8C92";
      css = "#61afef";
      js = null;
      ts = "#519ABA";
      kt = "#ffcb91";
      png = "#BD77DC";
      jpg = "#BD77DC";
      mp3 = "#C8CCD4";
      mp4 = "#C8CCD4";
      out = "#C8CCD4";
      dockerfile = "#b8b5ff";
      rb = "#ff75a0";
      vue = "#7eca9c";
      py = "#a7c5eb";
      toml = "#61afef";
      lock = "#DE6B74";
      zip = "#EBCB8B";
      xz = "#EBCB8B";
      deb = "#a3b8ef";
      rpm = "#fca2aa";
    };
    statusLine = {
      fg = "#455684"; #"#0D0600"; #"#000a00";
      bg = "#111211"; #"#202328"; #"#809880";
      yellow = "#8c5e26";
      cyan = "#004c4d";
      darkblue = "#11306e";
      green = "#445a26";
      orange = "#b35f00";
      violet = "#372b87";
      magenta = "#541a66";
      blue = "#0f67a3";
      red = "#720e13";
      nc = {
      fg = nvim.statusLine.fg; #"#0D0600"; #"#000a00";
      bg = nvim.statusLine.bg; #"#202328"; #"#809880";
    };
    };

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
      fg = nvim.statusLine.bg;
      # "#191d4c";};
    };
    ErrorMsg = {fg = p.error;};
    MoreMsg = {fg = "#1db6c5";};
    ModeMsg = {fg = "#376808";};
    LineNr = {
      fg = "#333833"; # "#002b00";
    };
    VertSplit = {
      fg = nvim.statusLine.bg; # "#002b00";
      inherit bg;
    };
    WinSeparator = {
      fg = nvim.statusLine.bg; # "#002b00";
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
  };
  emacs = {};
  idea = {};

  # widgets, bar, etc.
  waybar = {
    blinkRedBg = "#F28FAD";
    blinkRedFg = "#1A1826";
    bgWithTransparency = "rgba(0, 8, 0, 0.9)";
    workspaceFocusedBg = "#a7c080";
    workspaceFocusedFg = "#2b3339";
    workspaceUrgentFg = "#d8caac";
    workspaceHoverBg = "#d8caac";
    workspaceHoverFg = "#d8caac";
    tooltipBg = "#302D41";
    tooltipLabelFg = "#D9E0EE";
    memory = "#B5E8E0";
    cpu = "#F5C2E7";
    clock = "#D9E0EE";
    idleInhibitor = "#DDB6F2";
    temperature = "#96CDFB";
    backlight = "#F8BD96";
    pulseAudio = "#F5E0DC";
    network = "#ABE9B3";
    networkDisconnected = "#FFFFFF";
    windowFg = "#B5E8E0";
    customMusic = "#87c095";
  };
  ags = {};

  # cli
  bat = {};
  spotify-tui = {};

  # desktop environment theming framework
  gtk = {
    core = {
      fg = "#A7CEC8";
      bg = "#07221C";
      text = "#A7CEC8";
      base = "#061E18";
    };
    theme = {
      fg = "#D2E7E4"; #A7CEC8
      text = "#3E9688"; #A7CEC8
      bg = "#031A16"; #07221C
      base = "#082620"; #061E18
    };
    selected = {
      bg = "#3E7996"; #082620; unfocused: #082620
      fg = "#A7CEC8"; #D2E7E4; unfocused: #D2E7E4
    };
    insensitive = {
      bg = "#092A24"; #061E18
      fg = "#D2E7E4"; #082620
      base = "#A7CEC8"; #061E18
    };
    unfocused = {
      fg = "#A7CEC8"; #082620
      text = "#3E7996"; #A7CEC8
      bg = "#031A16"; #07221C
      base = "#031A16"; #061E18
    };
    borders = {
      normal = "#061E18"; #031A16
      unfocused = "#07221C"; #031A16
    };
    semantic = {
      success = "#3E965B"; #3E7996
      error = "#963E4C"; #963E4C
      warning = "#96883E"; #96883E
      test = "#3E4C96";
    };
    named = {
      strawberry100 = "#963e4c";
      strawberry300 = "#963e4c";
      strawberry500 = "#963e4c";
      strawberry700 = "#963e4c";
      strawberry900 = "#963e4c";
      orange100 = "#96883e";
      orange300 = "#96883e";
      orange500 = "#96883e";
      orange700 = "#963e4c";
      orange900 = "#963e4c";
      banana100 = "#96883e";
      banana300 = "#96883e";
      banana500 = "#96883e";
      banana700 = "#96883e";
      banana900 = "#96883e";
      lime100 = "#96883e";
      lime300 = "#4c963e";
      lime500 = "#4c963e";
      lime700 = "#4c963e";
      lime900 = "#4c963e";
      mint100 = "#3e965b";
      mint300 = "#4c963e";
      mint500 = "#4c963e";
      mint700 = "#4c963e";
      mint900 = "#4c963e";
      blueberry100 = "#3e7996";
      blueberry300 = "#3e7996";
      blueberry500 = "#3e7996";
      blueberry700 = "#3e4c96";
      blueberry900 = "#3e4c96";
      bubblegum100 = "#883e96";
      bubblegum300 = "#883e96";
      bubblegum500 = "#963e4c";
      bubblegum700 = "#963e4c";
      bubblegum900 = "#963e4c";
      grape100 = "#963e4c";
      grape300 = "#883e96";
      grape500 = "#883e96";
      grape700 = "#883e96";
      grape900 = "#883e96";
      cocoa100 = "#96883e";
      cocoa300 = "#96883e";
      cocoa500 = "#96883e";
      cocoa700 = "#96883e";
      cocoa900 = "#963e4c";
      silver100 = "#d2e7e4";
      silver300 = "#a7cec8";
      silver500 = "#082620";
      silver700 = "#082620";
      silver900 = "#07221c";
      slate100 = "#082620";
      slate300 = "#07221c";
      slate500 = "#07221c";
      slate700 = "#031a16";
      slate900 = "#031a16";
      black100 = "#07221c";
      black300 = "#07221c";
      black500 = "#051c17";
      black700 = "#031a16";
      black900 = "#000000";
    };
  };
  # https://gitlab.gnome.org/GNOME/nautilus/-/blob/main/src/resources/style.css
  # https://github.com/hugolabe/Wike/blob/caf8644d3251e5a1a1ae7269411cf082e1c5a9cb/data/gtk/style.css
  # https://github.com/tsujan/Kvantum
  # https://gitlab.gnome.org/GNOME/gedit/-/tree/master/gedit/resources/css
  kvantum = {};

  # gui file browsers
  thunar = {
    bg = "#031A16";
    sidebarBg = "#051C17";
    toolbarBg = "#031A16";
    toolbarFlatFg = "#A7CEC8";
    toolbarPathBarButton = "#A7CEC8";
    toolbarPathBarButtonBorder = "#031A16";
    toolbarPathBarButtonBg = "#051C17";
    toolbarPathBarButtonBorderRight = "#031A16";
    toolbarPathBarButtonHoverFg = "#082620";
    toolbarPathBarButtonChecked = "#D2E7E4";
    toolbarLocationToolbar = "#D2E7E4";
    # sidebarBg = "#031A16"; 
    sidebarFg = "#082620";
    selectedFg = "#D2E7E4";
    selectedBg = "rgba(129, 161, 193, 0.9)";
  };
  mucommander = {};
  pcmanfm = {};
  pcmanfm-qt = {};
  spacefm = {};
  nautilus = {};
  nemo = {};
  dolphin = {};
  filebrowser = {};

  # browsers
  qutebrowser = {
    completionCategoryBg0 = "#888888";
    completionCategoryBg1 = "#505050";
    completionCatBorderBottom = "black";
    completionCatBorderTop = "black";
    completionCatFg = "white";
    completionEvenBg = "#333333";
    completionFgA = "white";
    completionFgB = "white";
    completionFgC = "white";
    completionItemSelectedBg = "#e8c000";
    completionItemSelectedBorderBottom = "#bbbb00";
    completionItemSelectedBorderTop = "#bbbb00";
    completionItemSelectedFg = "black";
    completionItemSelectedMatchFg = "#ff4444";
    completionMatchFg = "#ff4444";
    completionOddBg = "#444444";
    completionScrolbarBg = "#333333";
    completionScrollbarFg = "white";
    contextmenuDisabledBg = null;
    contextmenuDisabledFg = null;
    contextmenuMenuBg = null;
    contextmenuMenuFg = null;
    contextmenuMenuSelectedBg = null;
    contextmenuMenuSelectedFg = null;
    downloadsBarFg = "black";
    downloadsErrorBg = "red";
    downloadsErrorFg = "white";
    downloadsStartBg = "#0000aa";
    downloadsStartFg = "white";
    downloadsStopBg = "#00aa00";
    downloadsStopFg = "white";
    downloadsSystemBg = "rgb";
    downloadsSystemFg = "rgb";
    hintsBg0 = "rgba(255, 247, 133, 0.8)";
    hintsBg1 = "rgba(255, 197, 66, 0.8)";
    hintsFg = "black";
    hintsBorder = "#E3BE23";
    hintsMatchFg = "green";
    keyhintBg = "rgba(0, 0, 0, 80%)";
    keyHintFg = "#FFFFFF";
    keyhintSuffixFg = "#FFFF00";
    messagesErrorBg = "red";
    messagesErrorFg = "white";
    messagesErrorBorder = "#bb0000";
    messagesInfoBg = "black";
    messagesInfoFg = "white";
    messagesInfoBorder = "#333333";
    messagesWarningBg = "darkorange";
    messagesWarningFg = "black";
    messagesWarningBorder = "#d47300";
    promptsBg = "#444444";
    promptsFg = "white";
    promptsBorder = "gray";
    promptsSelectedBg = "grey";
    promptsSelectedFg = "white";
    statusbarCaretBg = "purple";
    statusbarCaretFg = "white";
    statusbarCaretSelectionBg = "#a12dff";
    statusbarCaretSelectionFg = "white";
    statusbarCommandBg = "black";
    statusbarCommandFg = "white";
    statusbarCommandPrivateBg = "darkslategray";
    statusbarCommandPrivateFg = "white";
    statusbarInsertBg = "darkgreen";
    statusbarInsertFg = "white";
    statusbarNormalBg = "black";
    statusbarNormalFg = "white";
    statusbarPassthroughBg = "darkblue";
    statusbarPassthroughFg = "white";
    statusbarPrivateBg = "#666666";
    statusbarPrivateFg = "white";
    statusbarProgressBg = "white";
    statusbarUrlErrorFg = "orange";
    statusbarUrlFg = "white";
    statusbarUrlHoverFg = "aqua";
    statusbarUrlSuccessHttpFg = "white";
    statusbarUrlSuccessHttpsFg = "lime";
    statusbarUrlWarnFg = "yellow";
    tabsBarBg = "#555555";
    tabsEvenBg = "darkgrey";
    tabsEvenFg = "white";
    tabsIndicatorError = "#ff0000";
    tabsIndicatorStart = "#0000aa";
    tabsIndicatorStop = "#00aa00";
    tabsIndicatorSystem = "hsl";
    tabsOddBg = "grey";
    tabsOddFg = "white";
    tabsPinnedEvenBg = "darkseagreen";
    tabsPinnedEvenFg = "white";
    tabsPinnedOddBg = "seagreen";
    tabsPinnedOddFg = "white";
    tabsPinnedSelectedEvenBg = "black";
    tabsPinnedSelectedEvenFg = "white";
    tabsPinnedSelectedOddBg = "black";
    tabsPinnedSelectedOddFg = "white";
    tabsSelectedEvenBg = "black";
    tabsSelectedEvenFg = "white";
    tabsSelectedOddBg = "black";
    tabsSelectedOddFg = "white";
    tooltipBg = null;
    tooltipFg = null;
    webpageBg = "white";
    webpageDarkmodeAlgorithm = "lightness-cielab";
    webpageDarkmodeContrast = "0.0";
    webpageDarkmodePolicyImages = "smart";
    webpageDarkmodePolicyPage = "smart";
    webpageDarkmodeThresholdBg = "0";
    webpageDarkmodeThresholdFg = "256";
    webpagePreferredColorTheme = "auto";
  };
  nyxt = {};
  ungoogled-chromium = {};
  luakit = {};
  vimb = {};
  vieb = {
    bg = "#333333";
    fg = "#eeeeee";
    tabBackground = "#444444";
    tabSuspended = "#000000";
    visibleTab = "#666666";
    tabSplit = "#ff9900";
    tabAudio = "#0099ff";
    tabMuted = "#ffffff";
    tabMutedPlaying = "#ffff33";
    tabCrashed = "#ff0000";
    # tabUnresponsive: var(--tab-crashed);
    tabScrollbar = "#55ffff";
    containerBackground = null;
    modeNormalFg = "#eeeeee";
    modeNormalBg = null;
    modeCommandFg = "#ff3333";
    modeCommandBg = null;
    modeInsertFg = "#33ff33";
    modeInsertBg = null;
    modeFollowFg = "#ff33ff";
    modeFollowBg = null;
    modeExploreFg = "#33ffff";
    modeExploreBg = null;
    modeSearchFg = "#ffff33";
    modeSearchBg = null;
    modePointerFg = "#777777";
    modePointerBg = "#ffffff";
    modeVisualFg = "#000000";
    modeVisualBg = "#33aaff";
    urlDefault = "#666666";
    urlSearch = "#ff9900";
    urlSearchwords = "#ffccff";
    urlUrl = "#33ffff";
    urlSuggest = "#33ff33";
    urlFile = "#ffff99";
    urlInvalid = "#ff3333";
    followText = "#111111";
    followUrlBg = "#bbffff";
    followUrlBorder = "#77dddd";
    followUrlHover = "#7dd7";
    followClickBg = "#ffbbbb";
    followClickBorder = "#dd7777";
    followClickHover = "#d777";
    followInsertBg = "#bbffbb";
    followInsertBorder = "#77dd77";
    followInsertHover = "#7d77";
    followOnclickBg = "#ffffbb";
    followOnclickBorder = "#dddd77";
    followOnclickHover = "#dd77";
    followMediaBg = "#bbbbff";
    followMediaBorder = "#7777dd";
    followMediaHover = "#77d7";
    followImageBg = "#ffbbff";
    followImageBorder = "#dd77dd";
    followImageHover = "#d7d7";
    followOtherBg = "#dddddd";
    followOtherBorder = "#bbbbbb";
    followOtherHover = "#bbb7";
    suggestionsBorder = "#777777";
    suggestionsBg = "#444444";
    suggestionsSelected = "#666666";
    suggestionsSearchwords = "#ffccff";
    suggestionsUrl = "#bbffff";
    suggestionsFile = "#ffffbb";
    notificationBorder = "#111111";
    notificationDate = "#aaaaaa";
    notificationPermission = "#aaaaaa";
    # notificationDialog: var(--notification-permission);
    notificationError = "#ff3333";
    notificationWarning = "#ffdd00";
    notificationInfo = "#00ccff";
    notificationSuccess = "#33ff33";
    urlHoverFg = "#000000";
    urlHover-Bg = "#fff9";
    screenshotHighlight = "#ff9900";
    screenshotHighlightBackground = "#f907";
    linkColor = "#00ccff";
    linkUnderline = "#005599";
    scrollbarBg = "#444444";
    scrollbarThumb = "#bbb9";
    buttonDisabled = "#999999";
    codeFg = "#ffffff";
    codeBg = "#111111";
    codeCommand = "#ff8888";
    placeholderText = "#cccccc";
    specialPageElementBg = "#444444";
    specialPageElementBorder = "#222222";
    inputUnfocused = "#666666";
    inputFocused = "#aaaaaa";
    downloadProgressFg = "#cccccc";
    downloadProgressBg = "#666666";
    helppageH1 = "#dd3333";
    helppageH2 = "#ff7766";
    helppageH3 = "#ffbb99";
    helppageCountable = "#ffcc00";
    helppageRangeCompat = "#ffcc00";
    helppageNativethemeFgLight = "#aaaaaa";
    helppageNativethemeBgLight = "#ffffff";
    helppageNativethemeFgDark = "#666666";
    helppageNativethemeBgDark = "#000000";
    # historyCurrentPageHighlight: var(--helppage-h1);
    # syntaxFg: var(--fg);
    # syntaxBg: var(--bg);
    syntaxKeyword = "#ff7777";
    syntaxEntity = "#ddaaff";
    syntaxConstant = "#88ccff";
    syntaxString = "#aaddff";
    syntaxVariable = "#ffaa55";
    syntaxComment = "#8899aa";
    syntaxEntityTag = "#88ee88";
    syntaxMarkupHeading = "#2277ee";
    syntaxMarkupList = "#ffcc66";
    syntaxMarkupEmphasis = "#ccddee";
    syntaxMarkupAdditionFg = "#bbffbb";
    syntaxMarkupAdditionBg = "#004411";
    syntaxMarkupDeletionFg = "#ffdddd";
    syntaxMarkupDeletionBg = "#660000";
    # failedloadMain-Bg: var(--tab-background);
    # filebrowserMain-Bg: var(--failedload-main-bg);
    # filebrowserDir: var(--suggestions-file);
    # filebrowserFile: var(--suggestions-url);
    # filebrowserBreadcrumb: var(--suggestions-url);
    # filebrowserError: var(--notification-error);
    pointer0 = "#f007";
    pointer17 = "#ff07";
    pointer33 = "#0f07";
    pointer49 = "#0ff7;";
    pointer66 = "#00f7";
    pointer83 = "#f0f7";
    pointer100 = "#f007";
  };
}
