{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: let
  custom = {};

  gather =  attrName: : setList: map 
    (set: set.${attrName}) 
    (builtins.filter 
      (set: set.enable) 
      (builtins.attrValues setList)
    );
  languages = gather "luaName" cfgSet.languages;
  features = gather "luaName" cfgSet.features;

  langRequires = langs: lib.strings.concatLines (map (lang: ''require("language_specific.${lang}")'') languages);
  featRequires = feats: lib.strings.concatLines (map (feat: ''require("features.${feat}")'') features);
in 
in {
  packages = [];
  plugins = (with pkgs.vimPlugins; []) ++ (with custom; []);

  files = {
    "./nvim/lua/features/init.lua".text = g.lib.interpolate ''
      require("colors")
      require("commands")
      require("mapping")
      require("options")

      ${featRequires}

      ${langRequires}
'';

  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}