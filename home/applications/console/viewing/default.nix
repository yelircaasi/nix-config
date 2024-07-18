{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  imports = [
    ./bat
    ./eza
    ./ov
    ./tre-command
  ];
}
