{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports =
    g.selectViaConsoleSet
    deviceConfig {
      minimal = [
        ./bat
        ./eza
        ./ov
        ./tre-command
      ];
    };
}
