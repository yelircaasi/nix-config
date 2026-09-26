{
  description = "yelircaasi's nix config, designed to declaratively share configuration across devices";

  outputs = {
    self,
    nixpkgs,
    home-manager,
    rust-overlay,
    nixgl,
    ...
  } @ inputs: let
    /*
    TODO::prio2: add fields?
      keyRemapper         ()
      bootLoader          ()

      flatpak             ()
      snap?               (https://flakehub.com/flake/io12/nix-snapd?view=usage)
    */
    deviceDeclarations = import ./devices.nix;
    mylib = import ./mylib.nix {inherit inputs g;}; # move to nixos-utils flake (called mylib)  TODO::prio2
    # inherit (mylib) g;
    g = mylib.globalDefs;
  in {
    nixosConfigurations = mylib.makeNixosConfigurations deviceDeclarations;
    homeConfigurations = mylib.makeHomeManagerConfigurations deviceDeclarations;
    devShells = mylib.makeDevShells deviceDeclarations;
    packages.x86_64-linux = {
      # TODO::prio1: ADD flake-utils.lib.eachDefaultSystem; make derivations instead of thunks
      colors = {
        json = builtins.toJSON g.color;
        nix = g.color;
      };
      keys = {
        json = builtins.toJSON g.key;
        nix = g.key;
      };
    };
  };

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/5bacb6c43c4f82f7265acab8e1437660cc752a97"; # updated 09-2026
      # config = {allowUnfree = true;};
    };

    home-manager = {
      url = "github:nix-community/home-manager/0b2f1129177f70c5f0f5d88bb53c49ca47d0bfc0"; # updated 2026-09
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay/47394c8e8ad56c63181864924d781045f602e472";  # updated 09-2026
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay = {
      url = "github:oxalica/rust-overlay/fb058ecf6d14837ea152a3d5225ce7f88ee5cde1"; # updated 2026-09
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # TODO::prio1
    neovim-flake = {
      url = github:yelircaasi/neovim-flake/b64271c80b9334cd9ea1174993cb14e12a4b80da; # updated 2026-09
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.neovim-nightly-overlay.follows = "neovim-nightly-overlay";
      inputs.blink-lib.follows = "blink-lib";
      # inputs.flake-utils.follows = "flake-utils";
    };

    blink-lib = {
      url = "github:saghen/blink.lib/fd9a48ebbe6ec30d5dfcc5b42c243941ccdca1aa"; # updated 09-2026
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # neovim-plugins = {
    #   url = "github:trip-zip/somewm/cb0b8e47125f3f167610f335ec8ce12b6d52d8fd";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    somewm = {
      url = "github:trip-zip/somewm/9b680d6651d5011ba954b26e199f9be51409b354";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix/2bd00bd9bb35fe6d114888c8f1c2e946c541dd8f"; # updated 2026-09
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions/1777920f3688105a47b95b229dcefc85ae1bb42e?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixgl = {
      url = "github:nix-community/nixGL/b6105297e6f0cd041670c3e8628394d4ee247ed5";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nix-treesitter = {
    #   url = "github:ratson/nix-treesitter/d9d35e37a5b2aee2f3f4d14c66e2bf0604dae4ce";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    quickshell = {
      # add ?ref=<tag> to track a tag
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions/ff4a4123af3924ee8741902d0d0af6debdae36a9";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nix-utils = {  TODO::prio2
    #   url = "github:yelircaasi/nix-utils/...";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # TODO::prio5
    # swayfx = {
    #   url = "github:WillPower3309/swayfx/f0ecffe593574593ec99c104fa12e4bfd593b0f2";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  nixConfig = {
    allowUnfree = true;
  };
}
