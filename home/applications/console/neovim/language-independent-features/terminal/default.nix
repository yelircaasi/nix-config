{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.terminal;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = toggleterm-nvim;
          optional = true;
        } # nvim-toggleterm-lua, terminal-nvim, vim-floaterm, neoterm-lua
        {
          plugin = nvim-unception;
          optional = true;
        }
        {
          plugin = term-edit-nvim;
          optional = true;
        }
      ])
      ++ (with custom; [
        {
          plugin = wezterm-nvim;
          optional = true;
        } # kitty-runner-nvim
      ]);

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./_.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
