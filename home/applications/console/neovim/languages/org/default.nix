{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.org;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = [];

    plugins = [
      {
        plugin = pkgs.neorg-telescope;
        optional = true;
      }
      {
        plugin = custom.neorg;
        optional = true;
      } # alt: zk-nvim (or complement?), orgmode-nvim
    ];

    subpathString = "";
    mkLuaConfig = {languages}: ''
    '';
  }
