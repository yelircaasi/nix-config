{
  inputs,
  g,
}: rec {
  makeNixosConfig = {
    name,
    description,
    defaultShell,
    otherShells,
    compositors,
    desktopEnvironments,
    nvidia,
    pipewire,
    jack,
    networkmanager,
    wayland,
    x11,
    ssh-server,
    docker,
    podman,
    printing,
    extraGroups,
    extraSystemPackageNames,
    additionalModules,
  } @ deviceConfig:
    inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs g deviceConfig;}; #lib = inputs.nixpkgs.lib; };
      modules =
        [
          ./system/configuration-${deviceConfig.name}.nix
        ]
        ++ additionalModules;
    };

  makeHomeManagerConfig = {
    name,
    description,
    defaultShell,
    otherShells,
    compositors,
    desktopEnvironments,
    nvidia,
    pipewire,
    jack,
    networkmanager,
    wayland,
    x11,
    ssh-server,
    docker,
    podman,
    printing,
    extraGroups,
    extraSystemPackageNames,
    additionalModules,
  } @ deviceConfig:
    inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = {inherit inputs g deviceConfig;}; #lib = inputs.nixpkgs.lib; };
      modules = [./home/${deviceConfig.name}.nix] ++ additionalModules;
    };

  makeNixosConfigurations = deviceDeclarationList:
    builtins.foldl'
    (configsAttrSet: configSet: let name = configSet.name; in configsAttrSet // {"${name}" = makeNixosConfig configSet;})
    {}
    deviceDeclarationList;

  makeHomeManagerConfigurations = deviceDeclarationList:
    builtins.foldl'
    (configsAttrSet: configSet: let name = configSet.name; in configsAttrSet // {"${name}" = makeHomeManagerConfig configSet;})
    {}
    deviceDeclarationList;
}
