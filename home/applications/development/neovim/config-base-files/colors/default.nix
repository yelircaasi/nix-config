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
  plugins = (with pkgs.vimPlugins; []) ++ (with custom; []);

  files = {
    "./nvim/lua/colors.lua".text = g.utils.readAndInterpolate g ./colors.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
