{
  g,
  deviceConfig,
  ...
}: {
  programs.zoxide = {
    enable = true;
    # TODO::prio2:
    #
    enableBashIntegration = true;
    #enableFishIntegration = true;
    #enableNushellIntegration = true;
    options = [];
  };
}
