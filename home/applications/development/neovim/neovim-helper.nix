{
  pkgs,
  lib,
  fullConfig,
  g,
  neovim-nightly,
  py,
  node,
  ...
}: let
  features = import ./features {inherit pkgs lib g;};
  languages = import ./languages {inherit pkgs lib g;};
  getLangs = tmp: tmp;
  getFeats = tmp: tmp;

  selectPackages = neovimConfig: let
    langs = getLangs neovimConfig;
    feats = getFeats neovimConfig;
  in
    builtins.concatLists (
      (map (langName: languages.${langName}.packages) langs)
      ++ (map (featName: features.${featName}.packages) feats)
    );

  createNeovimHMProgramSet = neovimConfig: let
    langs = getLangs neovimConfig;
    feats = getFeats neovimConfig;
  in {
    enable = true;
    defaultEditor = true;
    withPython3 = true;
    withNodeJs = true;
    withRuby = false;
    package = neovim-nightly; #pkgs.neovim-unwrapped;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    plugins = builtins.concatLists (
      (map (langName: languages.${langName}.plugins) langs)
      ++ (map (featName: features.${featName}.plugins) feats)
    );
  };

  createNeovimLuaFiles = neovimConfig: features: languages: let
    langs = getLangs neovimConfig;
    feats = getFeats neovimConfig;
  in
    (import ./config-base-files {inherit neovimConfig;})
    // (lib.attrsets.mapAttrs' (
        _: origValue:
        # every value or attrSets `languages` and `features` must have attributes `subpathString` ( -> key in xdg.configFile) and mkLuaConfig (function taking (optional) list of languages and returning Lua file)
          lib.mkIf (builtins.typeOf origValue.subpathString)
          == "string"
          {
            name = origValue.subpathString;
            value = origValue.mkLuaConfig {inherit languages;};
          }
      )
      (features // languages)); # no overlap between attrNames
in
  {
    pkgs,
    lib,
    g,
    neovimConfig,
  }: {
    home.packages = selectPackages neovimConfig;
    programs.neovim = createNeovimHMProgramSet neovimConfig;
    xdg.configFile = createNeovimLuaFiles neovimConfig;
  }
