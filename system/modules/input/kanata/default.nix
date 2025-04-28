{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    kanata-with-cmd
  ];
  services.kanata = {
    enable = true;
    package = pkgs.kanata-with-cmd;
    # package = pkgs.rustPlatform.buildRustPackage {
    #   pname = "kanata";
    #   version = "1.3.0-git";
    #   src = inputs.kanata;
    #   cargoHash = "sha256-IW+TjVROjzllQuk5SMCq4O06c1+hAlfRQlRRJ2MFFl0=";
    #   buildFeatures = [ "cmd" ];
    # };
    keyboards.default = {
      # TODO::prio2 extend kanata to automatically recognize input devices, autorestart/map devices if they connect/disconnect etc.
      config = builtins.readFile ./kanata.kbd; #<- need to fix this
      # https://search.nixos.org/options?channel=unstable&show=services.kanata.keyboards.%3Cname%3E.config&from=0&size=50&sort=relevance&type=packages&query=kanata
      extraDefCfg = ''
        danger-enable-cmd yes
        linux-unicode-termination enter
      '';
    };
  };
}
