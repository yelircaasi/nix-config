{pkgs, ...}: {
  packages = [];
  plugins = with pkgs; [
    symbols-outline-nvim # alt: #custom.outline-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
