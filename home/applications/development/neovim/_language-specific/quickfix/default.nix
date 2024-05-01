{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  packages = [];
  plugins =
    (with pkgs.vimPlugins; [
      nvim-bqf # alt: qqf-nvim
      trouble-nvim
    ])
    ++ (with custom; [
      qfview-nvim # alt: nvim-pqf
      neowell-lua # ?
    ]);
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
