{
  pkgs,
  custom,
  g,
  ...
}: let
  custom = import ../plugins/custom-plugins.nix {inherit pkgs;};
in {
  packages = with pkgs; [
    vimtex
    cmp-latex-symbols
    nabla-nvim
  ];

  plugins =
    (with pkgs.vimPlugins; [
      ])
    ++ (with custom; [
      ]);
}
