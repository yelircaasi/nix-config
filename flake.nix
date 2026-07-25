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
      url = "github:nixos/nixpkgs/9a21e4f72175406dc6de50e85cafc03fe5025269";
      # config = {allowUnfree = true;};
    };

    home-manager = {
      url = "github:nix-community/home-manager/37f21dfa5d27e71b75bacd9418b156f9265e312e";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay/f70c69e316e0aa26e1a4b38168622ba9646fa412";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay = {
      url = "github:oxalica/rust-overlay/e8e2021ee8cf3b58b000953ed3bee0d16b5e98e0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # TODO::prio1
    neovim-flake = {
      url = github:yelircaasi/neovim-flake/e6f9748df166139cd1874a90da95cae5d9b0b584;
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.neovim-nightly-overlay.follows = "neovim-nightly-overlay";
      inputs.blink-lib.follows = "blink-lib";
      # inputs.flake-utils.follows = "flake-utils";
    };

    blink-lib = {
      url = "github:saghen/blink.lib/5876dd95deeb70aadbe9f1c0b7117a135061cdac";
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
      url = "github:Mic92/sops-nix/420f8d2e9882911f65cfac15cc706f639ba96cca";
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
