{
  g,
  deviceConfig,
  ...
}: {
  programs.zoxide = {
    enable = true;
    # TODO:
    #
    enableBashIntegration = true;
    #enableFishIntegration = true;
    #enableNushellIntegration = true;
    options = [];
  };
}
