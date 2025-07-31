{
  pkgs,
  inputs,
  g,
  deviceConfig,
  ...
}: {
  programs.starship = {
    enable = deviceConfig.prompt == "starship";
    # https://mynixos.com/home-manager/options/programs.starship
    # settings = {}; #TODO::prio2
  };

  home.packages = [pkgs.starship];
}
