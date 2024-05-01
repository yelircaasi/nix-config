{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.keybinding.enable {
  plugins =
    (with pkgs.vimPlugins; [
      legendary-nvim
      which-key-nvim # training wheels
      hydra-nvim
    ])
    ++ (with custom; [
      hawtkeys-nvim
      keymap-amend-nvim
    ]);
  
  files = {
    "./nvim/lua/features/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
