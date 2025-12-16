{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.clipboard;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else {
    packages = [];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = nvim-neoclip-lua;
          optional = true;
        } # deferred-clipboard-nvim, vim-wayland-clipboard (wl-clipboard)
        {
          plugin = clipboard-image-nvim;
          optional = true;
        }
      ])
      ++ (with custom; [
        {
          plugin = yanky-nvim;
          optional = true;
        }
      ]);

    files = {
      "./nvim/lua/features/${luaName}.lua".text = g.utils.readAndInterpolate g ./clipboard.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
