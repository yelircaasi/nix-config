{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    # wl-clipboard
    (pkgs.lib.mkIf deviceConfig.isNixOS wl-clipboard-rs)
  ];
  # TODO: CONFIG FOR wl-clipboard
}
