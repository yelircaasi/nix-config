{pkgs, ...}: {
  home.packages = with pkgs; [
    fontforge-gtk
    # python313Packages.fontforge
    font-config-info
    fontconfig
    # fontforge-fonttools
    nerdfix
    # fontfor # TODO::prio2: won't build; maybe needs an override or just a PR
    # font-manager (?)
    gnome-font-viewer
    fontpreview
    nerd-font-patcher

    fira-code
    nerd-fonts.fira-code
    # fira-code-symbols
    # dejavu_fonts
    # freefont_ttf
    # gyre-fonts # TrueType substitutes for standard PostScript fonts
    # liberation_ttf
    unifont
    noto-fonts-color-emoji
    xkcd-font
  ];
}
