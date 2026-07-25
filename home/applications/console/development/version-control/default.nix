{
  config,
  inputs,
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    minimal = with pkgs; [
      git
      lazygit
      jujutsu
      lazyjj
      blazingjj
      jjui
    ];
  };
}
