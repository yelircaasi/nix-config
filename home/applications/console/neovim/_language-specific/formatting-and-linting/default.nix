{pkgs, ...}: {
  plugins = with pkgs.vimPlugins; [
    conform-nvim # alt: format-nvim, nvim-strict, guard-nvim, format-on-save-nvim, neoformat, formatter-nvim
    lsp-format-nvim # ?
    nvim-lint
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
