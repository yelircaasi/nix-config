{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  packages = [
  ];
  plugins =
    (with pkgs; [
      nvim-neoclip-lua # deferred-clipboard-nvim, vim-wayland-clipboard (wl-clipboard)
      clipboard-image-nvim
    ])
    ++ (with custom; [
      yanky-nvim
    ]);

  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
