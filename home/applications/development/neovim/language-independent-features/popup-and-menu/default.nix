{pkgs, ...}: {
  plugins = with pkgs; [
    wilder-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
