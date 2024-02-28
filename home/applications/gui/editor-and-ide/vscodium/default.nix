{pkgs, ...}: {
  home.packages = [
    pkgs.vscode
  ];
  xdg.configFile = {
    "./VSCodium/User/settings.json".source = ./settings.json;
  };
}
