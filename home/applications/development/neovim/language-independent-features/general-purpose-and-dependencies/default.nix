{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.generalPurposeAndDependencies;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins = with pkgs; [
      {
        plugin = plenary-nvim;
        optional = true;
      }
      {
        plugin = mini-nvim;
        optional = true;
      }
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./general_purpose_and_dependencies.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
