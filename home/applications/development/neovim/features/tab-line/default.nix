{pkgs, ...}: {
  plugins = with pkgs; [
    tabby-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
