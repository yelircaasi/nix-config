{pkgs, ...}: {
  home.packages = with pkgs; [
    fontforge-gtk
    # python311Packages.fontforge
    font-config-info
    fontconfig
    # fontforge-fonttools
    nerdfix
    # fontfor # TODO: won't build; maybe needs an override or just a PR
    # font-manager (?)
    gnome.gnome-font-viewer
    fontpreview
    nerd-font-patcher
  ];
}
