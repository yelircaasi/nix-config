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
    helpers = import ./helper-functions.nix {inherit nixpkgs home-manager g inputs outputs;};

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
    nixosConfigurations = helpers.makeNixosConfigurations deviceDeclarations;
    homeConfigurations = helpers.makeHomeManagerConfigurations deviceDeclarations;
  };
}
