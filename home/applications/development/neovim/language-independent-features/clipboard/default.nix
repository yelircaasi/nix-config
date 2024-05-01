{
  pkgs, 
  lib, 
  g, 
  neovimConf, 
  ...
}: 
let
  custom = {};
in lib.mkIf neovimConf.features.clipboard.enable {
  packages = [];
  plugins =
    (with pkgs.vimPlugins; [
      nvim-neoclip-lua # deferred-clipboard-nvim, vim-wayland-clipboard (wl-clipboard)
      clipboard-image-nvim
    ])
    ++ (with custom; [
      yanky-nvim
          ]);

  files = {
    "./nvim/lua/languages/?.lua".text = g.lib.readAndInterpolate g ./?.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
