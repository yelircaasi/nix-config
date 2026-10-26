{
  pkgs,
  g,
  # deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet {
    core = with pkgs; [openode];
  };
}
