{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  featCfg = neovimConfig.features.statusLine;
  luaName = featCfg.luaName;
in
  if !featCfg.enable
  then blankSet
  else rec {
    packages = [];

    plugins = with pkgs.vimPlugins; [
      {
        plugin = lualine-nvim; # alt: neirline-nvim
        optional = true;
      }
      {
        plugin = nvim-navic;
        optional = true;
      }
    ];

    pluginStrings = [
      "-- {{lualine RTP command}}"
      "-- {{navic RTP command}}"
    ];

    files = {
      "./nvim/lua/features/${luaName}.lua".text =
        builtins.replaceStrings
        pluginStrings
        (map (set: ''vim.opt.rtp:prepend("${set.plugin}")'') plugins)
        (g.utils.readAndInterpolate g ./status_line.lua);
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
