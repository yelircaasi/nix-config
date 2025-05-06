{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [
    #pkgs.azure-cli
  ];
  #xdg.configFile.jira = {
  #  source = ./jira;
  #  recursive = true;
  #};
}
