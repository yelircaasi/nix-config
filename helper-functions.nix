{
  inputs,
  g,
}: rec {
  makeNixosConfig = {
    name,
    defaultShell ? "bash",
    shells ? ["bash"],
    windowManager ? null,
    additionalModules,
  } @ deviceConfig:
    inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs g deviceConfig; };#lib = inputs.nixpkgs.lib; };
      modules =
        [
          ./nixos/${name}-configuration.nix
        ]
        ++ additionalModules;
    };

  makeHomeManagerConfig = {
    name,
    defaultShell ? "bash",
    shells ? ["bash"],
    windowManager ? null,
    additionalModules ? [],
  } @ deviceConfig:
    inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = {inherit inputs g deviceConfig; };#lib = inputs.nixpkgs.lib; };
      modules = [./home-manager/${name}.nix] ++ additionalModules;
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
