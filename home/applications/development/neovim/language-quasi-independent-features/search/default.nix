{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.search;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = nvim-hlslens;
          optional = true;
        }
        {
          plugin = telescope-nvim;
          optional = true;
        }
        {
          plugin = telescope-ui-select-nvim;
          optional = true;
        }
        {
          plugin = telescope-frecency-nvim;
          optional = true;
        }
        {
          plugin = telescope-zoxide;
          optional = true;
        }
        {
          plugin = telescope-fzf-native-nvim;
          optional = true;
        }
        {
          plugin = telescope-zf-native-nvim;
          optional = true;
        }
        {
          plugin = telescope-vim-bookmarks-nvim;
          optional = true;
        }
        {
          plugin = telescope-symbols-nvim;
          optional = true;
        }
        {
          plugin = telescope-sg;
          optional = true;
        }
        {
          plugin = telescope-project-nvim;
          optional = true;
        }
        {
          plugin = telescope-media-files-nvim;
          optional = true;
        }
        {
          plugin = telescope-lsp-handlers-nvim;
          optional = true;
        } # ?
        {
          plugin = telescope-live-grep-args-nvim;
          optional = true;
        } # ?
      ])
      ++ (with custom; [
        #custom.harpoon2
        {
          plugin = marks-nvim;
          optional = true;
        }
        {
          plugin = spaceport-nvim;
          optional = true;
        }
        {
          plugin = improved-search-nvim;
          optional = true;
        }
        {
          plugin = highlight-current-n-nvim;
          optional = true;
        } # hlsearch-nvim
        {
          plugin = search-nvim;
          optional = true;
        }
        {
          plugin = hlsearch-nvim;
          optional = true;
        }
        {
          plugin = telescope-alternate-nvim;
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
