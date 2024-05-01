{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.org.enable {
  plugins = [
    pkgs.neorg-telescope
    custom.neorg # alt: zk-nvim (or complement?), orgmode-nvim
  ];

  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
