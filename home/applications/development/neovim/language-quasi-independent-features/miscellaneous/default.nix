{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.miscellaneous;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = nvim-colorizer-lua;
          optional = true;
        }
        {
          plugin = venn-nvim;
          optional = true;
        }
        {
          plugin = distant-nvim;
          optional = true;
        }
        {
          plugin = compiler-explorer-nvim;
          optional = true;
        }
        {
          plugin = flatten-nvim;
          optional = true;
        }
        {
          plugin = urlview-nvim;
          optional = true;
        }
      ])
      ++ (with custom; [
        {
          plugin = nvim-regexplainer;
          optional = true;
        } # #custom.hypersonic-nvim
        {
          plugin = quicknote-nvim;
          optional = true;
        }
        {
          plugin = carbon-now-nvim;
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
