{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  plugins = [
    pkgs.refactoring-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
