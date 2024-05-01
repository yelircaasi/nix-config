{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in lib.mkIf neovimConf.features.ai.enable {
  packages = [

  ];
  plugins = (with pkgs; [

  ]) ++ (with custom; [

  ]);

        custom.codegpt-nvim
        ChatGPT-nvim
        copilot-lua
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
