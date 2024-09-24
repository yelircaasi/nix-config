{lib}: let
  keys = (import ./primitives.nix).keys;

  alphabetLowercase = [
    "a"
    "b"
    "c"
    "d"
    "e"
    "f"
    "g"
    "h"
    "i"
    "j"
    "k"
    "l"
    "m"
    "n"
    "o"
    "p"
    "q"
    "r"
    "s"
    "t"
    "u"
    "v"
    "w"
    "x"
    "y"
    "z"
  ];

  alphabetUppercase = [
    "A"
    "B"
    "C"
    "D"
    "E"
    "F"
    "G"
    "H"
    "I"
    "J"
    "K"
    "L"
    "M"
    "N"
    "O"
    "P"
    "Q"
    "R"
    "S"
    "T"
    "U"
    "V"
    "W"
    "X"
    "Y"
    "Z"
  ];

  withDefault = defaultValue: attrSet: attrName:
    if builtins.elem attrName (builtins.attrNames attrSet)
    then attrSet.${attrName}
    else defaultValue;

  getKeyName = keyNameAttrSet: keyName: if builtins.hasAttr keyName keyNameAttrSet 
    then keyNameAttrSet.${keyName} else "__ERROR__"; #(keyNameAttrSet // {LOOKUPNAME = keyName;});

  getKeyNameWithDefault = keyNameAttrSet: keyName: withDefault keyName keyNameAttrSet keyName;

  getKeyNameFor = attrNames: keyNameAttrSet: keyName:
    if (builtins.elem keyName (builtins.attrNames keyNameAttrSet))
    then (keyNameAttrSet.${keyName})
    else keyName;

  alphabet = with keys; [a b c d e f g h i j k l m n o p q r s t u v w x y z];
  alphabetToLowercase = {
    A = "a";
    B = "b";
    C = "c";
    D = "d";
    E = "e";
    F = "f";
    G = "g";
    H = "h";
    I = "i";
    J = "j";
    K = "k";
    L = "l";
    M = "m";
    N = "n";
    O = "o";
    P = "p";
    Q = "q";
    R = "r";
    S = "s";
    T = "t";
    U = "u";
    V = "v";
    W = "w";
    X = "x";
    Y = "y";
    Z = "z";
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
  }; #lib.attrsets.genAttrs (name: lib.strings.toLower name) alphabetUppercase;
  alphabetToUppercase = {
    A = "A";
    B = "B";
    C = "C";
    D = "D";
    E = "E";
    F = "F";
    G = "G";
    H = "H";
    I = "I";
    J = "J";
    K = "K";
    L = "L";
    M = "M";
    N = "N";
    O = "O";
    P = "P";
    Q = "Q";
    R = "R";
    S = "S";
    T = "T";
    U = "U";
    V = "V";
    W = "W";
    X = "X";
    Y = "Y";
    Z = "Z";
    a = "A";
    b = "B";
    c = "C";
    d = "D";
    e = "E";
    f = "F";
    g = "G";
    h = "H";
    i = "I";
    j = "J";
    k = "K";
    l = "L";
    m = "M";
    n = "N";
    o = "O";
    p = "P";
    q = "Q";
    r = "R";
    s = "S";
    t = "T";
    u = "U";
    v = "V";
    w = "W";
    x = "X";
    y = "Y";
    z = "Z";
  }; #lib.attrsets.genAttrs (name: lib.strings.toUpper name) alphabet;

  renameValuesRecursive = attrNameList: func: attrSet:
    lib.attrsets.mapAttrsRecursive
    (path: value:
      if (builtins.elem (lib.lists.last path) attrNameList)
      then (func value)
      else value)
    attrSet;

  defaultAttrNames = ["key" "mod" "prefix" "suffix"];

  mkFormatter = appName: renameValuesRecursive defaultAttrNames (getKeyName nameMaps.${appName});

  # wezterm
  getWeztermName = weztermLegend: getKeyName weztermLegend;

  makeWeztermMods = prefix: mod: let
    conjunction =
      if (((builtins.stringLength prefix) > 0) && ((builtins.stringLength mod) > 0))
      then "|"
      else "";
  in "${prefix}${conjunction}${mod}";

  formatWeztermBinding = weztermLegend: weztermBindingSet: let
    weztermLookup = getKeyNameWithDefault weztermLegend;
    weztermBinding = lib.attrsets.mapAttrs (name: value: weztermLookup value) weztermBindingSet;
    prefix = withDefault keys.none weztermBinding "prefix";

    mod = withDefault keys.none weztermBinding "mod";
    base = weztermBinding.base;
    action = weztermBinding.commandText;
    mods = makeWeztermMods prefix mod;
  in rec {
    inherit weztermBinding;
    luaString = "{ key = ${base}, mods = ${mods}, action = ${action} }";
  };

  # nvim
  makeVimString = nvimBinding: "";

  formatNvimBinding = nvimLegend: nvimBindingSet: let
    nvimBinding = (getKeyName nvimLegend) nvimBindingSet;
    mode = "";
    vimString = makeVimString nvimBinding;
    command = nvimBinding.commandString;
  in {
    inherit nvimBinding;
    luaString = "vim.keymap.set('${mode}', '${vimString}', ${command}, {noremap = true})";
  };

  # convertwezterm = weztermLegend: weztermMappings: lib.attrsets.mapAttrs (formatWeztermBinding nameMaps.wezterm);
  convertApp = appBindingConverter: appMappingDefinitions: lib.attrsets.mapAttrs appBindingConverter appMappingDefinitions;

  weztermAppBindingConverter = (name: value: (formatWeztermBinding nameMaps.wezterm) value);

  nameMaps = {
    sway = {
      ${keys.ctrl} = "mod1";
    };

    nvim = {
      inherit (alphabetLowercase);
    };

    hyprland = {
      ${keys.super} = "SUPER";
      ${keys.shift} = "SHIFT";
      # mainMod = "$mainMod"
      # inherit (alphabetUppercase);
      inherit (alphabetLowercase);
    } // keys;

    kanata = {
      inherit (alphabetLowercase);

      ${keys.none} = "NONE";
    };

    wezterm =
      keys
      // {
        LEADER = "LEADER";

        ${keys.shift} = "SHIFT";
        ${keys.super} = "SUPER";
        leftSquareBracket = "leftSquareBracket";
        rightSquareBracket = "rightSquareBracket";
      };
  };
in
  (
    lib.attrsets.genAttrs
    [
      "sway"
      "hyprland"
      "kanata"
    ]
    (name: mkFormatter name)
    # (name: "hello_${name}")
  )
  // {
    # functions to format base keynames into the app-specific config format

    nvim = convertApp (name: value: (formatNvimBinding nameMaps.nvim) value);
    wezterm = convertApp weztermAppBindingConverter;

    # wezterm = let wtFormatter = formatWeztermBinding nameMaps.wezterm; in lib.attrsets.mapAttrs wtFormatter;
  }
