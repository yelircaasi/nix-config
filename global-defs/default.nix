{lib}: rec {
  lib = import ./lib {inherit lib;};
  key = import ./keybindings {inherit lib;};
  color = import ./colors {inherit lib;};
}
