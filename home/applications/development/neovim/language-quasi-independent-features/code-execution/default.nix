{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in lib.mkIf neovimConf.features.codeExecution.enable {
  packages = [];
  plugins =
    (with pkgs.vimPlugins; [
      sniprun
      molten-nvim
    ])
    ++ (with custom; [
      code-runner-nvim # alt: runner-nvim
      compiler-nvim # yabs-nvim
      yarepl-nvim
      iron-nvim
    ]);

  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
