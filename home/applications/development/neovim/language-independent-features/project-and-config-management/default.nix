{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.projectAndConfigManagement;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = neoconf-nvim;
          optional = true;
        }
        {
          plugin = nvim-config-local;
          optional = true;
        } # nvim-projectconfig
      ])
      ++ (with custom; [
        {
          plugin = custom.projectmgr-nvim;
          optional = true;
        } # projections-nvim, workspaces-nvim, neoproj
        {
          plugin = custom.memento-nvim;
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
