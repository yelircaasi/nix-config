{
  inputs,
  g,
}: rec {
  updateAttrsWith = defaultSet: setOfSets:
    builtins.mapAttrs
    (name: configSet: defaultSet // configSet)
    setOfSets;
  makeNixosConfig = {
    name,
    description,
    defaultShell,
    otherShells,
    compositors,
    terminal-emulators,
    browsers,
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
    terminal-emulators,
    browsers,
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
      extraSpecialArgs = {inherit inputs g deviceConfig; };
      modules = [./home/${deviceConfig.name}.nix] ++ additionalModules;
    };

  makeNixosConfigurations = deviceDeclarationAttrSet:
    builtins.mapAttrs
    (name: configSet: makeNixosConfig configSet)
    deviceDeclarationAttrSet;

  makeHomeManagerConfigurations = deviceDeclarationAttrSet:
    builtins.mapAttrs
    (name: configSet: makeHomeManagerConfig configSet)
    deviceDeclarationAttrSet;

  makeDevShells = deviceDeclarationAttrSet: {};
}
