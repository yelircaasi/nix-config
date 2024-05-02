{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.json;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [];

    plugins = [
      {
        plugin = pkgs.vimPlugins.nvim-jqx;
        optional = true;
      }
    ];
  }
