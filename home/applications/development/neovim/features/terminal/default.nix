{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins =
    (with pkgs; [
      toggleterm-nvim # nvim-toggleterm-lua, terminal-nvim, vim-floaterm, neoterm-lua
      nvim-unception
      term-edit-nvim
    ])
    ++ (with custom; [
      wezterm-nvim # kitty-runner-nvim
    ]);
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
