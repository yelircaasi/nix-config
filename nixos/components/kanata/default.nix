{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    kanata
  ];
  services.kanata = {
    enable = true;
    # package = pkgs.rustPlatform.buildRustPackage {
    #   pname = "kanata";
    #   version = "1.3.0-git";
    #   src = inputs.kanata;
    #   cargoHash = "sha256-IW+TjVROjzllQuk5SMCq4O06c1+hAlfRQlRRJ2MFFl0=";
    #   buildFeatures = [ "cmd" ];
    # };
    keyboards.default = {
      # devices are configured in each /machines/<machine>/default.nix
      # TODO extend kanata to automatically recognize input devices, autorestart/map devices if they connect/disconnect etc.
      config = builtins.readFile ./kanata.kbd;
    };
  };
}
