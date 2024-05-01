{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.languages.nix.enable {
  packages = with pkgs; [
    alejandra
    nixd
    nil # alt: rnix-lsp
  ];

  plugins =
    (with pkgs.vimPlugins; [
      vim-nix
      telescope-manix
      nix-develop-nvim
    ])
    ++ (with custom; [
      ]);
}
