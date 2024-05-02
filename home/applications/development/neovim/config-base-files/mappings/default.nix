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
    "./nvim/lua/mappings.lua".text = g.utils.readAndInterpolate g ./mappings.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
