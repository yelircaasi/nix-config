{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.markdown;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = mkdnflow-nvim;
          optional = true;
        }
        {
          plugin = vim-markdown;
          optional = true;
        }
        {
          plugin = markdown-preview-nvim;
          optional = true;
        } # alt: peek-nvim
        {
          plugin = glow-nvim;
          optional = true;
        }
        {
          plugin = nvim-FeMaco-lua;
          optional = true;
        }
      ])
      ++ [
        {
          plugin = custom.markdowny-nvim;
          optional = true;
        }
      ];
  }
