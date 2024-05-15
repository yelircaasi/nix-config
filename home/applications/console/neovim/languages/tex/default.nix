{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.tex;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [
      vimtex
      cmp-latex-symbols
      nabla-nvim
    ];

    plugins = (with pkgs.vimPlugins; []) ++ (with custom; []);

    files = {
      "./nvim/lua/languages/${luaName}.lua".text = g.utils.readAndInterpolate g ./_.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
