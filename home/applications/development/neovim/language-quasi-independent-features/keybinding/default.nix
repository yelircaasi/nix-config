{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.keybinding;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = legendary-nvim;
          optional = true;
        }
        {
          plugin = which-key-nvim;
          optional = true;
        } # training wheels
        {
          plugin = hydra-nvim;
          optional = true;
        }
      ])
      ++ (with custom; [
        {
          plugin = hawtkeys-nvim;
          optional = true;
        }
        {
          plugin = keymap-amend-nvim;
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
