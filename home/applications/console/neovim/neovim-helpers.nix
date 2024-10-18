{
  inputs,
  pkgs,
  lib,
  neovimConfig,
  g,
  ...
}: let
  neovim-nightly = inputs.neovim-nightly-overlay.packages.${pkgs.system}.neovim;

  # TO FLATTEN ATTRSET OIF LISTS
  # let
  #   # Example attribute set where each attribute is a list
  #   myAttrSet = {
  #     attr1 = [1, 2, 3];
  #     attr2 = [4, 5];
  #     attr3 = [6];
  #   };
  #   # Flatten the attribute set
  #   flattenedList = lib.concatLists (attrValues myAttrSet);
  # in
  #   flattenedList

  # listIf = nameString: nameList: namePath:
  #   if (builtins.elem nameString nameList)
  #   then [namePath]
  #   else [];

  blankSet = {
    packages = [];
    plugins = [];
    files = {};
    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  };

  custom = import ./self-packaged-plugins.nix {inherit pkgs;};
  neovimCategories = ["base" "language-independent" "language-quasi-independent" "languages"];
  importFromAttr = path: value: import value {inherit inputs pkgs lib neovimConfig g custom blankSet;};
  importNeovimElements = nestedPaths: lib.attrsets.mapAttrsRecursive importFromAttr nestedPaths;

  # ifAny = neovimCats: map ( #TODO
  #     map (lib.mkIf (neovimConfig.${}.${}.enable)) neovimSetPre.${}
  #   ) neovimSetPre;

  neovimSetPre = importNeovimElements {
    base = {
      colors = ./config-base-files/colors;
      commands = ./config-base-files/commands;
      init = ./config-base-files/init;
      mappings = ./config-base-files/mappings;
      options = ./config-base-files/options;
    };
    language-independent = {
      clipboard = ./language-independent-features/clipboard;
      code-minimap = ./language-independent-features/code-minimap;
      file-browser-other = ./language-independent-features/file-browser-other;
      file-browser-tree = ./language-independent-features/file-browser-tree;
      file-browser-tui = ./language-independent-features/file-browser-tui;
      general-purpose-and-dependencies = ./language-independent-features/general-purpose-and-dependencies;
      git = ./language-independent-features/git;
      github = ./language-independent-features/github;
      icons = ./language-independent-features/icons;
      media = ./language-independent-features/media;
      modes = ./language-independent-features/modes;
      multiplexer = ./language-independent-features/multiplexer;
      notifications = ./language-independent-features/notifications;
      popup-and-menu = ./language-independent-features/popup-and-menu;
      productivity = ./language-independent-features/productivity;
      project-and-config-management = ./language-independent-features/project-and-config-management;
      self-referential = ./language-independent-features/self-referential;
      startscreen = ./language-independent-features/startscreen;
      status-line = ./language-independent-features/status-line;
      # syntax-highlighting-additional = ./language-independent-features/syntax-highlighting-additional;
      terminal = ./language-independent-features/terminal;
      training = ./language-independent-features/training;
      # treesitter-and-extensions = ./language-independent-features/treesitter-and-extensions;
      ui = ./language-independent-features/ui;
    };
    language-quasi-independent = {
      ai = ./language-quasi-independent-features/ai;
      buffer-line = ./language-quasi-independent-features/buffer-line;
      code-execution = ./language-quasi-independent-features/code-execution;
      comments = ./language-quasi-independent-features/comments;
      editing-enhancements = ./language-quasi-independent-features/editing-enhancements;
      folding = ./language-quasi-independent-features/folding;
      increment-and-toggling = ./language-quasi-independent-features/increment-and-toggling;
      keybinding = ./language-quasi-independent-features/keybinding;
      macros = ./language-quasi-independent-features/macros;
      miscellaneous = ./language-quasi-independent-features/miscellaneous;
      navigation = ./language-quasi-independent-features/navigation;
      outline-and-breadcrumbs = ./language-quasi-independent-features/outline-and-breadcrumbs;
      pairs = ./language-quasi-independent-features/pairs;
      search = ./language-quasi-independent-features/search;
      search-and-replace = ./language-quasi-independent-features/search-and-replace;
      tab-line = ./language-quasi-independent-features/tab-line;
      task-runner = ./language-quasi-independent-features/task-runner;
      textobjects = ./language-quasi-independent-features/textobjects;
    };
    languages = {
      apl = ./languages/apl;
      assembly = ./languages/assembly;
      bash = ./languages/bash;
      c = ./languages/c;
      clojure = ./languages/clojure;
      common-lisp = ./languages/common-lisp;
      cpp = ./languages/cpp;
      d = ./languages/d;
      dart-flutter = ./languages/dart-flutter;
      dhall = ./languages/dhall;
      elisp = ./languages/elisp;
      elixir = ./languages/elixir;
      elm = ./languages/elm;
      elvish = ./languages/elvish;
      erlang = ./languages/erlang;
      fennel = ./languages/fennel;
      fish = ./languages/fish;
      go = ./languages/go;
      guile = ./languages/guile;
      haskell = ./languages/haskell;
      haxe = ./languages/haxe;
      hexadecimal = ./languages/hexadecimal;
      html = ./languages/html;
      hyprlang = ./languages/hyprlang;
      java = ./languages/java;
      javascript = ./languages/javascript;
      json = ./languages/json;
      julia = ./languages/julia;
      kdl = ./languages/kdl;
      kotlin = ./languages/kotlin;
      lua = ./languages/lua;
      markdown = ./languages/markdown;
      moonscript = ./languages/moonscript;
      nickel = ./languages/nickel;
      nim = ./languages/nim;
      nix = ./languages/nix;
      norg = ./languages/norg;
      nushell = ./languages/nushell;
      ocaml = ./languages/ocaml;
      octave = ./languages/octave;
      org = ./languages/org;
      # other = ./languages/other;
      perl = ./languages/perl;
      php = ./languages/php;
      purescript = ./languages/purescript;
      python = ./languages/python;
      r = ./languages/r;
      racket = ./languages/racket;
      raku = ./languages/raku;
      ruby = ./languages/ruby;
      rust = ./languages/rust;
      scheme = ./languages/scheme;
      starlark = ./languages/starlark;
      teal = ./languages/teal;
      tex = ./languages/tex;
      todotxt = ./languages/todotxt;
      toml = ./languages/toml;
      typescript = ./languages/typescript;
      typst = ./languages/typst;
      vim9script = ./languages/vim9script;
      vimscript = ./languages/vimscript;
      vlang = ./languages/vlang;
      yaml = ./languages/yaml;
      yuck = ./languages/yuck;
      xit = ./languages/xit;
      zig = ./languages/zig;
    };
  };

  filterValuesList = setSet: builtins.filter (set: set.enable) (builtins.attrValues setSet);
  gather = attrName: setSet: map (set: set.${attrName}) (filterValuesList setSet);
  listLeaves = nestedSet: builtins.concatLists (map lib.attrsets.attrValues (lib.attrsets.attrValues nestedSet));

  mergeSets = sets: builtins.foldl' (s1: s2: s1 // s2) {} sets;
  listFromFeatureSet = attrName: setPre: map (featureSet: (blankSet // featureSet).${attrName}) (listLeaves setPre);
  listBoolFromFeatureSet = let
    blank = {
      needsPython3 = false;
      needsNodeJs = false;
      needsRuby = false;
    };
  in
    attrName: setPre: map (featureSet: (blank // featureSet).${attrName}) (listLeaves setPre);
  concatFromFeatureSet = attrName: setPre: builtins.concatLists (listFromFeatureSet attrName setPre);

  collectPackages = concatFromFeatureSet "packages";
  collectPlugins = concatFromFeatureSet "plugins";
  collectFiles = setPre: mergeSets (listFromFeatureSet "files" setPre); # (map (featureSet: featureSet.files) (listLeaves setPre));
  ifAny = attrName: setPre: lib.lists.any (x: x) (listBoolFromFeatureSet attrName setPre);

  # collectOtherPackages = neovimConfig: neovimSetPre:
  #   map (featureCategory:
  #     map (lib.mkIf (neovimConfig.${featureCategory}.${}.enable) ) neovimSetPre.${featureCategory}
  #   ) neovimCategories;

  mkNeovimSet = neovimConfig: nvimSetPre: {
    enable = true;
    defaultEditor = true; #neovimConfig.makeDefaultEditor;
    withPython3 = ifAny "needsPython3" nvimSetPre;
    withNodeJs = ifAny "needsNodeJs" nvimSetPre;
    withRuby = ifAny "needsRuby" nvimSetPre;
    package = neovim-nightly;
    viAlias = true; #neovimConfig.viAlias;
    vimAlias = true; #neovimConfig.vimAlias;
    vimdiffAlias = true; #neovimConfig.vimdiffAlias;
    plugins =
      (collectPlugins nvimSetPre)
      ++ [
        (pkgs.vimPlugins.nvim-treesitter.withPlugins (
          p:
            builtins.concatLists [
              # TODO: refactor this!!!
              (
                if neovimConfig.languages.c.enable
                then [p.c]
                else []
              )
              (
                if neovimConfig.languages.java.enable
                then [p.java]
                else []
              )
              # (
              #   if neovimConfig.languages.xit.enable
              #   then [p.xit]
              #   else []
              # )
            ]
        ))
      ];
  };

  mkFiles = nvimSetPre:
    mergeSets (
      builtins.concatLists (
        map
        collectFiles
        (lib.attrsets.attrValues nvimSetPre)
      )
    );
  # map
  #   (map
  #     (lib.mkIf (neovimConfig.${}.${}.enable))
  #     neovimSetPre.${}
  #   )
  #   neovimCategories;

  mkPluginList = nvimSetPre:
    mergeSets (
      builtins.concatLists (
        map
        collectPackages
        (lib.attrsets.attrValues nvimSetPre)
      )
    );
in {
  otherPackages = collectPackages neovimSetPre;
  neovimSet = mkNeovimSet neovimConfig neovimSetPre;
  xdgConfig = collectFiles neovimSetPre;
}
/*
  let
# ---------------- other function --------------------
# {pluginName: pluginPkg} -> {pluginName: pluginAttrSet}
mkOptPluginsFromPackages = pluginSet:
  lib.attrsets.mapAttrs
    (name: value: {optional = true; plugin = value;})
    pluginSet;
# ----------------------------------------------------

/* combine attrSets as expansively as possible,
    merging attrSet values and concatenating array values * /
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

  #TODO: clean up below this line!!!
  # boilerplate = {...};
  basicSet = (import ./basic-features {inherit pkgs lib g;};);
  featureSet = (import ./language-independent-features {inherit pkgs lib g;};) //
    (import ./language-quasi-independent-features {inherit pkgs lib g;};);
  languageSet = import ./language-specific {inherit pkgs lib g;};
  output = boilerplate // (mergeAttrs [basicSet featureSet languageSet]);

  fullConfig = import ./full-config.nix;
  neovim-nightly = inputs.neovim-nightly-overlay.packages.${pkgs.system}.neovim;
  custom=import ./plugins/custom-plugins.nix {inherit pkgs;};
  languageSet = import ./languages {inherit pkgs g;};
  py = pkgs.python310Packages;
  node = pkgs.nodePackages;
  helpers = import ./neovim-helpers.nix {inherit pkgs lib g;};

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
    * /
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
*/

