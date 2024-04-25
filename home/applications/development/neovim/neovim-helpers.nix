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
  let
# ---------------- other function --------------------
mkOptPluginsFromPackages = pluginPkgList: 
  map 
    (pkg: {optional = true; plugin = pkg;}) 
    pluginPkgList;
# ----------------------------------------------------

/* combine attrSets as expansively as possible,  
    merging attrSet values and concatenating array values */
mergeAttrs = with lib; attrSetList:
  let f = attrPath:
    builtins.zipAttrsWith (n: values:
      if tail values == []
        then head values
      else if all isList values
        then unique (concatLists values)
      else if all isAttrs values
        then f (attrPath ++ [n]) values
      else last values
    );
  in f [] attrSetList;

  # boilerplate = {...};
  basicSet = (import ./basic-features {inherit pkgs lib g;};);
  featureSet = (import ./language-independent-features {inherit pkgs lib g;};) // 
    (import ./language-quasi-independent-features {inherit pkgs lib g;};);
  languageSet = import ./language-specific {inherit pkgs lib g;};
  output = boilerplate // (mergeAttrs [basicSet featureSet languageSet]);

  

  ###mergeAttrs = attrs: lib.foldl' (acc: x: acc // x) {} attrs;
  

  # -------------------- old below here ----------------------------------
  
  getLangs = tmp: tmp;
  getFeats = tmp: tmp;
  langs = getLangs neovimConfig;
  feats = getFeats neovimConfig;

  selectPackages = neovimConfig:
    builtins.concatLists (
      (map (langName: languages.${langName}.packages) langs)
      ++ (map (featName: features.${featName}.packages) feats)
    );

  # SEE HERE: https://github.com/NixOS/nixpkgs/blob/2230a20f2b5a14f2db3d7f13a2dc3c22517e790b/nixos/modules/programs/neovim.nix
  createNeovimHMProgramSet = neovimConfig: {
    enable = true;
    defaultEditor = true;
    withPython3 = true;
    withNodeJs = true;
    withRuby = false;
    package = neovim-nightly; #pkgs.neovim-unwrapped;
    /*
       ( ... .override {
        configure = {
          packages.myPlugins = with pkgs.vimPlugins; {
          start = [
            vim-go # already packaged plugin
            easygrep # custom package
          ];
          opt = [];
        };
        # ...
      };
     }
    )
    */
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    plugins = builtins.concatLists (
      (map (langName: languages.${langName}.plugins) langs)
      ++ (map (featName: features.${featName}.plugins) feats)
    );
  };

  base = import ./config-base-files {inherit neovimConfig;};

  createNeovimLuaFiles = neovimConfig: features: languages:
  #TODO: refactor
  # (import ./config-base-files {inherit neovimConfig;})
    (lib.attrsets.mapAttrs' (
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
      languages)
    // (let
      args = {inherit features languages;};
    in {
      "./nvim/init.lua".text = base.makeInitLuaFile args;
      "./nvim/lua/commands.lua".text = base.makeCommandsLuaFile args;
      "./nvim/lua/colors.lua".text = base.makeColorsLuaFile args; # add high and low contrast variants to opt folder
      "./nvim/lua/opts.lua".text = base.makeOptsLuaFile args;
      "./nvim/lua/mappings.lua".text = base.makeMappingsLuaFile args;
    }); # no overlap between attrNames
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
