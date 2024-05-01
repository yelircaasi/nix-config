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
    "./nvim/lua/commands.lua".text = g.lib.readAndInterpolate g ./commands.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}