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
    "./nvim/lua/options.lua".text = g.utils.readAndInterpolate g ./options.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
