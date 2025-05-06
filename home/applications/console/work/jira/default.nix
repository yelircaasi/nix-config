{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.jira-cli-go];
  #xdg.configFile.jira = {
  #  source = ./jira;
  #  recursive = true;
  #};
}
