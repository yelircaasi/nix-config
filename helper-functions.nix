{
  inputs,
  g,
}: rec {
  makeNixosConfig = {
    name,
    shell ? "bash",
    windowManager ? null,
  } @ deviceConfig:
    inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs g deviceConfig;};
      modules = [./nixos/${name}-configuration.nix];
    };

  makeHomeManagerConfig = {
    name,
    shell ? "bash",
    windowManager ? null,
  } @ deviceConfig:
    inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = {inherit inputs g deviceConfig;};
      modules = [./home-manager/${name}.nix];
    };

  makeNixosConfigurations = deviceDeclarationList:
    builtins.foldl'
    (acc: configSet: let name = configSet.name; in acc // {"${name}" = makeNixosConfig configSet;})
    {}
    deviceDeclarationList;

  makeHomeManagerConfigurations = deviceDeclarationList:
    builtins.foldl'
    (acc: configSet: let name = configSet.name; in acc // {"${name}" = makeHomeManagerConfig configSet;})
    {}
    deviceDeclarationList;
}
