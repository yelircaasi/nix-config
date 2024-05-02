{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  filterValuesList = setSet: builtins.filter (set: set.enable) (builtins.attrValues setSet);
  gather = attrName: setSet: map (set: set.${attrName}) (filterValuesList setSet);

  languages = gather "luaName" neovimConfig.languages;
  features = gather "luaName" neovimConfig.features;

  langRequires = lib.strings.concatLines (map (lang: ''require("languages.${lang}")'') languages);
  featRequires = lib.strings.concatLines (map (feat: ''require("features.${feat}")'') features);
in {
  packages = [pkgs.lua];
  plugins = (with pkgs.vimPlugins; []) ++ (with custom; []);

  files = {
    "./nvim/init.lua".text = g.utils.interpolate g ''
      require("colors")
      require("commands")
      require("mappings")
      require("options")

      ${featRequires}

      ${langRequires}
    '';
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
