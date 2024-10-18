{
  inputs,
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
  nix-treesitter = inputs.nix-treesitter.packages.x86_64-linux;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [];

    plugins =
      with pkgs.vimPlugins; [
        (nvim-treesitter.withPlugins (p: [nix-treesitter.tree-sitter-xit]))
      ]
      ++ (with custom; [xit-nvim]);

    files = {
      "./nvim/lua/languages/${luaName}.lua".text = g.utils.readAndInterpolate g ./xit.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
