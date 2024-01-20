{
  lib,
  config,
  pkgs,
  ...
}: {
  home.packages = [jira-cli-go];
  #xdg.configFile.jira = {
  #  source = ./jira;
  #  recursive = true;
  #};
}
