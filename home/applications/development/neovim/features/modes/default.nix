{pkgs, ...}: {
  plugins = [pkgs.zen-mode-nvim];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
