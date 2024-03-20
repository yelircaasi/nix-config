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
      rustaceanvim
    ])
    ++ (with custom; [
      ]);
}
