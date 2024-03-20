{pkgs, ...}: {
  packages = [];
  plugins = with pkgs; [
    nvim-cmp
    cmp-nvim-lsp
    cmp-path
    cmp_luasnip
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
