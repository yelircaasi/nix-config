{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  plugins = with pkgs; [
    luasnip
    friendly-snippets
    ultisnips
    telescope-ultisnips-nvim
    nvim-snippy
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
