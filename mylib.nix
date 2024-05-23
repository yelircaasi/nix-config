{
  inputs,
  g,
}: let
  pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
  mypkgs = import ./mypkgs.nix {inherit pkgs;};
in rec {
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
    desktopEnvironments,
    terminal-emulators,
    editors,
    browsers,
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
      specialArgs = {inherit inputs g deviceConfig mypkgs;}; #lib = inputs.nixpkgs.lib; };
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
    terminal-emulators,
    editors,
    browsers,
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
      inherit pkgs;
      extraSpecialArgs = {inherit inputs g deviceConfig mypkgs;};
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
