{
  pkgs,
  custom,
  g,
  ...
}: let
  custom = import ../plugins/custom-plugins.nix {inherit pkgs;};
in {
  packages = with pkgs; [
    stylua
    luaPackages.lua-lsp # alt: lua-language-server, vscode-extensions.sumneko-lua
  ];

  plugins =
    (with pkgs.vimPlugins; [
      ])
    ++ (with custom; [
      ]);
}
