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
    "./nvim/lua/mappings.lua".text = g.lib.readAndInterpolate g ./mappings.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}