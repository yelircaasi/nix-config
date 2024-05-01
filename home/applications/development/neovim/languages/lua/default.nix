{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.languages.lua.enable {
  packages = with pkgs; [
    stylua
    luaPackages.lua-lsp # alt: lua-language-server, vscode-extensions.sumneko-lua
  ];

  plugins =
    (with pkgs.vimPlugins; [
      ])
    ++ (with custom; [
            ]);

  files = {
    "./nvim/lua/languages/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
