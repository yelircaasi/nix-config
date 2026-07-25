{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    extended = with pkgs; [
      poppler-utils
      # xpdf  # INSECURE
    ];
  };
}
