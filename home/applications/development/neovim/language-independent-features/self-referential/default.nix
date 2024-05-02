{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.selfReferential;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = with pkgs; [];
    plugins = [
      {
        plugin = pkgs.vimPlugins.neodev-nvim;
        optional = true;
      }
      {
        plugin = custom.nvim-luaref;
        optional = true;
      }
    ];
  }
