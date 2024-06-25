{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.xit;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [];

    plugins = (with pkgs.vimPlugins; []) ++ (with custom; [xit-nvim]);

    files = {
      "./nvim/lua/languages/${luaName}.lua".text = g.utils.readAndInterpolate g ./xit.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
