{inputs}: rec {
  lib = import ./lib {lib = inputs.nixpkgs.lib;};
  key = import ./keybindings {lib = lib;};
  color = import ./colors {lib = lib;};
}
