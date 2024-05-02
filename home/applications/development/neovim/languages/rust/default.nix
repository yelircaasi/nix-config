{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.rust;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [];

    plugins = [
      {
        plugin = pkgs.vimPlugins.rustaceanvim;
        optional = true;
      }
    ];
  }
