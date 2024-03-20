{pkgs, ...}: {
  packages = [
  ];
  plugins = with pkgs; [
    minimap-vim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
