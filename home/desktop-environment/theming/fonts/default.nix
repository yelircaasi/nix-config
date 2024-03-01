{pkgs, ...}: {
  home.packages = with pkgs; [
    fontforge-gtk
    python311Packages.fontforge
    font-config-info
    fontforge-fonttols
    nerdfix
    fontfor
    # font-manager (?)
    gnome-font-viewer
    fontpreview
    nerd-font-patcher
  ];
}
