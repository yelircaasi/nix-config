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
    "./nvim/lua/options.lua".text = g.lib.readAndInterpolate g ./options.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}