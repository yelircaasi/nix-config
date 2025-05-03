{
  pkgs,
  g,
  deviceConfig,
  includeBySet,
  ...
}: {
  imports = [
    ./nnn
    ./xplr
    ./yazi
  ];
  # imports = includeBySet deviceConfig.consoleSet deviceConfig.setOverrides {
  #   minimal = [./yazi];
  #   core = [./xplr];
  #   extended = [./nnn];
  # };
}
