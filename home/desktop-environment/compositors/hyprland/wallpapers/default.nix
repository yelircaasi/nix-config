{pkgs, ...}: let
  _script =
    pkgs.writers.writePython3Bin
    "prepare-wallpapers"
    {libraries = [pkgs.python312.opencv-python-headless];}
    (builtins.readFile ./prepare-wallpapers);

  setupNames = builtins.concatStringsSep "," deviceConfig.monitorSetups;
  imageName = deviceConfig.wallpaper;
  imageConfigPath = ./images.json;
  imageDirectory = ./images;
in
  pkgs.stdenv.mkDerivation {
    name = "default";
    src = null;
    buildInputs = [];
    installPhase = ''
      mkdir -p $out/images
      # ${_script}/bin/prepare-wallpapers ${setupNames} ${imageName} ${imageConfigPath} ${imageDirectory} $out/images

    '';
  }
