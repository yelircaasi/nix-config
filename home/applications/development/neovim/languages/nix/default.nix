{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.nix;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [
      alejandra
      nixd
      nil # alt: rnix-lsp
    ];

    plugins = with pkgs.vimPlugins; [
      {
        plugin = vim-nix;
        optional = true;
      }
      {
        plugin = telescope-manix;
        optional = true;
      }
      {
        plugin = nix-develop-nvim;
        optional = true;
      }
    ];
  }
