{}: let
  monitors = import ./monitors.nix;
in {
  inherit monitors;
  setups = {
    betsy-home-3 = {
      aliases = {hyprland = "hhome";};
      monitors = with monitors; [betsy homeLeft homeRight];
    };
    olivia-work1-3 = {
      aliases = {hyprland = "hwork";};
      monitors = with monitors; [olivia work1Samsung work1Dell];
    };
    olivia-home-3 = {
      aliases = {hyprland = "hhome";};
      monitors = with monitors; [olivia homeLeft homeRight];
    };
  };
}
