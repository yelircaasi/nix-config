{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [
    pkgs.rclone
  ];
  #xdg.configFile.jira = {
  #  source = ./jira;
  #  recursive = true;
  #};
}
