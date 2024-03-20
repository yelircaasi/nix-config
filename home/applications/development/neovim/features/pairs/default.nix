{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
      autoclose-nvim
      rainbow-delimiters-nvim
    ])
    ++ (with custom; [
      custom.ultimate-autopair-nvim # alt: nvim-autopairs
      custom.sentiment-nvim
    ]);
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
