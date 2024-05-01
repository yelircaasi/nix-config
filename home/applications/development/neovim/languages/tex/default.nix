{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.languages.tex.enable {
  packages = with pkgs; [
    vimtex
    cmp-latex-symbols
    nabla-nvim
  ];

  plugins =
    (with pkgs.vimPlugins; [
      ])
    ++ (with custom; [
            ]);

  files = {
    "./nvim/lua/languages/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
