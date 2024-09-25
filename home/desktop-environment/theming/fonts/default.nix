{pkgs, ...}: {
  home.packages = with pkgs; [
    fontforge-gtk
    # python312Packages.fontforge
    font-config-info
    fontconfig
    # fontforge-fonttools
    nerdfix
    # fontfor # TODO: won't build; maybe needs an override or just a PR
    # font-manager (?)
    gnome-font-viewer
    fontpreview
    nerd-font-patcher

    fira-code
    fira-code-nerdfont
    fira-code-symbols
    # dejavu_fonts
    # freefont_ttf
    # gyre-fonts # TrueType substitutes for standard PostScript fonts
    # liberation_ttf
    unifont
    noto-fonts-color-emoji
    xkcd-font
  ];
}
