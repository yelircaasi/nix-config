{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.searchAndReplace;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = substitute-nvim;
          optional = true;
        } # alts: search-repace-nvim, nvim-spectre
        {
          plugin = replacer-nvim;
          optional = true;
        } # alt: nvim-search-and-replace
      ])
      ++ (with custom; [
        {
          plugin = rgflow-nvim;
          optional = true;
        }
        {
          plugin = nvim-alt-substitute;
          optional = true;
        }
        {
          plugin = nvim-rg;
          optional = true;
        } # vim-ripgrep
        {
          plugin = muren-nvim;
          optional = true;
        }
        {
          plugin = sad-nvim;
          optional = true;
        }
      ]);

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./_.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
