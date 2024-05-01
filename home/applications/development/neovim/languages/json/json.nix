{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.languages.json.enable {
  packages = with pkgs; [
  ];

  plugins =
    (with pkgs.vimPlugins; [
      nvim-jqx
    ])
    ++ (with custom; [
      ]);
}
