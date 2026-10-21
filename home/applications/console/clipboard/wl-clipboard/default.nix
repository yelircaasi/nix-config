{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    # wl-clipboard
    (pkgs.lib.mkIf deviceConfig.isNixOS wl-clipboard-rs) # https://github.com/bugaevc/wl-clipboard
  ];
  # TODO: CONFIG FOR wl-clipboard
}
