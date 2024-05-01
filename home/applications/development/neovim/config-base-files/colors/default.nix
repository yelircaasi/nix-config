{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: let
  custom = {};
in {
  packages = [];
  plugins = (with pkgs.vimPlugins; []) ++ (with custom; []);

  files = {
    "./nvim/lua/colors.lua".text = g.lib.readAndInterpolate g ./colors.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}