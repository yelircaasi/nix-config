{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.languages.nushell.enable {
  packages = with pkgs; [
  ];

  plugins =
    (with pkgs.vimPlugins; [
      nvim-nu
    ])
    ++ (with custom; [
      ]);
}
