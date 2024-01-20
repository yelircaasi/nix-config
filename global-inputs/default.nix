rec {
  lib = import ./lib;
  key = import ./keybindings {lib = lib;};
  color = import ./colors {lib = lib;};
}
