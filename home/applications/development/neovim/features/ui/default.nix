{pkgs, ...}: {
  plugins = with pkgs; [
    nui-nvim # alt: dressing-nvim, guihua-lua
    noice-nvim
    #custom.popui-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
