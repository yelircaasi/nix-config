{
  pkgs,
  custom,
  g,
  ...
}: let
  custom = import ../plugins/custom-plugins.nix {inherit pkgs;};
in {
  packages = with pkgs; [
    flutter-tools-nvim
  ];

  plugins =
    (with pkgs.vimPlugins; [
      ])
    ++ (with custom; [
      ]);
}
