{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.lua;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [
      stylua
      luaPackages.lua-lsp # alt: lua-language-server, vscode-extensions.sumneko-lua
    ];

    plugins = (with pkgs.vimPlugins; []) ++ (with custom; []);

    files = {
      "./nvim/lua/languages/${luaName}.lua".text = g.utils.readAndInterpolate g ./_.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
