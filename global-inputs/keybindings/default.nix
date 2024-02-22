{lib}: 
let
  general = import ./general.nix;
  apps = import ./app-specific.nix;
in {
  inherit general;
  inherit (apps);
}
