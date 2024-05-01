{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.languages.rust.enable {
  packages = with pkgs; [
  ];

  plugins =
    (with pkgs.vimPlugins; [
      rustaceanvim
    ])
    ++ (with custom; [
      ]);
}
