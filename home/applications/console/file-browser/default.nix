{
  pkgs,
  g,
  deviceConfig,
  includeBySet,
  buildLists,
  ...
}: {
  # imports = [
  #   ./nnn
  #   ./xplr
  #   ./yazi
  # ];
  imports =
    g.buildLists
    deviceConfig.consoleSet
    deviceConfig.setOverrides {
      minimal = [./yazi];
      core = [./xplr];
      extended = [./nnn];
    };

  # imports = g.buildLists "core" {add = []; remove = [];} {
  #   minimal = ["a" "b"];
  #   core = ["hi"];
  #   extended = ["hello"];
  # };
}
