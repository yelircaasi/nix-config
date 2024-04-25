{pkgs, ...}: let
  custom = import ../self-packaged-plugins {inherit pkgs;};
in {
  plugins = [
    pkgs.smart-splits-nvim
    custom.zellij-nvim # (not working) custom.zellij-nav-nvim, Navigator-nvim, #, nvim, neomux, tmux-nvim, tmux-awesome-manager-nvim, nvimux
    custom.windex-nvim
  ];
  subpathString = "";
  mkLuaConfig = {languages}: ''
  '';
}
