{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.github;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = with pkgs; [];

    plugins = with pkgs; [
      {
        plugin = octo-nvim;
        optional = true;
      }
      {
        plugin = telescope-github-nvim;
        optional = true;
      }
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./github.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
