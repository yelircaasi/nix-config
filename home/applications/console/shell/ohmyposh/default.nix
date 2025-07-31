{
  inputs,
  g,
  deviceConfig,
  ...
}: {
  programs.oh-my-posh = {
    enable = (deviceConfig.prompt == "oh-my-posh");
    # https://mynixos.com/home-manager/options/programs.oh-my-posh
    # settings = {}; #TODO::prio2
  };

  home.packages  [pkgs.ohmyposh];
}