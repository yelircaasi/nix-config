{
  pkgs,
  g,
  deviceConfig,
  ...
}: let
  _script =
    pkgs.writers.writePython3Bin
    "prepare-wallpapers"
    {libraries = [pkgs.python312Packages.opencv-python-headless];}
    (builtins.readFile ./prepare_wallpapers.py);

  setupNames = builtins.concatStringsSep "," deviceConfig.monitorSetups;
  imageName = deviceConfig.wallpaper;
  setupConfigFile = g.writeJSON "monitor-setup-config.json" g.setups;
  imageConfigFile = g.writeJSON "wallpaper-image-config.json" (import ./image-config.nix);
  imageDirectory = ./images;
in
  pkgs.stdenv.mkDerivation {
    name = "wallpapers";
    src = ./.;
    buildInputs = [_script];
    installPhase = ''
      mkdir -p $out/images
      echo "testing testing" > $out/images/test.txt
      ${_script}/bin/prepare-wallpapers \
          ${setupNames} \
          ${imageName} \
          ${setupConfigFile} \
          ${imageConfigFile} \
          ${imageDirectory} \
          $out/images

    '';
  }
