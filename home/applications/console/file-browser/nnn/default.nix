{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  programs.nnn = {
    enable = true;
    package = pkgs.nnn.override {withNerdIcons = true;};
    # TODO::prio2: import from global keybindings
    bookmarks = {
      D = "~/Documents";
      d = "~/Downloads";
      p = "~/Pictures";
      v = "~/Videos";
    };
    extraPackages = with pkgs; [ffmpegthumbnailer mediainfo sxiv];
  };
}
