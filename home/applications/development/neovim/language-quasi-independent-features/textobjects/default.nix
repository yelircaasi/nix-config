{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.textobjects;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = nvim-surround;
          optional = true;
        }
        {
          plugin = nvim-treesitter-textsubjects;
          optional = true;
        }
        {
          plugin = nvim-treesitter-textobjects;
          optional = true;
        }
      ])
      ++ [
        {
          plugin = custom.nvim-various-textobjs;
          optional = true;
        }
      ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./_.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
