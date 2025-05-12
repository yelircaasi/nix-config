{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  programs.zathura = {
    enable = true;
    package = pkgs.zathura;
    options = {
      recolor = "true";
      recolor-lightcolor = "rgba(167, 27, 27, 0.8)";
      recolor-darkcolor = "rgba(60, 157, 58, 0.8)";
      default-bg = "rgba(62, 66, 128, 0.8)";

      # # default-bg = "#000800";
      # # default-fg = "#99AA99";

      # recolor-lightcolor = "#001000";
      # recolor-darkcolor = "#777777";
      # default-bg = "#777777";
      # default-fg = "#001000";

      # font = "Inter 12";
      # selection-notification = true;

      # selection-clipboard = "clipboard";
      # adjust-open = "best-fit";
      # pages-per-row = "1";
      # scroll-page-aware = "true";
      # scroll-full-overlap = "0.01";
      # scroll-step = "100";
      # zoom-min = "10";
    };
    mappings = {};
    extraConfig = ''

    '';
  };
}
