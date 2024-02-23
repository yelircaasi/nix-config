{lib}: let
  general = import ./primitives.nix;
  apps = import ./applications.nix;
in
  {
    inherit general;
    # inherit (apps);
  }
  // apps
