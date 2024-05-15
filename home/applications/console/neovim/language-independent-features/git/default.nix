{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.git;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = neogit;
          optional = true;
        } # alt: nvim-tinygit
        {
          plugin = lazygit-nvim;
          optional = true;
        }
        {
          plugin = gitsigns-nvim;
          optional = true;
        }
        {
          plugin = diffview-nvim;
          optional = true;
        }
        {
          plugin = git-blame-nvim;
          optional = true;
        } # #custom.nvim-blame-line
        {
          plugin = gitlinker-nvim;
          optional = true;
        }
      ])
      ++ [
        {
          plugin = custom.git-sessions-nvim;
          optional = true;
        }
      ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./git.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
