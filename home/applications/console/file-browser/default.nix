{
  pkgs,
  g,
  deviceConfig,
  includeBySet,
  ...
}: {
  # imports = [
  #   ./nnn
  #   ./xplr
  #   ./yazi
  # ];
  imports =
    g.buildList
    deviceConfig.consoleSet
    deviceConfig.setOverrides {
      minimal = [./yazi];
      core = [./xplr];
      extended = [./nnn];
    };
}
