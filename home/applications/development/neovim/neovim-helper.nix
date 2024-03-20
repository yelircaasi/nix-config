{
  pkgs,
  lib,
  neovimConfig,
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
  langs = getLangs neovimConfig;
  feats = getFeats neovimConfig;

  selectPackages = neovimConfig:
    builtins.concatLists (
      (map (langName: languages.${langName}.packages) langs)
      ++ (map (featName: features.${featName}.packages) feats)
    );

  createNeovimHMProgramSet = neovimConfig: {
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

  createNeovimLuaFiles = neovimConfig: features: languages:
  #TODO: refactor
    (import ./config-base-files {inherit neovimConfig;})
    // (lib.attrsets.mapAttrs' (
        featName: origValue:
          lib.mkIf (builtins.elem featName feats)
          {
            name = "./nvim/lua/features/${featName}.lua"; # need to fix to create path automatically?
            value = origValue.mkLuaConfig {};
          }
      )
      features)
    // (lib.attrsets.mapAttrs' (
        langName: origValue:
          lib.mkIf (builtins.elem langName langs)
          {
            name = "./nvim/lua/languages/${langName}.lua"; # need to fix to create path automatically?
            value = origValue.mkLuaConfig {inherit languages;};
          }
      )
      languages)
    // (lib.attrsets.mapAttrs' (
        featName: origValue:
          lib.mkIf ((builtins.elem featName feats) && (builtins.hasAttr "mkOptionalPackage" origValue))
          {
            name = "./nvim/pack/features/opt/${featName}"; # need to fix to create path automatically?
            value = origValue.mkOptionalPackage {};
          }
      )
      features)
    // (lib.attrsets.mapAttrs' (
        langName: origValue:
          lib.mkIf ((builtins.elem langName feats) && (builtins.hasAttr "mkOptionalPackage" origValue))
          {
            name = "./nvim/pack/features/opt/${langName}"; # need to fix to create path automatically?
            value = origValue.mkOptionalPackage {};
          }
      )
      languages); # no overlap between attrNames
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
