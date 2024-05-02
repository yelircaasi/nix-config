{
  inputs,
  pkgs,
  lib,
  g,
  deviceConfig,
  ...
}: let
  appendIf = nameBool: namePath:
    if nameBool
    then [namePath]
    else [];
  appendIfIn = nameString: nameList: namePath:
    if (builtins.elem nameString nameList)
    then [namePath]
    else [];
in {
  imports = builtins.concatLists [
    [
      ./applications/development/git
      ./applications/development/cli-utils/core
      ./applications/development/cli-utils/tui-file-browser/nnn
      ./applications/development/cli-utils/tui-file-browser/xplr
      ./applications/development/cli-utils/tui-file-browser/yazi
      ./applications/development/shell
    ]
    (appendIfIn "neovim" deviceConfig.editors ./applications/development/neovim)
    (appendIfIn "wezterm" deviceConfig.terminal-emulators ./applications/gui/terminal-emulator/wezterm)
    (appendIfIn "nyxt" deviceConfig.browsers ./applications/gui/browser/nyxt)
    (appendIfIn "qutebrowser" deviceConfig.browsers ./applications/gui/browser/qutebrowser)
    (appendIfIn "ungoogle-chromium" deviceConfig.browsers ./applications/gui/browser/ungoogled-chromium)
    (appendIfIn "vieb" deviceConfig.browsers ./applications/gui/browser/vieb)
    (appendIfIn "firefox" deviceConfig.browsers ./applications/gui/browser/firefox)
  ];
}
