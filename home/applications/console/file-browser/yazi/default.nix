{
  g,
  deviceConfig,
  ...
}: {
  programs.yazi = {
    enable = true;
    shellWrapperName = "y";
    # TODO::prio1:
    #
    settings = {};
  };
}
