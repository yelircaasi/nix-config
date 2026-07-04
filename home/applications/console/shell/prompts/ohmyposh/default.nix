{
  pkgs,
  inputs,
  g,
  deviceConfig,
  ...
}: {
  programs.oh-my-posh = {
    enable = deviceConfig.prompt == "ohmyposh";
    # https://mynixos.com/home-manager/options/programs.ohmyposh
    # settings = {}; #TODO::prio2
  };

  home.packages = [pkgs.oh-my-posh];
}
