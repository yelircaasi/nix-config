{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    # wl-clipboard
    wl-clipboard-rs
  ];
  # TODO: CONFIG FOR wl-clipboard
}
