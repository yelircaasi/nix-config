{lib}: let
  keys = (import ./primitives.nix).keys;
  getKeyName = keyNameAttrSet: keyName: keyNameAttrSet.${keyName};

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
    weztermBinding = (getKeyName weztermLegend) weztermBindingSet;
    prefix = lib.mkdDefault weztermBinding.prefix;
    mod = lib.mkDefault weztermBinding.mod;
    base = getWeztermName weztermBinding.base;
    action = weztermBinding.commandText;
    mods = makeWeztermMods prefix mod;
  in {
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
  convertApp = appBindingConverter: appMappingSet: lib.attrsets.mapAttrs appBindingConverter appMappingSet;

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
    };

    wezterm = {};
  };
in
  (lib.attrsets.genAttrs
    (name: mkFormatter name) [
      "sway"
      "hyprland"
      "kanata"
    ])
  // {
    nvim = convertApp (formatNvimBinding nameMaps.nvim);
    wezterm = convertApp (formatWeztermBinding nameMaps.wezterm);
  }
