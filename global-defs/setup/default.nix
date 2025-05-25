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
    olivia-work2-3 = {
      aliases = {hyprland = "hwork2";};
      monitors = with monitors; [olivia work2Samsung work2Dell];
    };
    olivia-work3-3 = {
      aliases = {hyprland = "hwork3";};
      monitors = with monitors; [work3Dell work3Samsung olivia];
    };
    olivia-home-3 = {
      aliases = {hyprland = "hhome";};
      monitors = with monitors; [olivia homeLeft homeRight];
    };
  };
}
