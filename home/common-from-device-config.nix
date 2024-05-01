{
  inputs,
  pkgs,
  lib,
  g,
  deviceConfig,
  ...
}: let
  # appendIf = 
  inherit (builtins) elem;
in {
  imports = [
    ./applications/development/git
    ./applications/development/cli-utils/core
    ./applications/development/cli-utils/tui-file-browser/nnn
    ./applications/development/cli-utils/tui-file-browser/xplr
    ./applications/development/cli-utils/tui-file-browser/yazi
    ./applications/development/shell
    # (pkgs.lib.mkIf deviceConfig.includeNeovim ../development/neovim)
    #./applications/gui/terminal-emulator/wezterm
    
  ]
  ++ (if (elem "wezterm" deviceConfig.terminal-emulators) then [./applications/gui/terminal-emulator/wezterm] else [])
  ++ (if (elem "nyxt" deviceConfig.browsers) then [./applications/gui/browser/nyxt] else [])
  ++ (if (elem "qutebrowser" deviceConfig.browsers) then [./applications/gui/browser/qutebrowser] else [])
  ++ (if (elem "ungoogle-chromium" deviceConfig.browsers) then [./applications/gui/browser/ungoogled-chromium] else [])
  ++ (if (elem "vieb" deviceConfig.browsers) then [./applications/gui/browser/vieb] else []);
  # ++ (if (elem "firefox" deviceConfig.browsers) then [./applications/gui/browser/firefox] else []);
}
