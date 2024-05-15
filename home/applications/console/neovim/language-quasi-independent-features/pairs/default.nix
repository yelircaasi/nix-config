{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.pairs;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = autoclose-nvim;
          optional = true;
        }
        {
          plugin = rainbow-delimiters-nvim;
          optional = true;
        }
      ])
      ++ (with custom; [
        {
          plugin = custom.ultimate-autopair-nvim;
          optional = true;
        } # alt: nvim-autopairs
        {
          plugin = custom.sentiment-nvim;
          optional = true;
        }
      ]);

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./_.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
