{lib}: let
  keys = (import ./primitives.nix).keys;

  withDefault = defaultValue: attrSet: attrName:
    if builtins.elem attrName (builtins.attrNames attrSet)
    then attrSet.${attrName}
    else defaultValue;

  getKeyName = keyNameAttrSet: keyName: keyNameAttrSet.${keyName};

  getKeyNameWithDefault = keyNameAttrSet: keyName: withDefault keyName keyNameAttrSet keyName;

  getKeyNameFor = attrNames: keyNameAttrSet: keyName:
    if (builtins.elem keyName (builtins.attrNames keyNameAttrSet))
    then (keyNameAttrSet.${keyName})
    else keyName;

  alphabet = with keys; [a b c d e f g h i j k l m n o p q r s t u v w x y z];
  alphabetToLowercase = lib.attrsets.genAttrs (name: lib.strings.toLower name) alphabet;
  alphabetToUppercase = lib.attrsets.genAttrs (name: lib.strings.toUpper name) alphabet;

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

  nameMaps = {
    sway = {
      ${keys.ctrl} = "mod1";
    };

    nvim = {
      inherit (alphabetLowercase);
    };

    hyprland = {
      super = "SUPER";
      # mainMod = "$mainMod"
      inherit (alphabetUppercase);
    };

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
    nvim = convertApp (name: value: (formatNvimBinding nameMaps.nvim) value);
    wezterm = convertApp (name: value: (formatWeztermBinding nameMaps.wezterm) value);

    # wezterm = let wtFormatter = formatWeztermBinding nameMaps.wezterm; in lib.attrsets.mapAttrs wtFormatter;
  }
