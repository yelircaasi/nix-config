{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  packages = with pkgs; [];
  plugins =
    (with pkgs; [
      neodev-nvim
    ])
    ++ (with custom; [
      custom.nvim-luaref
    ]);
}
