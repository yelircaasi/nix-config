{
  inputs,
  lib,
  config,
  pkgs,
  custom,
  g,
  deviceConfig,
  ...
}: {
  programs.wezterm.enable = true;
  # programs.wezterm.extraConfig = builtins.readFile ./wezterm.lua ;
  # programs.wezterm.enableZshIntegration= true ;

  xdg.configFile."./wezterm/wezterm.lua".text = g.utils.readAndInterpolate g ./wezterm.lua;
  xdg.configFile."./wezterm/colors/odenwald.toml".text = builtins.readFile ./odenwald.toml;
}
