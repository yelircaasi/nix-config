{
  pkgs,
  custom,
  g,
  ...
}: let
  custom = import ../plugins/custom-plugins.nix {inherit pkgs;};
in {
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
