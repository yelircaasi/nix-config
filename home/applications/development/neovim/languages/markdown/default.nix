{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.languages.markdown.enable {
  packages = with pkgs; [
  ];

  plugins =
    (with pkgs.vimPlugins; [
      mkdnflow-nvim
      vim-markdown
      markdown-preview-nvim # alt: peek-nvim
      glow-nvim
      nvim-FeMaco-lua
    ])
    ++ (with custom; [
      markdowny-nvim
    ]);
}
