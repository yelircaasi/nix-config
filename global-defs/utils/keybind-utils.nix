{lib, ...}: let
  p = import ../keybindings/default.nix;
  keys = p.keys;
  width = 8;
  toKanata = (import ../keybindings/keyname-formatters.nix).kanata;
in rec {
  rightPad = fixedWidth: s: let
    len = builtins.stringLength s;
    tail = lib.concatStrings (lib.replicate (fixedWidth - len) " ");
  in "${s}${tail}";

  mkKeyboard = keybindAttrSet: sourceKeyboard: let
    physical = map (pad (width + 2)) (map (char: "<${char}>") (builtins.attrNames keybindAttrSet));
    semantic = map (pad width) (builtins.attrValues keybindAttrSet);
  in
    builtins.replaceStrings
    physical
    semantic
    sourceKeyboard;

  mkDefcfg = k: ''
    danger-enable-cmd yes
    delegate-to-first-layer yes
  '';
  mkModifierAliases = k: [];
  mkCommandAliases = k: [];
  mkSimpleAliases = k: [];
  mkLocalKeyDefs = k: {};
  mkVarDefs = k: {};

  mkKanataConfig = k: source:
  # k: kanata keybindings
  let
    defcfg = mkDefcfg k;
    sourceSExpression = sExpressionFromSource source;
    mkKeyboardAdHoc = mkKeyboard source;
    layersSExpression = joinWithBlankLine (map mkKeyboardHere (builtins.attrValues k.layers));
    makeAliases = k: (makeModifierAliases k) ++ (makeCommandAliases k) ++ (makeStringAliases k);
    aliasesSExpression = joinLines (makeAliases k);
    #
  in ''
    ${defcfg}

    ${sourceSExpression}

    ${layersSExpression}

    ${aliasesSExpression}
  '';
}
