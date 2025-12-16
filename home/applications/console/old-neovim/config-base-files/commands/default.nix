{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: {
  packages = [];
  plugins = [];

  files = {
    "./nvim/lua/commands.lua".text = g.utils.readAndInterpolate g ./commands.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
