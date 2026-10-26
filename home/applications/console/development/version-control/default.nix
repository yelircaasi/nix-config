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
      git # PLACEHOLDERLINK
      lazygit # PLACEHOLDERLINK
      jujutsu # PLACEHOLDERLINK
      lazyjj # PLACEHOLDERLINK
      blazingjj # PLACEHOLDERLINK
      jjui # PLACEHOLDERLINK
    ];
  };
}
