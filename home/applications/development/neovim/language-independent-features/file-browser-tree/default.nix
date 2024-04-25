{pkgs, ...}: {
  plugins = [
    pkgs.neo-tree-nvim # nvim-tree-lua, nvim-tree-lua
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
