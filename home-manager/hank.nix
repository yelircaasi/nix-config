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
    ./common
    

    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "isaac";
    homeDirectory = "/home/isaac";
    # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
    home.stateVersion = "23.11";
    packages = with pkgs; [
      docker

    ];

  };

  
  # Enable home-manager and git
  # (in common) programs.home-manager.enable = true;
  # (in common) programs.git.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # (in common) xdg.configFile."kanata/kanata.kbd".source = ../. + ./nixos/modules/kanata/kanata.kbd ;
  xdg.configFile."kanata/kanata.kbd".source = ../. + ./nixos/modules/kanata/kanata.kbd ;
  xdg.configFile."nitrogen/bg-saved.cfg".source = ./features/desktop/x11/nitrogen/bg-saved.cfg ;
  

}
