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
      lua-language-server
      stylua
    ];
  };
}
