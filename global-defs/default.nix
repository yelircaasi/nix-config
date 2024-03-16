{lib}: rec {
  utils = import ./utils {inherit lib;};
  key = import ./keybindings {inherit lib;};
  color = import ./colors {inherit lib;};
}
