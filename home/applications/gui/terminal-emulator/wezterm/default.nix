{
  inputs,
  lib,
  config,
  pkgs,
  custom,
  g,
  deviceConfig,
  ...
}: let
  # Fetch the specific file from the repo.
  # Replace "poaceholder/placeholder" with your actual GitHub user/repo.
  # Pin to a specific revision for reproducibility.
  wezterm-run-src = pkgs.fetchFromGitHub {
    owner = "yelircaasi";
    repo = "wezterm-run.nvim";
    rev = "12d134b2d4b72fc78be0dbf4229799c7c7db7622";
    sha256 = "sha256-4ZpUNl7uiChpusMwERtgdUo9HnMvY44Z46CVvqStc1g=";
  };
in {
  programs.wezterm.enable = true;
  # programs.wezterm.extraConfig = builtins.readFile ./wezterm.lua ;
  # programs.wezterm.enableZshIntegration= true ;

  xdg.configFile."./wezterm/wezterm.lua".text = g.utils.readAndInterpolate g ./wezterm.lua;
  xdg.configFile."./wezterm/wezterm-run.lua".source = "${wezterm-run-src}/for_wezterm/wezterm-run.lua";
  xdg.configFile."./wezterm/colors/odenwald.toml".text = builtins.readFile ./odenwald.toml;
}
