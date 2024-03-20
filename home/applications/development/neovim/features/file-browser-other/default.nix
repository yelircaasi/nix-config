{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins = [
    pkgs.oil-nvim #       ### triptych.nvim, ### tfm.nvim,

    custom.nvim-genghis
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
