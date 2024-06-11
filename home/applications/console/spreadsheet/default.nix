{pkgs, ...}: {
  home.packages = with pkgs; [
    sc-im
    tidy-viewer
    # TODO: texel https://github.com/Lauriat/texel
  ];
}
