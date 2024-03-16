{pkgs, ...}: {
  home.packages = [
    pkgs.vscodium
  ];
  xdg.configFile = {
    "./VSCodium/User/settings.json".source = ./settings.json;
  };
}
