{
  pkgs,
  g,
  deviceConfig,
  includeBySet,
  ...
}: {
  imports =
    g.selectViaConsoleSet
    deviceConfig {
      minimal = [./wl-clipboard];
      core = [];
      extended = [];
    };
}
