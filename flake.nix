{
  description = "yelircaasi's nix config, designed to declaratively share configuration across devices";

  inputs = {
    # Nixpkgs
    nixpkgs = {
      url = "github:nixos/nixpkgs/f4a8d6d5324c327dcc2d863eb7f3cc06ad630df4";
      #url = "github:nixos/nixpkgs/nixos-23.11";
    };

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager/10cd9c53115061aa6a0a90aad0b0dde6a999cdb9";
      #url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Neovim
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay/1da2e054a16309d7d7f7669438c8b9a5ef1b4642";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # SwayFX

    swayfx = {
      url = "github:WillPower3309/swayfx/f0ecffe593574593ec99c104fa12e4bfd593b0f2";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Snap
    #nix-snapd = {
    #  url = "github:io12/nix-snapd";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    g = import ./global-inputs;
    helpers = import ./helper-functions.nix {inherit inputs g;};

    deviceDeclarations = [
      {
        name = "betsy";
        defaultShell = "bash";
        shells = ["bash"];
        windowManager = "hyprland";
        additionalModules = [];
      }
      {
        name = "hank";
        defaultShell = "bash";
        shells = ["bash"];
        windowManager = "hyprland";
        additionalModules = [
          #inputs.nix-snapd.nixosModules.default { services.snap.enable = true; }
        ];
      }
      {
        name = "malina";
        defaultShell = "bash";
        shells = ["bash"];
        windowManager = null;
        additionalModules = [];
      }
    ];
  in {
    nixosConfigurations = helpers.makeNixosConfigurations deviceDeclarations;
    homeConfigurations = helpers.makeHomeManagerConfigurations deviceDeclarations;
  };
}
