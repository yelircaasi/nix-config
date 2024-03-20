{
  pkgs,
  custom,
  g,
  ...
}: let
  custom = import ../plugins/custom-plugins.nix {inherit pkgs;};
in {
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
