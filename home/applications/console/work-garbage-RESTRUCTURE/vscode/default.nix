{pkgs, ...}: {
  home.packages = [
    pkgs.vscode
  ];
  xdg.configFile = {
    "./Code/User/settings.json".source = ./settings.json;
  };
}
