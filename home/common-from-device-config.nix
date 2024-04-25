{
  inputs,
  pkgs,
  g,
  deviceConfig,
  ...
}: let
  inherit (inputs.lib) mkIf;
  inherit (builtins) elem;
in {
  imports = [
    ../development/git
    ../development/cli-utils/core
    ../development/cli-utils/tui-file-browser/nnn
    ../development/cli-utils/tui-file-browser/xplr
    ../development/cli-utils/tui-file-browser/yazi
    ../development/shell
    (mkIf deviceConfig.includeNeovim ../development/neovim)
    (mkIf (elem "wezterm" deviceConfig.terminal-emulators) ../gui/terminal-emulator/wezterm)
    (mkIf (elem "nyxt" deviceConfig.browsers) ../gui/browser/nyxt)
    (mkIf (elem "qutebrowser" deviceConfig.browsers) ../gui/browser/qutebrowser)
    (mkIf (elem "ungoogle-chromium" deviceConfig.browsers) ../gui/browser/ungoogled-chromium)
    (mkIf (elem "vieb" deviceConfig.browsers) ../gui/browser/vieb)
    (mkIf (elem "firefox" deviceConfig.browsers) ../gui/browser/firefox)
  ];
}
