{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.selfReferential.enable {
  packages = with pkgs; [];
  plugins =
    (with pkgs.vimPlugins; [
      neodev-nvim
    ])
    ++ (with custom; [
      custom.nvim-luaref
    ]);
}
