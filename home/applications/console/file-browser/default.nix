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
    g.selectViaConsoleSet
    deviceConfig {
      minimal = [./yazi];
      core = [./xplr];
      extended = [./nnn];
    };
}
