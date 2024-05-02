{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.codeExecution;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];
    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = sniprun;
          optional = true;
        }
        {
          plugin = molten-nvim;
          optional = true;
        }
      ])
      ++ (with custom; [
        {
          plugin = code-runner-nvim;
          optional = true;
        } # alt: runner-nvim
        {
          plugin = compiler-nvim;
          optional = true;
        } # yabs-nvim
        {
          plugin = yarepl-nvim;
          optional = true;
        }
        {
          plugin = iron-nvim;
          optional = true;
        }
      ]);

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./_.lua;
    };

    needsPython3 = true;
    needsNodeJs = false;
    needsRuby = false;
  }
