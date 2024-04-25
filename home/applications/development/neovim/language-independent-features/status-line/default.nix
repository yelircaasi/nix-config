{pkgs, ...}: {
  plugins = with pkgs; [
    lualine-nvim # alt: neirline-nvim
    nvim-navic
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
