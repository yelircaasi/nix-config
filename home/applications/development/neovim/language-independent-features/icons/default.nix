{pkgs, ...}: {
  plugins = [
    pkgs.nvim-web-devicons
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
