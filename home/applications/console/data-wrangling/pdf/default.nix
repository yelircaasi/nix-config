{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      poppler_utils
      # xpdf  # INSECURE
    ];
  };
}
