{
  pkgs,
  custom,
  g,
  ...
}: let
  custom = import ../plugins/custom-plugins.nix {inherit pkgs;};
in {
  packages = with pkgs; [
    vscode-langservers-extracted
  ];

  plugins =
    (with pkgs.vimPlugins; [
      ])
    ++ (with custom; [
      ]);
}
