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

    # nix-colors.url = "github:misterio77/nix-colors";
  };

  outputs = 
  {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs:

  let
    inherit (self) outputs;
    overlays = [ inputs.neovim-nightly-overlay.overlay ];
    g = import ./global-inputs;
    
  in
  {

    nixosConfigurations = {
      betsy = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs g;};
        # > Our main nixos configuration file <
        modules = [./nixos/betsy-configuration.nix];
      };
      hank = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs g;};
        # > Our main nixos configuration file <
        modules = [./nixos/hank-configuration.nix];
      };
    };

    homeConfigurations = {
      
      "betsy" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = {inherit inputs outputs g;};
        modules = [ ./home-manager/betsy.nix ];
      };
      
      "hank" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = {inherit inputs outputs g;};
        modules = [ ./home-manager/hank.nix ];
      };

    };
  };
}
