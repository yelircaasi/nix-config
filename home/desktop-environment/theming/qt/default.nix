{
  pkgs,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs; [
    adwaita-qt
    adwaita-qt6
    libsForQt5.qtstyleplugins
  ];
  qt = {
    enable = true;
    platformTheme = "gtk3";
    style = {
      name = "adwaita-dark";
      package = pkgs.adwaita-qt;
    };
    #"adwaita-dark"; # null or one of "adwaita", "adwaita-dark", "adwaita-highcontrast", "adwaita-highcontrastinverse", "bb10bright", "bb10dark", "breeze", "cde", "cleanlooks", "gtk2", "kvantum", "motif", "plastique"
  };
  # see: https://discourse.nixos.org/t/how-to-fix-qt-themes-in-nixos/14495 -> probably use kvantum
}
