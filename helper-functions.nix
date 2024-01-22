{
  nixpkgs,
  home-manager,
  g,
  inputs,
  outputs,
}: rec {
  makeNixosConfig = {
    name,
    shell ? "bash",
    windowManager ? null,
  } @ deviceConfig:
    nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs outputs g deviceConfig;};
      modules = [./nixos/${name}-configuration.nix];
    };

  makeHomeManagerConfig = {
    name,
    shell ? "bash",
    windowManager ? null,
  } @ deviceConfig:
    home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = {inherit inputs outputs g deviceConfig;};
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
