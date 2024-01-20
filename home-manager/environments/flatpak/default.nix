{inputs, ...}: let
  braveID = "com.brave.Browser";
  ungoogledChromiumID = "com.github.Eloston.UngoogledChromium";
  vscodiumID = "com.vscodium.codium";
  chromiumID = "org.chromium.Chromium";
  weztermID = "org.wezfurlong.wezterm";
in {
  home.file = {
    ".local/share/flatpak/overrides/global".source = ./overrides/global;
    ".local/share/flatpak/overrides/${braveID}".source = ./overrides/${braveID};
    ".local/share/flatpak/overrides/${ungoogledChromiumID}".source = ./overrides/${ungoogledChromiumID};
    ".local/share/flatpak/overrides/${vscodiumID}".source = ./overrides/${vscodiumID};
    ".local/share/flatpak/overrides/${chromiumID}".source = ./overrides/${chromiumID};
    ".local/share/flatpak/overrides/${weztermID}".source = ./overrides/${weztermID};
  };
}
