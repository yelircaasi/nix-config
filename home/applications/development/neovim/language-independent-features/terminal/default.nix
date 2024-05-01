{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.terminal.enable {
  plugins =
    (with pkgs.vimPlugins; [
      toggleterm-nvim # nvim-toggleterm-lua, terminal-nvim, vim-floaterm, neoterm-lua
      nvim-unception
      term-edit-nvim
    ])
    ++ (with custom; [
      wezterm-nvim # kitty-runner-nvim
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
