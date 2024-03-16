{lib}: let
  primitives = import ./primitives.nix;
  applications = import ./applications.nix {inherit lib;};
  overrides = import ./overrides.nix;
in
  # {
  #   inherit general;
  #   # inherit (apps);
  # }
  primitives
  // applications
  // overrides
