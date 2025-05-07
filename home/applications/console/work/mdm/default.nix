{
  pkgs,
  g,
  deviceConfig,
  ...
}:
  let
    packages = builtins.map (p: "${p.name} ${p.version}") (config.environment.systemPackages ++ config.home.packages);
    sortedUnique = builtins.sort builtins.lessThan (lib.lists.unique packages);
    packagesText = lib.strings.concatLines sortedUnique;
  in
{
  home.packages = [
    (
      pkgs.writers.writePython3Bin 
        inovex-mdm-inventory 
        {libraries = [python312 pkgs.python3Packages.requests];}
        (builtins.readFile ./inovex_mdm_inventory.py)
    )
  ];
  xdg.cacheFile.".nix-packages.txt".text = packagesText;
  home.file."${config.xdg.configHome}".".nix-packages.txt".text = packagesText; 
}
