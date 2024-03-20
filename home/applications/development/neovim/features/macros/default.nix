{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
      sqlite-lua # dependency of neocomposer
    ])
    ++ (with custom; [
      neocomposer-nvim
    ]);
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
