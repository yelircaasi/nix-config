{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  # home.packages = g.selectViaConsoleSet deviceConfig {
  #   minimal = [];
  #   core = with pkgs; [opencode];
  # };
  home.packages = [pkgs.opencode];
}
