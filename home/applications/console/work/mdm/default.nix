{
  config,
  pkgs,
  lib,
  g,
  deviceConfig,
  ...
}: 
# let
#   packages = builtins.map (p: "${p.name} ${p}") (config.home.packages);
#   sortedUnique = builtins.sort builtins.lessThan (lib.lists.unique packages);
#   packagesText = lib.strings.concatLines sortedUnique;
# in 
{
  home.packages = [
    (
      pkgs.writers.writePython3Bin
      "list-all-nix-packages"
      {
        libraries = [pkgs.python312];
        flakeIgnore = [ "E501" "W503" ];
      }
      (builtins.readFile ./list_all_nix_packages.py)
    )
    (
      pkgs.writers.writePython3Bin
      "get-screen-lock-timeout"
      {
        libraries = [pkgs.python312];
        flakeIgnore = [  ];
      }
      (builtins.readFile ./get_screen_lock_timeout.py)
    )
    
    (
      pkgs.writers.writePython3Bin
      "inovex-mdm-inventory-py"
      {
        libraries = with pkgs; [python312 python3Packages.requests];
        flakeIgnore = [ "E501" "F841" ];
      }
      (builtins.readFile ./inovex_mdm_inventory.py)
    )
    (
      pkgs.writers.writeBashBin
      "inovex-mdm-inventory"
      # {libraries = with pkgs; [];}
      (builtins.readFile ./inovex-mdm-inventory.sh)
    )
  ];
  # xdg.cacheFile.".nix-packages.txt".text = packagesText;
  # home.file.".config/.nix-packages.txt".text = packagesText;
}
