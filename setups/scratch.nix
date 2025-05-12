{pkgs, ...}: {
  prepare-wallpaper = (
      pkgs.writers.writePython3Bin
      "prepare-wallpaper"
      {
        libraries = with pkgs.python312Packages; [opencv-python-headless];  # use willow?
        flakeIgnore = ["E501" "F841"];
      }
      (builtins.readFile ./make_wallpaper.py)
    )

  wallpaper-images = pkgs.mkDerivation {
    name = "wallpaper";
    src = ./wallpaper;
    installPhase = ''
      ${wallpaper-maker}/bin/prepare-wallpaper ${wallpaperDirectory}
      mkdir -p $out
      cp -r ./* $out
    '';
  };
}