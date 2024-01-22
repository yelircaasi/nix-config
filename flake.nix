{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";

    # Neovim
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
    overlays = [inputs.neovim-nightly-overlay.overlay];
    g = import ./global-inputs;

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
      (acc: configSet: let name = configSet.name; in acc // {"${name}" = (makeNixosConfig configSet);})
      {}
      deviceDeclarationList;

    makeHomeManagerConfigurations = deviceDeclarationList:
      builtins.foldl'
      (acc: configSet: let name = configSet.name; in acc // {"${name}" = (makeHomeManagerConfig configSet);})
      {}
      deviceDeclarationList;

    deviceDeclarations = [
      {
        name = "betsy";
        shell = "bash";
        windowManager = "hyprland";
      }
      {
        name = "hank";
        shell = "bash";
        windowManager = "i3";
      }
      {
        name = "malina";
        shell = "bash";
        windowManager = null;
      }
    ];
  in {
    nixosConfigurations = makeNixosConfigurations deviceDeclarations;
    homeConfigurations = makeHomeManagerConfigurations deviceDeclarations;
  };
}
