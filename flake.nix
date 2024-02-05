{
  description = "yelircaasi's nix config, designed to declaratively share configuration across devices";

  inputs = {
    # Nixpkgs
    nixpkgs = {
      url = "github:nixos/nixpkgs/b8b232ae7b8b144397fdb12d20f592e5e7c1a64d";
      #url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager/230836bb7ca318aec7bad8442954da611d06a172";
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
    g = import ./global-inputs {inherit inputs;};
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
