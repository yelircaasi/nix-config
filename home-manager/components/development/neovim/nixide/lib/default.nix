{
  inputs,
  pkgs,
  lib,
  g,
  ...
}: rec {
  mkNeovimHomeManagerAttrs = nvConfig: let
    cfg = validateInputs nvConfig;
    colors = updateColors cfg;
    keybinds = updateKeybinds cfg;
  in {
    home.packages = updateExternalApps cfg;

    programs.neovim = {
      enable = cfg.enable;
      defaultEditor = cfg.isDefaultEditor;
      withPython3 = true;
      withNodeJs = true;
      withRuby = false;
      package = buildNvimPackageDescription cfg;
      viAlias = cfg.commands.vi;
      vimAlias = cfg.commands.vim;
      vimdiffAlias = cfg.commands.vimdiff;
      plugins = collectPluginList cfg;
    };

    xdg.configFile.nvim = mkXdgConfigNvimDir cfg;
  };

  validateInputs = {}: {};

  updateColors = {}: {};

  updateKeybinds = {}: {};

  updateExternalApps = {}: [];

  collectPluginList = {}: [];

  collectExternalList = {}: {};

  buildNvimConfigDir = {}: {};

  buildNvimPackageDescription = {}: {};

  mkXdgConfigNvimDir = {}: {};

  mkDocumentation = {}: {};

  mkPrecompiledLuaPlugin = {}: {};

  mkPrecompiledRustPlugin = {}: {};

  mkPrecompiledPythonPlugin = {}: {};

  mkPrecompiledJsPlugin = {}: {}; # https://github.com/bytenode/bytenode

  mkPrecompiledNvimConfig = nvimConfigDir: {};
}
