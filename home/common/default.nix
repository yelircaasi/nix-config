#  that are shared across all devices
{
  inputs,
  pkgs,
  g,
  deviceConfig,
  ...
}: let
  inherit (inputs.lib) mkIf;
  inherit (builtins) elem;
in {
  home = {
    username = "isaac";
    homeDirectory = "/home/isaac";
    stateVersion = "24.05";
    packages = with pkgs; [
      #docker
      wget
      alejandra
      # python311
      poetry
    ];
  };

  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
}
