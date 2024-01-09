# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./components/common
    ./environments/flatpak
  ];

  programs.zsh.enable = false;
  programs.wezterm.enable = false ;
  
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "isaac";
    homeDirectory = "/home/isaac";
    stateVersion = "23.11";
    packages = with pkgs; [
      docker
      kanata
      libGL
      (writeShellScriptBin "test-hm" ''
        echo "this runs successfully!"
      '')
    ];
    sessionVariables = {
      EDITOR = "nvim" ;
    };

  };
  
  # Enable home-manager and git
  # (in common) programs.home-manager.enable = true;
  # (in common) programs.git.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # (in common) xdg.configFile."kanata/kanata.kbd".source = ../. + ./nixos/components/kanata/kanata.kbd ;
  xdg.configFile."kanata/kanata.kbd".source = ../nixos/components/kanata/kanata.kbd ;
  xdg.configFile."nitrogen/bg-saved.cfg".source = ./environments/x11/wallpaper/nitrogen/bg-saved.cfg ;
  

}
