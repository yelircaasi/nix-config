{lib}: let
  # color hue alias layer =======================================================
  blueNormal = "";
  blueDim = "";
  blueBright = "";

  # colorscheme definitiion layer ===============================================

  # base - follows the general base16 structure ---------------------------------
  #base00 = "#000800"; # "#031A16"; # background
  #base01 = "#002000"; # "#0B342D"; # lighter background
  #base02 = "#184E45"; # selection background
  #base03 = "#2B685E"; # comments, invisibles, line highlighting
  #base04 = "#5F9C92"; # dark foreground (used for status bars)
  #base05 = "#81B5AC"; # default foreground, caret, delimiters, operators
  #base06 = "#A7CEC8"; # light foreground (not often used)
  #base07 = "#D2E7E4"; # light background (not often used)
  #base08 = "#3E9688"; # variables, xml tags, markup link text, markup lists, diff deleted
  #base09 = "#3E7996"; # integers, boolean, constants, xml attributes, markup link url
  #base0A = "#3E4C96"; # classes, Markup Bold, Search Text Background
  #base0B = "#883E96"; # strings, inherited class, markup code, diff inserted
  #base0C = "#963E4C"; # support, regular expressions, escape characters, markup quotes
  #base0D = "#96883E"; # functions, methods, attribute ids, headings
  #base0E = "#4C963E"; # keywords, storage, selector, markup italic, diff changed
  #base0F = "#3E965B"; # deprecated, opening/closing embedded language tags, e.g. <?php ?>

  # semantic alias layer ---------------------------------------------------------
  bg = base00;
  bgAccent = base01;
  bgSelection = base02;
  fg = base05;
  text = fg;
  defaultBorder = base01;

  dim = "";
  dimmer = "";
  dimmest = "";
  bright = "";
  brighter = "";
  brightest = "";

  brightFromBackground = "";
  
  syntaxBrackets = dimmest;
  syntaxDelimiters = dimmest;
  syntaxKeywordDefault = brightFromBackground;


  # general
  windowBorder = defaultBorder;
  #lines-inactive = lib.colorAverage bg defaultBorder;
  lineSeparator = defaultBorder;

  # refer to: https://neovim.io/doc/user/lsp.html
  #           https://neovim.io/doc/user/syntax.html
  #           https://gist.github.com/swarn/fb37d9eefe1bc616c2a7e476c0bc0316
  #           https://github.com/nvim-treesitter/nvim-treesitter/blob/master/README.md
in rec {
  #------------------------------------------------------------------------------- currently being used; need to refactor
  NormalFloat = bg;
  NeoTreeEndOfBufferBg = bg;
  NeoTreeEndOfBufferFg = bg;
  NeoTreeNormal = bg;
  NeoTreeNormalNC = bg;
  NeoTreeWinSeparator = bg;
  NeoTreeVertSplit = "#900000";
  Terminal = bg;

  #-------------------------------------------------Neovim default highlight groups
  SpecialKey     = "xxx ctermfg=81 guifg=Cyan";
  EndOfBuffer    = "xxx links to NonText";
  TermCursor     = "xxx cterm=reverse gui=reverse";
  TermCursorNC   = "xxx cleared";
  NonText        = "xxx ctermfg=12 gui=bold guifg=Blue";
  Directory      = "xxx ctermfg=159 guifg=Cyan";
  ErrorMsg       = "xxx ctermfg=15 ctermbg=1 guifg=White guibg=Red";
  IncSearch      = "xxx cterm=reverse gui=reverse";
  Search         = "xxx ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow";
  CurSearch      = "xxx links to Search";
  MoreMsg        = "xxx ctermfg=121 gui=bold guifg=SeaGreen";
  ModeMsg        = "xxx cterm=bold gui=bold";
  LineNr         = "xxx ctermfg=11 guifg=Yellow";
  LineNrAbove    = "xxx links to LineNr";
  LineNrBelow    = "xxx links to LineNr";
  CursorLineNr   = "xxx cterm=underline ctermfg=11 gui=bold guifg=Yellow";
  CursorLineSign = "xxx links to SignColumn";
  CursorLineFold = "xxx links to FoldColumn";
  Question       = "xxx ctermfg=121 gui=bold guifg=Green";
  StatusLine     = "xxx cterm=bold,reverse gui=bold,reverse";
  StatusLineNC   = "xxx cterm=reverse gui=reverse";
  WinSeparator   = "xxx links to VertSplit";
  VertSplit      = "xxx links to Normal";
  Title          = "xxx ctermfg=225 gui=bold guifg=Magenta";
  Visual         = "xxx ctermbg=242 guibg=DarkGrey";
  VisualNC       = "xxx cleared";
  WarningMsg     = "xxx ctermfg=224 guifg=Red";
  WildMenu       = "xxx ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow";
  Folded         = "xxx ctermfg=14 ctermbg=242 guifg=Cyan guibg=DarkGrey";
  FoldColumn     = "xxx ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey";
  DiffAdd        = "xxx ctermbg=4 guibg=DarkBlue";
  DiffChange     = "xxx ctermbg=5 guibg=DarkMagenta";
  DiffDelete     = "xxx ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan";
  DiffText       = "xxx cterm=bold ctermbg=9 gui=bold guibg=Red";
  SignColumn     = "xxx ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey";
  Conceal        = "xxx ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey";
  SpellBad       = "xxx ctermbg=9 gui=undercurl guisp=Red";
  SpellCap       = "xxx ctermbg=12 gui=undercurl guisp=Blue";
  SpellRare      = "xxx ctermbg=13 gui=undercurl guisp=Magenta";
  SpellLocal     = "xxx ctermbg=14 gui=undercurl guisp=Cyan";
  Pmenu          = "xxx ctermfg=0 ctermbg=13 guibg=Magenta";
  PmenuSel       = "xxx ctermfg=242 ctermbg=0 guibg=DarkGrey";
  PmenuKind      = "xxx links to Pmenu";
  PmenuKindSel   = "xxx links to PmenuSel";
  PmenuExtra     = "xxx links to Pmenu";
  PmenuExtraSel  = "xxx links to PmenuSel";
  PmenuSbar      = "xxx ctermbg=248 guibg=Grey";
  PmenuThumb     = "xxx ctermbg=15 guibg=White";
  TabLine        = "xxx cterm=underline ctermfg=15 ctermbg=242 gui=underline";
  guibg          = "DarkGrey";
  TabLineSel     = "xxx cterm=bold gui=bold";
  TabLineFill    = "xxx cterm=reverse gui=reverse";
  CursorColumn   = "xxx ctermbg=242 guibg=Grey40";
  CursorLine     = "xxx cterm=underline guibg=Grey40";
  ColorColumn    = "xxx ctermbg=1 guibg=DarkRed";
  QuickFixLine   = "xxx links to Search";
  Whitespace     = "xxx links to NonText";
  NormalNC       = "xxx cleared";
  MsgSeparator   = "xxx links to StatusLine";
  #NormalFloat    = "xxx links to Pmenu";
  MsgArea        = "xxx cleared";
  FloatBorder    = "xxx links to WinSeparator";
  WinBar         = "xxx cterm=bold gui=bold";
  WinBarNC       = "xxx links to WinBar";
  Cursor         = "xxx guifg=bg guibg=fg";
  FloatTitle     = "xxx links to Title";
  lCursor        = "xxx guifg=bg guibg=fg";
  Normal         = "xxx cleared";
  Substitute     = "xxx links to Search";
  FloatShadow    = "xxx guibg=Black blend=80";
  FloatShadowThrough = "xxx guibg=Black blend=100";
  RedrawDebugNormal = "xxx cterm=reverse gui=reverse";
  RedrawDebugClear = "xxx ctermbg=11 guibg=Yellow";
  RedrawDebugComposed = "xxx ctermbg=10 guibg=Green";
  RedrawDebugRecompose = "xxx ctermbg=9 guibg=Red";
  Error          = "xxx ctermfg=15 ctermbg=9 guifg=White guibg=Red";
  Todo           = "xxx ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow";
  String         = "xxx links to Constant";
  Constant       = "xxx ctermfg=13 guifg=#ffa0a0";
  Character      = "xxx links to Constant";
  Number         = "xxx links to Constant";
  Boolean        = "xxx links to Constant";
  Float          = "xxx links to Number";
  Function       = "xxx links to Identifier";
  Identifier     = "xxx cterm=bold ctermfg=14 guifg=#40ffff";
  Conditional    = "xxx links to Statement";
  Statement      = "xxx ctermfg=11 gui=bold guifg=#ffff60";
  Repeat         = "xxx links to Statement";
  Label          = "xxx links to Statement";
  Operator       = "xxx links to Statement";
  Keyword        = "xxx links to Statement";
  Exception      = "xxx links to Statement";
  Include        = "xxx links to PreProc";
  PreProc        = "xxx ctermfg=81 guifg=#ff80ff";
  Define         = "xxx links to PreProc";
  Macro          = "xxx links to PreProc";
  PreCondit      = "xxx links to PreProc";
  StorageClass   = "xxx links to Type";
  Type           = "xxx ctermfg=121 gui=bold guifg=#60ff60";
  Structure      = "xxx links to Type";
  Typedef        = "xxx links to Type";
  Tag            = "xxx links to Special";
  Special        = "xxx ctermfg=224 guifg=Orange";
  SpecialChar    = "xxx links to Special";
  Delimiter      = "xxx links to Special";
  SpecialComment = "xxx links to Special";
  Debug          = "xxx links to Special";
  DiagnosticError = "xxx ctermfg=1 guifg=Red";
  DiagnosticWarn = "xxx ctermfg=3 guifg=Orange";
  DiagnosticInfo = "xxx ctermfg=4 guifg=LightBlue";
  DiagnosticHint = "xxx ctermfg=7 guifg=LightGrey";
  DiagnosticOk   = "xxx ctermfg=10 guifg=LightGreen";
  DiagnosticUnderlineError = "xxx cterm=underline gui=underline guisp=Red";
  DiagnosticUnderlineWarn = "xxx cterm=underline gui=underline guisp=Orange";
  DiagnosticUnderlineInfo = "xxx cterm=underline gui=underline guisp=LightBlue";
  DiagnosticUnderlineHint = "xxx cterm=underline gui=underline guisp=LightGrey";
  DiagnosticUnderlineOk = "xxx cterm=underline gui=underline guisp=LightGreen";
  DiagnosticVirtualTextError = "xxx links to DiagnosticError";
  DiagnosticVirtualTextWarn = "xxx links to DiagnosticWarn";
  DiagnosticVirtualTextInfo = "xxx links to DiagnosticInfo";
  DiagnosticVirtualTextHint = "xxx links to DiagnosticHint";
  DiagnosticVirtualTextOk = "xxx links to DiagnosticOk";
  DiagnosticFloatingError = "xxx links to DiagnosticError";
  DiagnosticFloatingWarn = "xxx links to DiagnosticWarn";
  DiagnosticFloatingInfo = "xxx links to DiagnosticInfo";
  DiagnosticFloatingHint = "xxx links to DiagnosticHint";
  DiagnosticFloatingOk = "xxx links to DiagnosticOk";
  DiagnosticSignError = "xxx links to DiagnosticError";
  DiagnosticSignWarn = "xxx links to DiagnosticWarn";
  DiagnosticSignInfo = "xxx links to DiagnosticInfo";
  DiagnosticSignHint = "xxx links to DiagnosticHint";
  DiagnosticSignOk = "xxx links to DiagnosticOk";
  DiagnosticDeprecated = "xxx cterm=strikethrough gui=strikethrough guisp=Red";
  DiagnosticUnnecessary = "xxx links to Comment";
  Comment        = "xxx ctermfg=14 guifg=#80a0ff";
  at_text          = "xxx cleared";
  at_text_literal  = "xxx links to Comment";
  at_text_reference = "xxx links to Identifier";
  at_text_title    = "xxx links to Title";
  at_text_uri      = "xxx links to Underlined";
  Underlined     = "xxx cterm=underline ctermfg=81 gui=underline guifg=#80a0ff";
  at_text_underline = "xxx links to Underlined";
  at_text_todo     = "xxx links to Todo";
  at_comment       = "xxx links to Comment";
  at_punctuation   = "xxx links to Delimiter";
  at_constant      = "xxx links to Constant";
  at_constant_builtin = "xxx links to Special";
  at_constant_macro = "xxx links to Define";
  at_define        = "xxx links to Define";
  at_macro         = "xxx links to Macro";
  at_string        = "xxx links to String";
  at_string_escape = "xxx links to SpecialChar";
  at_string_special = "xxx links to SpecialChar";
  at_character     = "xxx links to Character";
  at_character_special = "xxx links to SpecialChar";
  at_number        = "xxx links to Number";
  at_boolean       = "xxx links to Boolean";
  at_float         = "xxx links to Float";
  at_function      = "xxx links to Function";
  at_function_builtin = "xxx links to Special";
  at_function_macro = "xxx links to Macro";
  at_parameter     = "xxx links to Identifier";
  at_method        = "xxx links to Function";
  at_field         = "xxx links to Identifier";
  at_property      = "xxx links to Identifier";
  at_constructor   = "xxx links to Special";
  at_conditional   = "xxx links to Conditional";
  at_repeat        = "xxx links to Repeat";
  at_label         = "xxx links to Label";
  at_operator      = "xxx links to Operator";
  at_keyword       = "xxx links to Keyword";
  at_exception     = "xxx links to Exception";
  at_variable      = "xxx links to Identifier";
  at_type          = "xxx links to Type";
  at_type_definition = "xxx links to Typedef";
  at_storageclass  = "xxx links to StorageClass";
  at_namespace     = "xxx links to Identifier";
  at_include       = "xxx links to Include";
  at_preproc       = "xxx links to PreProc";
  at_debug         = "xxx links to Debug";
  at_tag           = "xxx links to Tag";
  at_lsp           = "xxx cleared";
  at_lsp_type_class = "xxx links to Structure";
  at_lsp_type_comment = "xxx links to Comment";
  at_lsp_type_decorator = "xxx links to Function";
  at_lsp_type_enum = "xxx links to Structure";
  at_lsp_type_enumMember = "xxx links to Constant";
  at_lsp_type_function = "xxx links to Function";
  at_lsp_type_interface = "xxx links to Structure";
  at_lsp_type_macro = "xxx links to Macro";
  at_lsp_type_method = "xxx links to Function";
  at_lsp_type_namespace = "xxx links to Structure";
  at_lsp_type_parameter = "xxx links to Identifier";
  at_lsp_type_property = "xxx links to Identifier";
  at_lsp_type_struct = "xxx links to Structure";
  at_lsp_type_type = "xxx links to Type";
  at_lsp_type_typeParameter = "xxx links to Typedef";
  at_lsp_type_variable = "xxx links to Identifier";
  MatchParen     = "xxx ctermbg=6 guibg=DarkCyan";
  Ignore         = "xxx ctermfg=0 guifg=bg";
  NvimInternalError = "xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red";
  NvimAssignment = "xxx links to Operator";
  NvimPlainAssignment = "xxx links to NvimAssignment";
  NvimAugmentedAssignment = "xxx links to NvimAssignment";
  NvimAssignmentWithAddition = "xxx links to NvimAugmentedAssignment";
  NvimAssignmentWithSubtraction = "xxx links to NvimAugmentedAssignment";
  NvimAssignmentWithConcatenation = "xxx links to NvimAugmentedAssignment";
  NvimOperator   = "xxx links to Operator";
  NvimUnaryOperator = "xxx links to NvimOperator";
  NvimUnaryPlus  = "xxx links to NvimUnaryOperator";
  NvimUnaryMinus = "xxx links to NvimUnaryOperator";
  NvimNot        = "xxx links to NvimUnaryOperator";
  NvimBinaryOperator = "xxx links to NvimOperator";
  NvimComparison = "xxx links to NvimBinaryOperator";
  NvimComparisonModifier = "xxx links to NvimComparison";
  NvimBinaryPlus = "xxx links to NvimBinaryOperator";
  NvimBinaryMinus = "xxx links to NvimBinaryOperator";
  NvimConcat     = "xxx links to NvimBinaryOperator";
  NvimConcatOrSubscript = "xxx links to NvimConcat";
  NvimOr         = "xxx links to NvimBinaryOperator";
  NvimAnd        = "xxx links to NvimBinaryOperator";
  NvimMultiplication = "xxx links to NvimBinaryOperator";
  NvimDivision   = "xxx links to NvimBinaryOperator";
  NvimMod        = "xxx links to NvimBinaryOperator";
  NvimTernary    = "xxx links to NvimOperator";
  NvimTernaryColon = "xxx links to NvimTernary";
  NvimParenthesis = "xxx links to Delimiter";
  NvimLambda     = "xxx links to NvimParenthesis";
  NvimNestingParenthesis = "xxx links to NvimParenthesis";
  NvimCallingParenthesis = "xxx links to NvimParenthesis";
  NvimSubscript  = "xxx links to NvimParenthesis";
  NvimSubscriptBracket = "xxx links to NvimSubscript";
  NvimSubscriptColon = "xxx links to NvimSubscript";
  NvimCurly      = "xxx links to NvimSubscript";
  NvimContainer  = "xxx links to NvimParenthesis";
  NvimDict       = "xxx links to NvimContainer";
  NvimList       = "xxx links to NvimContainer";
  NvimIdentifier = "xxx links to Identifier";
  NvimIdentifierScope = "xxx links to NvimIdentifier";
  NvimIdentifierScopeDelimiter = "xxx links to NvimIdentifier";
  NvimIdentifierName = "xxx links to NvimIdentifier";
  NvimIdentifierKey = "xxx links to NvimIdentifier";
  NvimColon      = "xxx links to Delimiter";
  NvimComma      = "xxx links to Delimiter";
  NvimArrow      = "xxx links to Delimiter";
  NvimRegister   = "xxx links to SpecialChar";
  NvimNumber     = "xxx links to Number";
  NvimFloat      = "xxx links to NvimNumber";
  NvimNumberPrefix = "xxx links to Type";
  NvimOptionSigil = "xxx links to Type";
  NvimOptionName = "xxx links to NvimIdentifier";
  NvimOptionScope = "xxx links to NvimIdentifierScope";
  NvimOptionScopeDelimiter = "xxx links to NvimIdentifierScopeDelimiter";
  NvimEnvironmentSigil = "xxx links to NvimOptionSigil";
  NvimEnvironmentName = "xxx links to NvimIdentifier";
  NvimString     = "xxx links to String";
  NvimStringBody = "xxx links to NvimString";
  NvimStringQuote = "xxx links to NvimString";
  NvimStringSpecial = "xxx links to SpecialChar";
  NvimSingleQuote = "xxx links to NvimStringQuote";
  NvimSingleQuotedBody = "xxx links to NvimStringBody";
  NvimSingleQuotedQuote = "xxx links to NvimStringSpecial";
  NvimDoubleQuote = "xxx links to NvimStringQuote";
  NvimDoubleQuotedBody = "xxx links to NvimStringBody";
  NvimDoubleQuotedEscape = "xxx links to NvimStringSpecial";
  NvimFigureBrace = "xxx links to NvimInternalError";
  NvimSingleQuotedUnknownEscape = "xxx links to NvimInternalError";
  NvimSpacing    = "xxx links to Normal";
  NvimInvalidSingleQuotedUnknownEscape = "xxx links to NvimInternalError";
  NvimInvalid    = "xxx links to Error";
  NvimInvalidAssignment = "xxx links to NvimInvalid";
  NvimInvalidPlainAssignment = "xxx links to NvimInvalidAssignment";
  NvimInvalidAugmentedAssignment = "xxx links to NvimInvalidAssignment";
  NvimInvalidAssignmentWithAddition = "xxx links to NvimInvalidAugmentedAssignment";
  NvimInvalidAssignmentWithSubtraction = "xxx links to NvimInvalidAugmentedAssignment";
  NvimInvalidAssignmentWithConcatenation = "xxx links to NvimInvalidAugmentedAssignment";
  NvimInvalidOperator = "xxx links to NvimInvalid";
  NvimInvalidUnaryOperator = "xxx links to NvimInvalidOperator";
  NvimInvalidUnaryPlus = "xxx links to NvimInvalidUnaryOperator";
  NvimInvalidUnaryMinus = "xxx links to NvimInvalidUnaryOperator";
  NvimInvalidNot = "xxx links to NvimInvalidUnaryOperator";
  NvimInvalidBinaryOperator = "xxx links to NvimInvalidOperator";
  NvimInvalidComparison = "xxx links to NvimInvalidBinaryOperator";
  NvimInvalidComparisonModifier = "xxx links to NvimInvalidComparison";
  NvimInvalidBinaryPlus = "xxx links to NvimInvalidBinaryOperator";
  NvimInvalidBinaryMinus = "xxx links to NvimInvalidBinaryOperator";
  NvimInvalidConcat = "xxx links to NvimInvalidBinaryOperator";
  NvimInvalidConcatOrSubscript = "xxx links to NvimInvalidConcat";
  NvimInvalidOr  = "xxx links to NvimInvalidBinaryOperator";
  NvimInvalidAnd = "xxx links to NvimInvalidBinaryOperator";
  NvimInvalidMultiplication = "xxx links to NvimInvalidBinaryOperator";
  NvimInvalidDivision = "xxx links to NvimInvalidBinaryOperator";
  NvimInvalidMod = "xxx links to NvimInvalidBinaryOperator";
  NvimInvalidTernary = "xxx links to NvimInvalidOperator";
  NvimInvalidTernaryColon = "xxx links to NvimInvalidTernary";
  NvimInvalidDelimiter = "xxx links to NvimInvalid";
  NvimInvalidParenthesis = "xxx links to NvimInvalidDelimiter";
  NvimInvalidLambda = "xxx links to NvimInvalidParenthesis";
  NvimInvalidNestingParenthesis = "xxx links to NvimInvalidParenthesis";
  NvimInvalidCallingParenthesis = "xxx links to NvimInvalidParenthesis";
  NvimInvalidSubscript = "xxx links to NvimInvalidParenthesis";
  NvimInvalidSubscriptBracket = "xxx links to NvimInvalidSubscript";
  NvimInvalidSubscriptColon = "xxx links to NvimInvalidSubscript";
  NvimInvalidCurly = "xxx links to NvimInvalidSubscript";
  NvimInvalidContainer = "xxx links to NvimInvalidParenthesis";
  NvimInvalidDict = "xxx links to NvimInvalidContainer";
  NvimInvalidList = "xxx links to NvimInvalidContainer";
  NvimInvalidValue = "xxx links to NvimInvalid";
  NvimInvalidIdentifier = "xxx links to NvimInvalidValue";
  NvimInvalidIdentifierScope = "xxx links to NvimInvalidIdentifier";
  NvimInvalidIdentifierScopeDelimiter = "xxx links to NvimInvalidIdentifier";
  NvimInvalidIdentifierName = "xxx links to NvimInvalidIdentifier";
  NvimInvalidIdentifierKey = "xxx links to NvimInvalidIdentifier";
  NvimInvalidColon = "xxx links to NvimInvalidDelimiter";
  NvimInvalidComma = "xxx links to NvimInvalidDelimiter";
  NvimInvalidArrow = "xxx links to NvimInvalidDelimiter";
  NvimInvalidRegister = "xxx links to NvimInvalidValue";
  NvimInvalidNumber = "xxx links to NvimInvalidValue";
  NvimInvalidFloat = "xxx links to NvimInvalidNumber";
  NvimInvalidNumberPrefix = "xxx links to NvimInvalidNumber";
  NvimInvalidOptionSigil = "xxx links to NvimInvalidIdentifier";
  NvimInvalidOptionName = "xxx links to NvimInvalidIdentifier";
  NvimInvalidOptionScope = "xxx links to NvimInvalidIdentifierScope";
  NvimInvalidOptionScopeDelimiter = "xxx links to NvimInvalidIdentifierScopeDelimiter";
  NvimInvalidEnvironmentSigil = "xxx links to NvimInvalidOptionSigil";
  NvimInvalidEnvironmentName = "xxx links to NvimInvalidIdentifier";
  NvimInvalidString = "xxx links to NvimInvalidValue";
  NvimInvalidStringBody = "xxx links to NvimStringBody";
  NvimInvalidStringQuote = "xxx links to NvimInvalidString";
  NvimInvalidStringSpecial = "xxx links to NvimStringSpecial";
  NvimInvalidSingleQuote = "xxx links to NvimInvalidStringQuote";
  NvimInvalidSingleQuotedBody = "xxx links to NvimInvalidStringBody";
  NvimInvalidSingleQuotedQuote = "xxx links to NvimInvalidStringSpecial";
  NvimInvalidDoubleQuote = "xxx links to NvimInvalidStringQuote";
  NvimInvalidDoubleQuotedBody = "xxx links to NvimInvalidStringBody";
  NvimInvalidDoubleQuotedEscape = "xxx links to NvimInvalidStringSpecial";
  NvimInvalidDoubleQuotedUnknownEscape = "xxx links to NvimInvalidValue";
  NvimInvalidFigureBrace = "xxx links to NvimInvalidDelimiter";
  NvimInvalidSpacing = "xxx links to ErrorMsg";

  # applications
  # terminal

  # terminal.wezterm

  # syntax highlighting rules ====================================================
  /*
      syntax-colors
    thing = "$"
    action = "$"
    type = "$"
    punctuation = "$"
    keyword = "$"
    keyword_dim = "$"
    delimiter = "$"
    comment = "$"
    string = "$"
    eyecatcher = "$"
    deemphasized = "$"

    # language-specific overrides ==================================================
    markdown
    header1 = "$"
    header2 = "$"
    header3 = "$"
    header4 = "$"
    link = "$"
    itemizer = "$"
    number = "$itemizer"
    bullet = "$itemizer"
    quote = "$"
    inline-quote = "$"

    latex

    c

    rust


    nim

    zig

    python
    background = "{$background1}"

    cython

    julia

    ruby

    websites

    websites.wikipedia



    websites.gitlab
  ---------------------------------------------------------------------------------
    vim.g.terminal_color_0 = c.black
    vim.g.terminal_color_1 = c.red
    vim.g.terminal_color_2 = c.green
    vim.g.terminal_color_3 = c.yellow
    vim.g.terminal_color_4 = c.blue
    vim.g.terminal_color_5 = c.purple
    vim.g.terminal_color_6 = c.cyan
    vim.g.terminal_color_7 = c.fg
    vim.g.terminal_color_8 = c.grey
    vim.g.terminal_color_9 = c.red
    vim.g.terminal_color_10 = c.green
    vim.g.terminal_color_11 = c.yellow
    vim.g.terminal_color_12 = c.blue
    vim.g.terminal_color_13 = c.purple
    vim.g.terminal_color_14 = c.cyan
    vim.g.terminal_color_15 = c.fg
  ---------------------------------------------------------------------------------
      Normal = { fg = c.fg, bg = normal_bg },
    NormalNC = {
      fg = cfg.dim_inactive and c.light_grey or c.fg,
      bg = dimmable_bg,
    },
    NormalFloat = { fg = c.fg, bg = dimmable_bg },
    FloatBorder = { fg = c.purple, bg = dimmable_bg },
    FloatTitle = colors.Red,
    FloatFooter = colors.LightGrey,
    Terminal = { fg = c.fg, bg = normal_bg },
    EndOfBuffer = { fg = cfg.ending_tildes and c.bg2 or c.bg0 },
    FoldColumn = { fg = c.fg },
    Folded = { fg = c.fg, bg = c.bg1 },
    SignColumn = { fg = c.fg },
    ToolbarLine = { fg = c.fg },
    Cursor = { fmt = 'reverse' },
    lCursor = { link = 'Cursor' },
    CursorIM = { link = 'Cursor' },
    CursorColumn = { link = 'CursorLine' },
    CursorLine = { bg = c.bg1 },
    ColorColumn = { bg = util.blend(c.bg1, c.green, 0.875) },
    CursorLineNr = { fg = c.fg },
    LineNr = { fg = c.grey },
    Conceal = { fg = c.grey },
    DiffAdd = { fg = c.none, bg = c.diff_add },
    DiffChange = { fg = c.none, bg = c.diff_change },
    DiffDelete = { fg = c.none, bg = c.diff_delete },
    DiffText = { fg = c.none, bg = c.diff_text },
    DiffAdded = colors.Green,
    DiffRemoved = colors.Red,
    DiffFile = colors.Cyan,
    DiffIndexLine = colors.Grey,
    Directory = { fg = c.blue },
    ErrorMsg = { fg = c.red, fmt = 'bold' },
    WarningMsg = { fg = c.yellow, fmt = 'bold' },
    MoreMsg = { fg = c.blue, fmt = 'bold' },
    CurSearch = { fg = c.bg0, bg = c.orange },
    IncSearch = { link = 'CurSearch' },
    Search = { fg = c.bg0, bg = c.bg_yellow },
    Substitute = { fg = c.bg0, bg = c.green },
    MatchParen = { fg = c.orange, bg = c.grey, fmt = 'bold' },
    NonText = { fg = c.grey },
    Whitespace = { link = 'NonText' },
    SpecialKey = { link = 'NonText' },
    Pmenu = { fg = c.fg, bg = c.bg1 },
    PmenuSbar = { fg = c.none, bg = c.bg1 },
    PmenuSel = { fg = c.bg0, bg = c.bg_blue },
    WildMenu = { fg = c.bg0, bg = c.blue },
    PmenuThumb = { fg = c.none, bg = c.grey },
    Question = { fg = c.yellow },
    SpellBad = { fg = c.none, fmt = 'undercurl', sp = c.red },
    SpellCap = { fg = c.none, fmt = 'undercurl', sp = c.yellow },
    SpellLocal = { fg = c.none, fmt = 'undercurl', sp = c.blue },
    SpellRare = { fg = c.none, fmt = 'undercurl', sp = c.purple },
    StatusLine = { fg = c.fg, bg = c.bg2 },
    StatusLineNC = { fg = c.grey, bg = c.bg1 },
    TabLine = { fg = c.fg, bg = c.bg1 },
    TabLineFill = { fg = c.grey, bg = c.bg1 },
    TabLineSel = { fg = c.bg0, bg = c.fg },
    VertSplit = { fg = c.bg3 },
    Title = { fg = c.cyan, fmt = 'bold' },
    Visual = { bg = c.bg3 },
    VisualNOS = { fg = c.none, bg = c.bg2, fmt = 'underline' },
    WinSeparator = { fg = c.bg3 },
    QuickFixLine = { fg = c.blue, fmt = 'underline' },
    Debug = { fg = c.orange },
    debugPC = { fg = c.bg0, bg = c.green },
    debugBreakpoint = { fg = c.bg0, bg = c.red },
    ToolbarButton = { fg = c.bg0, bg = c.bg_blue },
  }

  hl.syntax = {
    String = { fg = c.green, fmt = cfg.code_style.strings },
    Constant = colors.Orange,
    Character = { link = 'Constant' },
    Number = { link = 'Constant' },
    Float = { link = 'Constant' },
    Boolean = { link = 'Constant' },
    Type = colors.Yellow,
    Typedef = { link = 'Type' },
    Structure = { link = 'Type' },
    StorageClass = { fg = c.yellow, fmt = 'italic' },
    Identifier = { fg = c.red, fmt = cfg.code_style.variables },
    PreProc = colors.Purple,
    PreCondit = { link = 'PreProc' },
    Include = { link = 'PreProc' },
    Define = { link = 'PreProc' },
    Keyword = { fg = c.purple, fmt = cfg.code_style.keywords },
    Exception = { link = 'Keyword' },
    Conditional = { fg = c.purple, fmt = cfg.code_style.conditionals },
    Repeat = { link = 'Keyword' },
    Statement = colors.Purple,
    Macro = { fg = const_purple },
    Error = colors.Red,
    Label = { fg = c.red, fmt = 'bold' },
    Special = colors.Red,
    SpecialChar = { link = 'Special' },
    Function = { fg = c.blue, fmt = cfg.code_style.functions },
    Operator = { fg = util.blend(c.fg, c.purple, 0.375) },
    Tag = colors.Blue,
    Delimiter = colors.LightGrey,
    Comment = { fg = c.grey, fmt = cfg.code_style.comments },
    SpecialComment = { link = 'Comment' },
    Todo = { fg = c.black, bg = c.purple, fmt = 'bold' },

    Underlined = { fmt = 'underline' },
    Bold = { fmt = 'bold' },
    Italic = { fmt = 'italic' },
    Strike = { fmt = 'strikethrough' },
  }

  if vim.api.nvim_call_function('has', { 'nvim-0.8' }) == 1 then
    hl.treesitter = {
      ['@attribute'] = colors.Cyan,
      ['@attribute.typescript'] = colors.Blue,
      ['@boolean'] = { link = 'Boolean' },
      ['@character'] = { link = 'Character' },
      ['@comment'] = { fg = c.bg_yellow, fmt = cfg.code_style.comments },
      ['@conditional'] = { link = 'Conditional' },
      ['@conditional.ternary'] = { link = 'Operator' },
      ['@constant'] = { link = 'Constant' },
      ['@constant.builtin'] = { link = 'Constant' },
      ['@constant.macro'] = { link = 'Constant' },
      ['@constructor'] = { fg = c.yellow, fmt = 'bold' },
      ['@constructor.lua'] = { fg = c.yellow, fmt = 'none' },
      ['@error'] = { link = 'Error' },
      ['@exception'] = { link = 'Exception' },
      ['@field'] = colors.Cyan,
      ['@float'] = { link = 'Float' },
      ['@function'] = { link = 'Function' },
      ['@function.builtin'] = { fg = c.orange, fmt = cfg.code_style.functions },
      ['@function.macro'] = {
        fg = const_purple,
        fmt = cfg.code_style.functions,
      },
      ['@include'] = { link = 'Include' },
      ['@keyword'] = { link = 'Keyword' },
      ['@keyword.coroutine'] = { link = 'Keyword' },
      ['@keyword.operator'] = { link = 'Keyword' },
      ['@label'] = { link = 'Label' },
      ['@label.json'] = colors.Red,
      ['@method'] = { link = 'Function' },
      ['@namespace'] = { fg = light_blue, fmt = cfg.code_style.namespaces },
      ['@namespace.builtin'] = { link = '@variable.builtin' },
      ['@number'] = { link = 'Number' },
      ['@operator'] = { link = 'Operator' },
      ['@parameter'] = { fg = c.coral, fmt = cfg.code_style.parameters },
      ['@parameter.builtin'] = { fg = c.red, fmt = cfg.code_style.parameters },
      ['@preproc'] = { link = 'PreProc' },
      ['@property'] = { link = '@field' },
      ['@punctuation.delimiter'] = { link = 'Delimiter' },
      ['@punctuation.bracket'] = { link = 'Delimiter' },
      ['@punctuation.special'] = { link = 'Special' },
      ['@repeat'] = { link = 'Repeat' },
      ['@storageclass'] = { link = 'StorageClass' },
      ['@string'] = { link = 'String' },
      ['@string.documentation'] = { link = '@comment' },
      ['@string.regex'] = { fg = c.orange },
      ['@string.escape'] = { fg = c.coral },
      ['@string.special'] = { link = 'Special' },
      ['@symbol'] = { link = '@field' },
      ['@tag'] = colors.Purple,
      ['@tag.attribute'] = colors.Yellow,
      ['@tag.attribute.tsx'] = { link = '@property' },
      ['@tag.delimiter'] = { link = 'Delimiter' },
      ['@text'] = colors.Fg,
      ['@text.strong'] = { fg = c.fg, fmt = 'bold' },
      ['@text.emphasis'] = { fg = c.fg, fmt = 'italic' },
      ['@text.underline'] = { fg = c.fg, fmt = 'underline' },
      ['@text.strike'] = { fg = c.fg, fmt = 'strikethrough' },
      ['@text.title'] = { fg = c.orange, fmt = 'bold' },
      ['@text.title.1'] = { fg = c.red, fmt = 'bold' },
      ['@text.title.2'] = { fg = c.yellow, fmt = 'bold' },
      ['@text.title.3'] = { fg = c.green, fmt = 'bold' },
      ['@text.title.4'] = { fg = c.cyan, fmt = 'bold' },
      ['@text.title.5'] = { fg = c.blue, fmt = 'bold' },
      ['@text.title.6'] = { fg = c.purple, fmt = 'bold' },
      ['@text.literal'] = colors.Green,
      ['@text.uri'] = { fg = c.cyan, fmt = 'underline' },
      ['@text.uri.markdown_inline'] = { fg = c.cyan, fmt = 'underline,italic' },
      ['@text.todo'] = { link = 'Todo' },
      ['@text.todo.checked'] = { fg = c.yellow, fmt = 'bold' },
      ['@text.todo.unchecked'] = { fg = c.light_grey, fmt = 'bold' },
      ['@text.note'] = { fg = c.black, bg = c.blue, fmt = 'bold' },
      ['@text.danger'] = { fg = c.black, bg = c.red, fmt = 'bold' },
      ['@text.warning'] = { fg = c.black, bg = c.orange, fmt = 'bold' },
      ['@text.math'] = colors.Blue,
      ['@text.reference'] = { link = 'Tag' },
      ['@text.environment'] = { fg = c.cyan, fmt = 'bold' },
      ['@text.environment.name'] = colors.Yellow,
      ['@text.diff.add'] = { link = 'DiffAdd' },
      ['@text.diff.delete'] = { link = 'DiffDelete' },
      ['@text.strike.markdown_inline'] = {
        fg = c.purple,
        fmt = 'strikethrough',
      },
      ['@text.strong.markdown_inline'] = { fg = c.purple, fmt = 'bold' },
      ['@text.emphasis.markdown_inline'] = { fg = c.purple, fmt = 'italic' },
      ['@text.quote'] = { fg = util.blend(c.fg, c.light_grey, 0.5) },
      ['@type'] = { link = 'Type' },
      ['@type.builtin'] = { link = 'Type' },
      ['@type.qualifier'] = { fg = c.purple, fmt = 'italic' },
      ['@variable'] = { fg = c.fg, fmt = cfg.code_style.variables },
      ['@variable.builtin'] = { fg = c.red, fmt = cfg.code_style.variables },
      ['@variable.global'] = {
        fg = util.lighten(c.red, 0.625),
        fmt = cfg.code_style.variables,
      },
    }
    if vim.api.nvim_call_function('has', { 'nvim-0.9' }) == 1 then
      hl.lsp = {
        ['@lsp.mod.readonly'] = { link = '@constant' },
        ['@lsp.mod.typeHint'] = { link = '@type' },
        ['@lsp_type_boolean'] = { link = '@boolean' },
        ['@lsp_type_builtinAttribute'] = { link = '@attribute' },
        ['@lsp_type_builtinConstant'] = { link = '@constant.builtin' },
        ['@lsp_type_builtinType'] = { link = '@type.builtin' },
        ['@lsp_type_class.markdown'] = {},
        -- disable comment highlighting, see the following issue:
        -- https://github.com/LuaLS/lua-language-server/issues/1809
        ['@lsp_type_comment'] = {},
        ['@lsp_type_decorator'] = { link = '@attribute' },
        ['@lsp_type_derive'] = { link = '@constructor' },
        ['@lsp_type_deriveHelper'] = { link = '@attribute' },
        ['@lsp_type_enum'] = { link = '@type' },
        ['@lsp_type_enumMember'] = { link = '@constant' },
        ['@lsp_type_escapeSequence'] = { link = '@string.escape' },
        ['@lsp_type_formatSpecifier'] = { link = '@punctuation.special' },
        ['@lsp_type_generic'] = { link = '@text' },
        ['@lsp_type_interface'] = { link = '@type' },
        ['@lsp_type_keyword'] = { link = '@keyword' },
        ['@lsp_type_lifetime'] = { link = '@storageclass' },
        ['@lsp_type_macro'] = { link = 'Macro' },
        ['@lsp_type_magicFunction'] = { link = '@function.builtin' },
        ['@lsp_type_method'] = { link = '@method' },
        ['@lsp_type_namespace'] = { link = '@namespace' },
        ['@lsp_type_number'] = { link = '@number' },
        ['@lsp_type_operator'] = { link = '@operator' },
        -- don't highlight cpp operators, the LSP is too generous with these
        ['@lsp_type_operator.cpp'] = {},
        ['@lsp_type_parameter'] = { link = '@parameter' },
        ['@lsp_type_property'] = { link = '@property' },
        ['@lsp_type_selfKeyword'] = { link = '@variable.builtin' },
        ['@lsp_type_selfTypeKeyword'] = { link = '@type' },
        ['@lsp_type_string'] = { link = '@string' },
        ['@lsp_type_typeAlias'] = { link = '@type.definition' },
        ['@lsp_type_typeParameter'] = { link = '@type' },
        ['@lsp_type_unresolvedReference'] = {
          [cfg.diagnostics.undercurl and 'undercurl' or 'underline'] = true,
          sp = c.red,
        },
        ['@lsp_type_variable'] = {}, -- use treesitter styles for regular variables
        -- ...except for rust, which benefits from this (the above is mostly only
        -- an issue with interpreted languages)
        ['@lsp_type_variable.rust'] = colors.Fg,
        ['@lsp_type_od.class.defaultLibrary'] = { link = '@type.builtin' },
        ['@lsp_type_od.enum.defaultLibrary'] = { link = '@type.builtin' },
        ['@lsp_type_od.enumMember.defaultLibrary'] = {
          link = '@constant.builtin',
        },
        ['@lsp_type_od.function.defaultLibrary'] = { link = '@function.builtin' },
        ['@lsp_type_od.function.readonly'] = { link = '@method' },
        -- For things like `#![allow(unused_variables, unused_mut)]` in Rust
        ['@lsp_type_od.generic.attribute'] = { link = '@keyword' },
        ['@lsp_type_od.keyword.async'] = { link = '@keyword.coroutine' },
        ['@lsp_type_od.keyword.injected'] = { link = '@keyword' },
        ['@lsp_type_od.macro.defaultLibrary'] = { link = '@function.builtin' },
        ['@lsp_type_od.method.defaultLibrary'] = { link = '@function.builtin' },
        ['@lsp_type_od.method.readonly'] = { link = '@method' },
        ['@lsp_type_od.operator.injected'] = { link = '@operator' },
        ['@lsp_type_od.parameter.mutable'] = {
          fg = util.blend(c.purple, c.coral, 0.2),
        },
        ['@lsp_type_od.parameter.readonly'] = {
          fg = util.blend(c.yellow, c.coral, 0.375),
        },
        ['@lsp_type_od.property.readonly'] = {
          fg = util.blend(c.cyan, c.green, 0.5),
        },
        ['@lsp_type_od.string.injected'] = { link = '@string' },
        ['@lsp_type_od.struct.defaultLibrary'] = { link = '@type.builtin' },
        ['@lsp_type_od.type.defaultLibrary'] = { link = '@type.builtin' },
        ['@lsp_type_od.typeAlias.defaultLibrary'] = { link = '@type.builtin' },
        ['@lsp_type_od.variable.callable'] = { link = '@function' },
        ['@lsp_type_od.variable.constant.rust'] = { link = '@constant' },
        ['@lsp_type_od.variable.defaultLibrary'] = { link = '@variable.builtin' },
        ['@lsp_type_od.variable.global'] = { link = '@variable.global' },
        ['@lsp_type_od.variable.injected'] = { link = '@variable' },
        ['@lsp_type_od.variable.mutable'] = {
          fg = util.blend(c.fg, c.green, 0.625),
        },
        ['@lsp_type_od.variable.static'] = { fg = light_blue },
        ['@lsp_type_od.variable.static.rust'] = {},
        -- workaround to get good static variable highlights in rust
        ['@lsp.mod.static.rust'] = { link = '@lsp_type_od.variable.static' },
        ['@lsp_type_od.method.static.rust'] = { link = '@function' },
      }
    end
  else
    hl.treesitter = {
      TSAttribute = colors.Cyan,
      TSBoolean = { link = 'Boolean' },
      TSCharacter = { link = 'Character' },
      TSComment = { fg = c.bg_yellow, fmt = cfg.code_style.comments },
      TSConditional = { link = 'Conditional' },
      TSConstant = { link = 'Constant' },
      TSConstBuiltin = { link = 'Constant' },
      TSConstMacro = { link = 'Constant' },
      TSConstructor = { fg = c.yellow, fmt = 'bold' },
      TSError = { link = 'Error' },
      TSException = { link = 'Exception' },
      TSField = colors.Cyan,
      TSFloat = { link = 'Float' },
      TSFunction = { link = 'Function' },
      TSFuncBuiltin = { fg = c.orange, fmt = cfg.code_style.functions },
      TSFuncMacro = { fg = const_purple, fmt = cfg.code_style.functions },
      TSInclude = { link = 'Include' },
      TSKeyword = { link = 'Keyword' },
      TSLabel = { link = 'Label' },
      TSMethod = { link = 'Function' },
      TSNamespace = {
        fg = light_blue,
        fmt = cfg.code_style.namespaces,
      },
      TSNumber = { link = 'Number' },
      TSOperator = { link = 'Operator' },
      TSParameter = { fg = c.coral, fmt = cfg.code_style.parameters },
      TSProperty = { link = 'TSField' },
      TSPunctDelimiter = { link = 'Delimiter' },
      TSPunctBracket = { link = 'Delimiter' },
      TSPunctSpecial = { link = 'Special' },
      TSRepeat = { link = 'Repeat' },
      TSString = { link = 'String' },
      TSStringRegex = { fg = c.orange },
      TSStringEscape = { fg = c.coral },
      TSSymbol = { link = 'TSField' },
      TSTag = colors.Purple,
      TSTagDelimiter = colors.Purple,
      TSText = colors.Fg,
      TSStrong = { fg = c.fg, fmt = 'bold' },
      TSEmphasis = { fg = c.fg, fmt = 'italic' },
      TSUnderline = { fg = c.fg, fmt = 'underline' },
      TSStrike = { fg = c.fg, fmt = 'strikethrough' },
      TSTitle = { fg = c.orange, fmt = 'bold' },
      TSLiteral = colors.Green,
      TSURI = { fg = c.cyan, fmt = 'underline' },
      TSMath = colors.Blue,
      TSTextReference = { link = 'Tag' },
      TSEnvironment = { fg = c.cyan, fmt = 'bold' },
      TSEnvironmentName = colors.Yellow,
      TSNote = { fg = c.black, bg = c.blue, fmt = 'bold' },
      TSWarning = { fg = c.black, bg = c.orange, fmt = 'bold' },
      TSDanger = { fg = c.black, bg = c.red, fmt = 'bold' },
      TSType = { link = 'Type' },
      TSTypeBuiltin = { link = 'Type' },
      TSVariable = { fg = c.fg, fmt = cfg.code_style.variables },
      TSVariableBuiltin = { fg = c.red, fmt = cfg.code_style.variables },
    }
  end

  local diagnostics_error_color = cfg.diagnostics.darker and c.dark_red or c.red
  local diagnostics_hint_color = cfg.diagnostics.darker and c.dark_purple
    or c.purple
  local diagnostics_warn_color = cfg.diagnostics.darker and c.dark_yellow
    or c.yellow
  local diagnostics_info_color = cfg.diagnostics.darker and c.dark_cyan or c.cyan
  hl.plugins.lsp = {
    LspCxxHlGroupEnumConstant = colors.Orange,
    LspCxxHlGroupMemberVariable = colors.Orange,
    LspCxxHlGroupNamespace = colors.Blue,
    LspCxxHlSkippedRegion = colors.Grey,
    LspCxxHlSkippedRegionBeginEnd = colors.Red,

    DiagnosticUnnecessary = { link = 'Comment' },
    DiagnosticError = { fg = c.red },
    DiagnosticHint = { fg = c.purple },
    DiagnosticInfo = { fg = c.cyan },
    DiagnosticWarn = { fg = c.yellow },

    DiagnosticVirtualTextError = {
      bg = cfg.diagnostics.background
          and util.darken(diagnostics_error_color, 0.1, c.bg0)
        or c.none,
      fg = diagnostics_error_color,
    },
    DiagnosticVirtualTextWarn = {
      bg = cfg.diagnostics.background
          and util.darken(diagnostics_warn_color, 0.1, c.bg0)
        or c.none,
      fg = diagnostics_warn_color,
    },
    DiagnosticVirtualTextInfo = {
      bg = cfg.diagnostics.background
          and util.darken(diagnostics_info_color, 0.1, c.bg0)
        or c.none,
      fg = diagnostics_info_color,
    },
    DiagnosticVirtualTextHint = {
      bg = cfg.diagnostics.background
          and util.darken(diagnostics_hint_color, 0.1, c.bg0)
        or c.none,
      fg = diagnostics_hint_color,
    },

    DiagnosticUnderlineError = {
      fmt = cfg.diagnostics.undercurl and 'undercurl' or 'underline',
      sp = c.red,
    },
    DiagnosticUnderlineHint = {
      fmt = cfg.diagnostics.undercurl and 'undercurl' or 'underline',
      sp = c.purple,
    },
    DiagnosticUnderlineInfo = {
      fmt = cfg.diagnostics.undercurl and 'undercurl' or 'underline',
      sp = c.blue,
    },
    DiagnosticUnderlineWarn = {
      fmt = cfg.diagnostics.undercurl and 'undercurl' or 'underline',
      sp = c.yellow,
    },

    LspReferenceText = { bg = c.bg2 },
    LspReferenceWrite = { bg = c.bg2 },
    LspReferenceRead = { bg = c.bg2 },

    LspCodeLens = { link = 'Comment' },
    LspCodeLensSeparator = { fg = c.grey },
    LspInfoBorder = { link = 'FloatBorder' },
  }

  hl.plugins.lsp.LspDiagnosticsDefaultError = hl.plugins.lsp.DiagnosticError
  hl.plugins.lsp.LspDiagnosticsDefaultHint = hl.plugins.lsp.DiagnosticHint
  hl.plugins.lsp.LspDiagnosticsDefaultInformation = hl.plugins.lsp.DiagnosticInfo
  hl.plugins.lsp.LspDiagnosticsDefaultWarning = hl.plugins.lsp.DiagnosticWarn
  hl.plugins.lsp.LspDiagnosticsUnderlineError =
    hl.plugins.lsp.DiagnosticUnderlineError
  hl.plugins.lsp.LspDiagnosticsUnderlineHint =
    hl.plugins.lsp.DiagnosticUnderlineHint
  hl.plugins.lsp.LspDiagnosticsUnderlineInformation =
    hl.plugins.lsp.DiagnosticUnderlineInfo
  hl.plugins.lsp.LspDiagnosticsUnderlineWarning =
    hl.plugins.lsp.DiagnosticUnderlineWarn
  hl.plugins.lsp.LspDiagnosticsVirtualTextError =
    hl.plugins.lsp.DiagnosticVirtualTextError
  hl.plugins.lsp.LspDiagnosticsVirtualTextWarning =
    hl.plugins.lsp.DiagnosticVirtualTextWarn
  hl.plugins.lsp.LspDiagnosticsVirtualTextInformation =
    hl.plugins.lsp.DiagnosticVirtualTextInfo
  hl.plugins.lsp.LspDiagnosticsVirtualTextHint =
    hl.plugins.lsp.DiagnosticVirtualTextHint

  hl.plugins.ale = {
    ALEErrorSign = hl.plugins.lsp.DiagnosticError,
    ALEInfoSign = hl.plugins.lsp.DiagnosticInfo,
    ALEWarningSign = hl.plugins.lsp.DiagnosticWarn,
  }

  hl.plugins.barbar = {
    BufferCurrent = { fmt = 'bold' },
    BufferCurrentMod = { fg = c.orange, fmt = 'bold,italic' },
    BufferCurrentSign = { fg = c.purple },
    BufferInactiveMod = { fg = c.light_grey, bg = c.bg1, fmt = 'italic' },
    BufferVisible = { fg = c.light_grey, bg = c.bg0 },
    BufferVisibleMod = { fg = c.yellow, bg = c.bg0, fmt = 'italic' },
    BufferVisibleIndex = { fg = c.light_grey, bg = c.bg0 },
    BufferVisibleSign = { fg = c.light_grey, bg = c.bg0 },
    BufferVisibleTarget = { fg = c.light_grey, bg = c.bg0 },
  }

  hl.plugins.cmp = {
    CmpItemAbbr = colors.Fg,
    CmpItemAbbrDeprecated = { fg = c.light_grey, fmt = 'strikethrough' },
    CmpItemAbbrMatch = colors.Cyan,
    CmpItemAbbrMatchFuzzy = { fg = c.cyan, fmt = 'underline' },
    CmpItemMenu = colors.LightGrey,
    CmpItemKind = { fg = c.purple, fmt = cfg.cmp_itemkind_reverse and 'reverse' },
    CmpItemKindCopilot = {
      fg = c.fg,
      fmt = cfg.cmp_itemkind_reverse and 'reverse',
    },
    CmpItemKindCodeium = {
      fg = c.fg,
      fmt = cfg.cmp_itemkind_reverse and 'reverse',
    },
    CmpItemKindTabNine = {
      fg = c.fg,
      fmt = cfg.cmp_itemkind_reverse and 'reverse',
    },
  }

  hl.plugins.coc = {
    CocErrorSign = hl.plugins.lsp.DiagnosticError,
    CocHintSign = hl.plugins.lsp.DiagnosticHint,
    CocInfoSign = hl.plugins.lsp.DiagnosticInfo,
    CocWarningSign = hl.plugins.lsp.DiagnosticWarn,
  }

  hl.plugins.whichkey = {
    WhichKey = colors.Red,
    WhichKeyDesc = colors.Blue,
    WhichKeyGroup = colors.Orange,
    WhichKeySeparator = colors.Green,
  }

  hl.plugins.gitgutter = {
    GitGutterAdd = { fg = c.green },
    GitGutterChange = { fg = c.blue },
    GitGutterDelete = { fg = c.red },
  }

  hl.plugins.hop = {
    HopNextKey = { fg = c.red, fmt = 'bold' },
    HopNextKey1 = { fg = c.cyan, fmt = 'bold' },
    HopNextKey2 = { fg = util.darken(c.blue, 0.7) },
    HopUnmatched = colors.Grey,
  }

  hl.plugins.diffview = {
    DiffviewCursorLine = { link = 'CursorLine' },
    DiffviewEndOfBuffer = { link = 'EndOfBuffer' },
    DiffviewFilePanelCounter = { fg = c.purple, fmt = 'bold' },
    DiffviewFilePanelDeletions = colors.Red,
    DiffviewFilePanelFileName = colors.Fg,
    DiffviewFilePanelInsertions = colors.Green,
    DiffviewFilePanelPath = colors.Grey,
    DiffviewFilePanelRootPath = colors.Grey,
    DiffviewFilePanelTitle = { fg = c.blue, fmt = 'bold' },
    DiffviewHash = { link = 'Constant' },
    DiffviewNormal = { link = 'Normal' },
    DiffviewSignColumn = { link = 'SignColumn' },
    DiffviewStatusAdded = colors.Green,
    DiffviewStatusBroken = colors.Red,
    DiffviewStatusCopied = colors.Blue,
    DiffviewStatusDeleted = colors.Red,
    DiffviewStatusLine = { link = 'StatusLine' },
    DiffviewStatusLineNC = { link = 'StatusLineNC' },
    DiffviewStatusModified = colors.Blue,
    DiffviewStatusRenamed = colors.Blue,
    DiffviewStatusTypeChange = colors.Blue,
    DiffviewStatusUnknown = colors.Red,
    DiffviewStatusUnmerged = colors.Blue,
    DiffviewStatusUntracked = colors.Yellow,
    DiffviewVertSplit = { link = 'VertSplit' },
  }

  hl.plugins.gitsigns = {
    GitSignsAdd = colors.Green,
    GitSignsAddLn = colors.Green,
    GitSignsAddNr = colors.Green,
    GitSignsChange = colors.Blue,
    GitSignsChangeLn = colors.Blue,
    GitSignsChangeNr = colors.Blue,
    GitSignsDelete = colors.Red,
    GitSignsDeleteLn = colors.Red,
    GitSignsDeleteNr = colors.Red,
    GitSignsUntracked = colors.Yellow,
    GitSignsUntrackedLn = colors.Yellow,
    GitSignsUntrackedNr = colors.Yellow,
  }

  hl.plugins.lazy = {
    LazyReasonColorscheme = { fg = light_blue },
    LazyReasonCmd = colors.Green,
    LazyReasonFt = colors.Yellow,
    LazyReasonSource = colors.Blue,
    LazyReasonStart = { fg = c.cyan, fmt = 'bold' },
    LazyReasonTask = { fg = c.light_grey, fmt = 'bold' },
    LazyH2 = { fg = c.blue, fmt = 'bold' },
    LazyUrl = { fg = c.cyan, fmt = 'underline' },
  }

  hl.plugins.neo_tree = {
    NeoTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
    NeoTreeNormalNC = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
    NeoTreeVertSplit = { fg = c.bg1, bg = cfg.transparent and c.none or c.bg1 },
    NeoTreeWinSeparator = { fg = c.bg1, bg = cfg.transparent and c.none or c.bg1 },
    NeoTreeEndOfBuffer = {
      fg = cfg.ending_tildes and c.bg2 or c.bg_d,
      bg = cfg.transparent and c.none or c.bg_d,
    },
    NeoTreeRootName = { fg = c.orange, fmt = 'bold' },
    NeoTreeGitAdded = colors.Green,
    NeoTreeGitDeleted = colors.Red,
    NeoTreeGitModified = colors.Yellow,
    NeoTreeGitConflict = { fg = c.red, fmt = 'bold,italic' },
    NeoTreeGitUntracked = { fg = c.red, fmt = 'italic' },
    NeoTreeIndentMarker = colors.Grey,
    NeoTreeSymbolicLinkTarget = colors.Purple,
    NeoTreeTitleBar = { fg = c.bg0, bg = c.purple },
    NeoTreeFloatTitle = { link = 'FloatTitle' },
    NeoTreeFloatBorder = { link = 'FloatBorder' },
  }

  hl.plugins.neotest = {
    NeotestAdapterName = { fg = c.purple, fmt = 'bold' },
    NeotestDir = colors.Cyan,
    NeotestExpandMarker = colors.Grey,
    NeotestFailed = colors.Red,
    NeotestFile = colors.Cyan,
    NeotestFocused = { fmt = 'bold,italic' },
    NeotestIndent = colors.Grey,
    NeotestMarked = { fg = c.orange, fmt = 'bold' },
    NeotestNamespace = colors.Blue,
    NeotestPassed = colors.Green,
    NeotestRunning = colors.Yellow,
    NeotestWinSelect = { fg = c.cyan, fmt = 'bold' },
    NeotestSkipped = colors.LightGrey,
    NeotestTarget = colors.Purple,
    NeotestTest = colors.Fg,
    NeotestUnknown = colors.LightGrey,
  }

  hl.plugins.nvim_tree = {
    NvimTreeNormal = { fg = c.fg, bg = normal_bg },
    NvimTreeVertSplit = { fg = c.bg_d, bg = cfg.transparent and c.none or c.bg_d },
    NvimTreeRootFolder = { fg = c.orange, fmt = 'bold' },
    NvimTreeGitDirty = colors.Yellow,
    NvimTreeGitNew = colors.Green,
    NvimTreeGitDeleted = colors.Red,
    NvimTreeSpecialFile = { fg = c.yellow, fmt = 'underline' },
    NvimTreeSignColumn = { fmt = 'nocombine' },
    NvimTreeIndentMarker = colors.Fg,
    NvimTreeImageFile = { fg = c.dark_purple },
    NvimTreeSymlink = colors.Purple,
    NvimTreeFolderName = colors.Blue,
  }

  hl.plugins.telescope = {
    TelescopeBorder = colors.Red,
    TelescopePromptBorder = colors.Purple,
    TelescopeResultsBorder = colors.Purple,
    TelescopePreviewBorder = colors.Purple,
    TelescopeMatching = { fg = c.orange, fmt = 'bold' },
    TelescopePromptPrefix = colors.Green,
    TelescopeSelection = { bg = c.bg2 },
    TelescopeSelectionCaret = { fg = c.orange, bg = c.bg2, fmt = 'bold' },
  }

  hl.plugins.dashboard = {
    DashboardShortCut = colors.Blue,
    DashboardHeader = colors.Yellow,
    DashboardCenter = colors.Cyan,
    DashboardFooter = { fg = c.dark_red, fmt = 'italic' },
    DashboardMruTitle = colors.Cyan,
    DashboardProjectTitle = colors.Cyan,
    DashboardFiles = colors.Fg,
    DashboardKey = colors.Orange,
    DashboardDesc = colors.Purple,
    DashboardIcon = colors.Purple,
  }

  hl.plugins.outline = {
    FocusedSymbol = { fg = c.purple, bg = c.bg2, fmt = 'bold' },
    AerialLine = { fg = c.purple, bg = c.bg2, fmt = 'bold' },
  }

  hl.plugins.navic = {
    NavicText = { fg = c.fg },
    NavicSeparator = { fg = c.light_grey },
  }

  hl.plugins.ts_rainbow = {
    rainbowcol1 = colors.Red,
    rainbowcol2 = colors.Yellow,
    rainbowcol3 = colors.Blue,
    rainbowcol4 = colors.Orange,
    rainbowcol5 = { fg = util.blend(c.fg, c.green, 0.375) },
    rainbowcol6 = colors.Purple,
    rainbowcol7 = colors.Cyan,
  }

  hl.plugins.ts_rainbow2 = {
    TSRainbowRed = { link = 'rainbowcol1' },
    TSRainbowYellow = { link = 'rainbowcol2' },
    TSRainbowBlue = { link = 'rainbowcol3' },
    TSRainbowOrange = { link = 'rainbowcol4' },
    TSRainbowGreen = { link = 'rainbowcol5' },
    TSRainbowViolet = { link = 'rainbowcol6' },
    TSRainbowCyan = { link = 'rainbowcol7' },
  }

  hl.plugins.rainbow_delimiters = {
    RainbowDelimiterRed = { link = 'rainbowcol1' },
    RainbowDelimiterYellow = { link = 'rainbowcol2' },
    RainbowDelimiterBlue = { link = 'rainbowcol3' },
    RainbowDelimiterOrange = { link = 'rainbowcol4' },
    RainbowDelimiterGreen = { link = 'rainbowcol5' },
    RainbowDelimiterViolet = { link = 'rainbowcol6' },
    RainbowDelimiterCyan = { link = 'rainbowcol7' },
  }

  hl.plugins.indent_blankline = {
    IndentBlanklineIndent1 = colors.Blue,
    IndentBlanklineIndent2 = colors.Green,
    IndentBlanklineIndent3 = colors.Cyan,
    IndentBlanklineIndent4 = colors.LightGrey,
    IndentBlanklineIndent5 = colors.Purple,
    IndentBlanklineIndent6 = colors.Red,
    IndentBlanklineChar = { fg = c.bg1, fmt = 'nocombine' },
    IndentBlanklineContextChar = { fg = c.light_grey, fmt = 'nocombine' },
    IndentBlanklineContextStart = { bg = c.bg1 },
    IndentBlanklineContextSpaceChar = { fmt = 'nocombine' },
    IblIndent = { fg = c.grey, fmt = 'nocombine' },
    IblScope = { fg = c.light_grey, fmt = 'nocombine' },
  }

  hl.plugins.mini = {
    MiniCompletionActiveParameter = { fmt = 'underline' },

    MiniCursorword = { fmt = 'underline' },
    MiniCursorwordCurrent = { fmt = 'underline' },

    MiniIndentscopeSymbol = { fg = c.light_grey },
    MiniIndentscopePrefix = { fmt = 'nocombine' }, -- Make it invisible

    MiniJump = { fg = c.purple, fmt = 'underline', sp = c.purple },

    MiniJump2dSpot = { fg = c.red, fmt = 'bold,nocombine' },

    MiniStarterCurrent = { fmt = 'nocombine' },
    MiniStarterFooter = { fg = c.dark_red, fmt = 'italic' },
    MiniStarterHeader = colors.Yellow,
    MiniStarterInactive = { fg = c.grey, fmt = cfg.code_style.comments },
    MiniStarterItem = { fg = c.fg, bg = normal_bg },
    MiniStarterItemBullet = { fg = c.grey },
    MiniStarterItemPrefix = { fg = c.yellow },
    MiniStarterSection = colors.LightGrey,
    MiniStarterQuery = { fg = c.cyan },

    MiniStatuslineDevinfo = { fg = c.fg, bg = c.bg2 },
    MiniStatuslineFileinfo = { fg = c.fg, bg = c.bg2 },
    MiniStatuslineFilename = { fg = c.grey, bg = c.bg1 },
    MiniStatuslineInactive = { fg = c.grey, bg = c.bg0 },
    MiniStatuslineModeCommand = { fg = c.bg0, bg = c.yellow, fmt = 'bold' },
    MiniStatuslineModeInsert = { fg = c.bg0, bg = c.blue, fmt = 'bold' },
    MiniStatuslineModeNormal = { fg = c.bg0, bg = c.green, fmt = 'bold' },
    MiniStatuslineModeOther = { fg = c.bg0, bg = c.cyan, fmt = 'bold' },
    MiniStatuslineModeReplace = { fg = c.bg0, bg = c.red, fmt = 'bold' },
    MiniStatuslineModeVisual = { fg = c.bg0, bg = c.purple, fmt = 'bold' },

    MiniSurround = { fg = c.bg0, bg = c.orange },

    MiniTablineCurrent = { fmt = 'bold' },
    MiniTablineFill = { fg = c.grey, bg = c.bg1 },
    MiniTablineHidden = { fg = c.fg, bg = c.bg1 },
    MiniTablineModifiedCurrent = { fg = c.orange, fmt = 'bold,italic' },
    MiniTablineModifiedHidden = { fg = c.light_grey, bg = c.bg1, fmt = 'italic' },
    MiniTablineModifiedVisible = { fg = c.yellow, bg = c.bg0, fmt = 'italic' },
    MiniTablineTabpagesection = { fg = c.bg0, bg = c.bg_yellow },
    MiniTablineVisible = { fg = c.light_grey, bg = c.bg0 },

    MiniTestEmphasis = { fmt = 'bold' },
    MiniTestFail = { fg = c.red, fmt = 'bold' },
    MiniTestPass = { fg = c.green, fmt = 'bold' },

    MiniTrailspace = { bg = c.red },
  }

  hl.plugins.notify = {
    NotifyBackground = { bg = c.bg0 },
    NotifyERRORBorder = { link = 'DiagnosticError' },
    NotifyWARNBorder = { link = 'DiagnosticWarn' },
    NotifyINFOBorder = { link = 'DiagnosticInfo' },
    NotifyHINTBorder = { link = 'DiagnosticHint' },
    NotifyDEBUGBorder = { link = 'Debug' },
    NotifyTRACEBorder = { link = 'Comment' },
    NotifyERRORIcon = { link = 'DiagnosticError' },
    NotifyWARNIcon = { link = 'DiagnosticWarn' },
    NotifyINFOIcon = { link = 'DiagnosticInfo' },
    NotifyHINTIcon = { link = 'DiagnosticHint' },
    NotifyDEBUGIcon = { link = 'Debug' },
    NotifyTRACEIcon = { link = 'Comment' },
    NotifyERRORTitle = { link = 'DiagnosticError' },
    NotifyWARNTitle = { link = 'DiagnosticWarn' },
    NotifyINFOTitle = { link = 'DiagnosticInfo' },
    NotifyHINTTitle = { link = 'DiagnosticHint' },
    NotifyDEBUGTitle = { link = 'Debug' },
    NotifyTRACETitle = { link = 'Comment' },
  }

  hl.plugins.matchup = {
    MatchWord = { fmt = 'underline' },
  }

  hl.langs.c = {
    cInclude = colors.Blue,
    cStorageClass = colors.Purple,
    cTypedef = colors.Purple,
    cDefine = colors.Cyan,
    cTSInclude = colors.Blue,
    cTSConstMacro = colors.Purple,
  }

  hl.langs.cpp = {
    cppStatement = { fg = c.purple, fmt = 'bold' },
    cppTSInclude = colors.Blue,
    cppTSConstMacro = colors.Purple,
  }

  hl.langs.markdown = {
    markdownBlockquote = { link = 'Special' },
    markdownBold = { fg = c.none, fmt = 'bold' },
    markdownBoldDelimiter = { link = 'Delimiter' },
    markdownCode = colors.Green,
    markdownCodeBlock = colors.Green,
    markdownCodeDelimiter = colors.Yellow,
    markdownH1 = { fg = c.red, fmt = 'bold' },
    markdownH2 = { fg = c.yellow, fmt = 'bold' },
    markdownH3 = { fg = c.green, fmt = 'bold' },
    markdownH4 = { fg = c.cyan, fmt = 'bold' },
    markdownH5 = { fg = c.blue, fmt = 'bold' },
    markdownH6 = { fg = c.purple, fmt = 'bold' },
    markdownHeadingDelimiter = colors.Orange,
    markdownHeadingRule = colors.Orange,
    markdownId = colors.Yellow,
    markdownIdDeclaration = colors.Red,
    markdownItalic = { fg = c.none, fmt = 'italic' },
    markdownItalicDelimiter = { fg = c.light_grey, fmt = 'italic' },
    markdownLinkDelimiter = { link = 'Delimiter' },
    markdownLinkText = colors.Blue,
    markdownLinkTextDelimiter = { link = 'Delimiter' },
    markdownListMarker = colors.Red,
    markdownOrderedListMarker = colors.Red,
    markdownRule = colors.Purple,
    markdownUrl = { fg = c.cyan, fmt = 'underline' },
    markdownUrlDelimiter = { link = 'Delimiter' },
    markdownUrlTitleDelimiter = colors.Green,
  }

  hl.langs.php = {
    phpFunctions = { fg = c.fg, fmt = cfg.code_style.functions },
    phpMethods = colors.Cyan,
    phpStructure = colors.Purple,
    phpMemberSelector = colors.Fg,
    phpVarSelector = { fg = c.orange, fmt = cfg.code_style.variables },
    phpIdentifier = { fg = c.orange, fmt = cfg.code_style.variables },
    phpBoolean = colors.Cyan,
    phpHereDoc = colors.Green,
    phpNowDoc = colors.Green,
    phpSCKeyword = { fg = c.purple, fmt = cfg.code_style.keywords },
    phpFCKeyword = { fg = c.purple, fmt = cfg.code_style.keywords },
    phpRegion = colors.Blue,
  }

  hl.langs.scala = {
    scalaNameDefinition = colors.Fg,
    scalaInterpolationBoundary = colors.Purple,
    scalaInterpolation = colors.Purple,
    scalaTypeOperator = colors.Red,
    scalaOperator = colors.Red,
    scalaKeywordModifier = { fg = c.red, fmt = cfg.code_style.keywords },
  }

  hl.langs.tex = {
    latexTSInclude = colors.Blue,
    latexTSFuncMacro = { fg = c.fg, fmt = cfg.code_style.functions },
    texCmdEnv = colors.Cyan,
    texEnvArgName = colors.Yellow,
    latexTSTitle = colors.Green,
    latexTSType = colors.Blue,
    latexTSMath = colors.Orange,
    texMathZoneX = colors.Orange,
    texMathZoneXX = colors.Orange,
    texMathDelimZone = colors.LightGrey,
    texMathDelim = colors.Purple,
    texMathOper = colors.Red,
    texCmd = colors.Purple,
    texCmdPart = colors.Blue,
    texCmdPackage = colors.Blue,
    texPgfType = colors.Yellow,
  }

  hl.langs.vim = {
    vimOption = colors.Red,
    vimSetEqual = colors.Yellow,
    vimMap = colors.Purple,
    vimMapModKey = colors.Orange,
    vimNotation = colors.Red,
    vimMapLhs = colors.Fg,
    vimMapRhs = colors.Blue,
    vimVar = { fg = c.fg, fmt = cfg.code_style.variables },
    vimCommentTitle = { fg = c.yellow, fmt = cfg.code_style.comments },
  }

  local lsp_kind_icons_color = {
    Default = c.purple,
    Array = c.yellow,
    Boolean = c.orange,
    Class = c.yellow,
    Color = c.green,
    Constant = c.orange,
    Constructor = c.blue,
    Enum = c.purple,
    EnumMember = c.yellow,
    Event = c.yellow,
    Field = c.purple,
    File = c.blue,
    Folder = c.orange,
    Function = c.blue,
    Interface = c.green,
    Key = c.cyan,
    Keyword = c.cyan,
    Method = c.blue,
    Module = c.orange,
    Namespace = c.red,
    Null = c.grey,
    Number = c.orange,
    Object = c.red,
    Operator = c.red,
    Package = c.yellow,
    Property = c.cyan,
    Reference = c.orange,
    Snippet = c.red,
    String = c.green,
    Struct = c.purple,
    Text = c.light_grey,
    TypeParameter = c.red,
    Unit = c.green,
    Value = c.orange,
    Variable = c.purple,
  }



    #
  */
}
