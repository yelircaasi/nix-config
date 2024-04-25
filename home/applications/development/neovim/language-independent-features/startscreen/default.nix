{pkgs, ...}: {
  plugins = [
    pkgs.dashboard-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
