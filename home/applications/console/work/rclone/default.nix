{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [
    (pkgs.lib.mkIf pkgs.stdenv.hostPlatform.isDarwin pkgs.rclone)
  ];
  #xdg.configFile.jira = {
  #  source = ./jira;
  #  recursive = true;
  #};
}
