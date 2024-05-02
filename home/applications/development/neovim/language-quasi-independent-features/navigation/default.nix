{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.navigation;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = custom.navigator-lua;
          optional = true;
        }
        {
          plugin = numb-nvim;
          optional = true;
        }
        {
          plugin = dropbar-nvim;
          optional = true;
        }
        {
          plugin = leap-nvim;
          optional = true;
        }
        {
          plugin = flash-nvim;
          optional = true;
        }
      ])
      ++ [
        {
          plugin = custom.gx-extended-nvim;
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
