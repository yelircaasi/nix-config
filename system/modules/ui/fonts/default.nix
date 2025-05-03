{
  pkgs,
  lib,
  g,
  ...
}: {
  fonts = {
    enableDefaultPackages = true;
    enableGhostscriptFonts = false;
    packages = with pkgs; [
      fira-code
      nerd-fonts.fira-code
      fira-code-symbols
      # dejavu_fonts
      # freefont_ttf
      # gyre-fonts # TrueType substitutes for standard PostScript fonts
      # liberation_ttf
      unifont
      noto-fonts-color-emoji
      xkcd-font

      /*
      See: https://www.nerdfonts.com/font-downloads

      Fonts I like; see here: https://www.programmingfonts.org/
      === Round Aesthetic:
      0xProto
      Borg Sans Mono
      Cascadia Code
      FiraCode
      Geist
      Hasklig
      JetBrains Mono
      JuliaMono ******************************
      Lilex
      Monaspace Argon
      Monaspace Neon
      Twilio Sans Mono
      Victor Mono

      === Round with Cursive Italic
      Cartograph
      Ellograph
      Maple

      === Reminiscent of Handwriting
      Fairfax Hax HD
      Fantasque Sans HD
      Lotion
      Monaspace Radon

      === Angular / Unique
      Monaspace Krypton
      Monocraft

      === Towards Times New Roman
      Monaspace Xenon

      === Somewhat narower:
      D2Coding
      Iosevka
      Monoid
      Nanum Gothic Coding

      === Retro Aesthetic
      APL2741
      Fiedsys with Ligatures

      === Too Robotic
      Fragment Mono

      */
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        emoji = ["Noto Color Emoji"];
        monospace = ["FiraCode Nerd Font Mono"];
        sansSerif = ["DejaVu Sans"];
        serif = ["DejaVu Serif"];
      };
      hinting = {
        enable = true;
        autohint = false;
        style = "slight";
      };
      subpixel = {};
      allowBitmaps = true;
      allowType1 = true;
      antialias = true;
      cache32Bit = true;
      includeUserConf = true;
      localConf = '''';
      useEmbeddedBitmaps = true;
    };
    fontDir = {
      enable = true;
      decompressFonts = true;
    };
  };
}
