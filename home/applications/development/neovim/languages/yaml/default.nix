{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.languages.yaml.enable {
  packages = with pkgs; [
    node.yaml-language-server
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
