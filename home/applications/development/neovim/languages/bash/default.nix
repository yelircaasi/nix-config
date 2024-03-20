{
  pkgs,
  custom,
  g,
  ...
}: let
  custom = import ../plugins/custom-plugins.nix {inherit pkgs;};
in {
  packages = with pkgs; [
    node.bash-language-server
  ];

  plugins =
    (with pkgs.vimPlugins; [
      ])
    ++ (with custom; [
      ]);
}
