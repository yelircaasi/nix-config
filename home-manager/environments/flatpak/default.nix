{
  inputs,
  ...
}:
{
  home.file = {
    ".local/share/flatpak/overrides/global".source = ./overrides/global ;
    ".local/share/flatpak/overrides/com.vscodium.codium".source = ./overrides/com.vscodium.codium ;
    ".local/share/flatpak/overrides/com.brave.Browser".source = ./overrides/com.brave.Browser ;
    ".local/share/flatpak/overrides/com.github.Eloston.UngoogledChromium".source = ./overrides/com.github.Eloston.UngoogledChromium ;
    ".local/share/flatpak/overrides/com.vscodium.codium".source = ./overrides/com.vscodium.codium ;
    ".local/share/flatpak/overrides/org.chromium.Chromium".source = ./overrides/ ;
    ".local/share/flatpak/overrides/org.wezfurlong.wezterm".source = ./overrides/ ;
  };
}
