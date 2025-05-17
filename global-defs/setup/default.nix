{}: let
  monitors = import ./monitors.nix;
in {
  inherit monitors;
  setups = {
    betsyHomeTriple = {
      aliases = {hyprland = "hhome";};
      monitors = with monitors; [betsy homeLeft homeRight];
    };
    oliviaWork1Triple = {
      aliases = {hyprland = "hwork1";};
      monitors = with monitors; [olivia work1Samsung work1Dell];
    };
    oliviaHomeTriple = {
      aliases = {hyprland = "hhome";};
      monitors = with monitors; [olivia homeLeft homeRight];
    };
  };
}
