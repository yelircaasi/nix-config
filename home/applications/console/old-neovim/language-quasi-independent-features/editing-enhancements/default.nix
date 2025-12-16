{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.editingEnhancements;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = text-case-nvim;
          optional = true;
        }
        {
          plugin = ssr;
          optional = true;
        }
        {
          plugin = treesj;
          optional = true;
        }
        {
          plugin = dial-nvim;
          optional = true;
        }
        {
          plugin = live-command-nvim;
          optional = true;
        }
        {
          plugin = renamer-nvim;
          optional = true;
        }
        {
          plugin = boole-nvim;
          optional = true;
        }
        {
          plugin = sort-nvim;
          optional = true;
        }
        {
          plugin = smartcolumn-nvim;
          optional = true;
        } # alts: deadcolumn-nvim, virtcolumn-nvim
        {
          plugin = trim-nvim;
          optional = true;
        }
        {
          plugin = vim-sneak;
          optional = true;
        }
        {
          plugin = indent-blankline-nvim;
          optional = true;
        }
      ])
      ++ (with custom; [
        {
          plugin = sibling-swap-nvim;
          optional = true;
        }
        {
          plugin = move-nvim;
          optional = true;
        } # alt: custom.moveline-nvim
        # part-edit-nvim
      ]);

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./_.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
