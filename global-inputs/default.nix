{inputs}: rec {
  lib = import ./lib {lib = inputs.nixpkgs.lib;};
  key = import ./keybindings {inherit lib;};
  color = import ./colors {inherit lib;};
}
