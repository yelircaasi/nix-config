{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
      custom.navigator-lua
      numb-nvim
      dropbar-nvim
      leap-nvim
      flash-nvim
    ])
    ++ (with custom; [
      custom.gx-extended-nvim
    ]);
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
