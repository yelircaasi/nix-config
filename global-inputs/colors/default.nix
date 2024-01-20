{lib}: let
  # base - follows the general base16 structure
  base00 = "#031A16";  # background
  base01 = "#0B342D";  # lighter background
  base02 = "#184E45";  # selection background
  base03 = "#2B685E";  # comments, invisibles, line highlighting
  base04 = "#5F9C92";  # dark foreground (used for status bars)
  base05 = "#81B5AC";  # default foreground, caret, delimiters, operators
  base06 = "#A7CEC8";  # light foreground (not often used)
  base07 = "#D2E7E4";  # light background (not often used)
  base08 = "#3E9688";  # variables, xml tags, markup link text, markup lists, diff deleted
  base09 = "#3E7996";  # integers, boolean, constants, xml attributes, markup link url
  base0A = "#3E4C96";  # classes, Markup Bold, Search Text Background
  base0B = "#883E96";  # strings, inherited class, markup code, diff inserted
  base0C = "#963E4C";  # support, regular expressions, escape characters, markup quotes
  base0D = "#96883E";  # functions, methods, attribute ids, headings
  base0E = "#4C963E";  # keywords, storage, selector, markup italic, diff changed
  base0F = "#3E965B";  # deprecated, opening/closing embedded language tags, e.g. <?php ?>
in rec {
 
  # defaults to be used unless overriden; basically just intuitive aliases =======
  bg = base00;
  fg = base05;
  defaultBorder = base01;

  # general
  windowBorder = defaultBorder;
  #lines-inactive = lib.colorAverage bg defaultBorder;
  lineSeparator = defaultBorder;

  # applications
  # terminal

  # terminal.wezterm

  # syntax highlighting rules ====================================================
/*  syntax-colors
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


  #
  */
}
