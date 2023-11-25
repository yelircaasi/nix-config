{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";

    # Home manager
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # TODO: Add any other flake you might need
    # hardware.url = "github:nixos/nixos-hardware";

    # Shameless plug: looking for a way to nixify your themes and make
    # everything match nicely? Try nix-colors!
    # nix-colors.url = "github:misterio77/nix-colors";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
  in {
    # NixOS configuration entrypoint; available through 'nixos-rebuild --flake .#your-hostname'

    nixosConfigurations = {
      betsy = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs;};
        # > Our main nixos configuration file <
        modules = [./nixos/configuration.nix];
      };
    };

    # Standalone home-manager configuration entrypoint; available through 'home-manager --flake .#your-username@your-hostname'
    
    homeConfigurations = {
      
      "betsy" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        # system = "x86_64-linux";
        # username = "isaac";
        # homeDirectory = "/home/isaac";
        # configuration = ./home-config/hosts/hank.nix;
        # stateVersion = "23.11";
        
        
        extraSpecialArgs = {inherit inputs outputs;};
        # > Our main home-manager configuration file <
        modules = [
          ./home-manager/betsy.nix
        ];
      };
      
      "hank" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        # system = "x86_64-linux";
        # username = "isaac";
        # homeDirectory = "/home/isaac";
        # configuration = ./home-config/hosts/hank.nix;
        # stateVersion = "23.11";
        
        extraSpecialArgs = {inherit inputs outputs;};
        # > Our main home-manager configuration file <
        modules = [
          ./home-manager/hank.nix
        ];
      };
    };
  };
}
