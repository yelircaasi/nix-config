{
  inputs,
  pkgs,
  lib,
  g,
  deviceConfig,
  mypkgs,
  ...
}: let
  appendIf = nameBool: namePath:
    if nameBool
    then [namePath]
    else [];
  listIf = nameString: nameList: namePath:
    if (builtins.elem nameString nameList)
    then [namePath]
    else [];
in {
  imports = builtins.concatLists [
    [
      ./applications/console/browser
      ./applications/console/calculator-conversion-date
      ./applications/console/data-wrangling/html
      ./applications/console/data-wrangling/json
      ./applications/console/git
      ./applications/console/file-browser/nnn
      ./applications/console/file-browser/xplr
      ./applications/console/file-browser/yazi
      ./applications/console/fun
      ./applications/console/navigation/pazi
      ./applications/console/navigation/zoxide
      ./applications/console/organization-cleanup
      ./applications/console/personal-organization
      ./applications/console/search/ack
      ./applications/console/search/fd
      ./applications/console/search/fzf
      ./applications/console/search/ripgrep
      ./applications/console/search/silver-searcher
      ./applications/console/shell
      ./applications/console/viewing/bat
      ./applications/console/viewing/eza
      ./applications/console/viewing/ov
      ./applications/console/viewing/tre-command

      # ./applications/console/calculator-conversion-date
      # ./applications/console/data-wrangling
      # ./applications/console/dev-utils
      # ./applications/console/educational
      # ./applications/console/fun
      # ./applications/console/quality-of-life
      # ./applications/console/spreadsheet
      # ./applications/console/
      # ./applications/console/
      # ./applications/console/
      # ./applications/console/
      # ./applications/console/
      # ./applications/console/
    ]
    (listIf "neovim" deviceConfig.editors ./applications/console/neovim)
    (listIf "wezterm" deviceConfig.terminal-emulators ./applications/gui/terminal-emulator/wezterm)
    (listIf "nyxt" deviceConfig.browsers ./applications/gui/browser/nyxt)
    (listIf "qutebrowser" deviceConfig.browsers ./applications/gui/browser/qutebrowser)
    (listIf "ungoogle-chromium" deviceConfig.browsers ./applications/gui/browser/ungoogled-chromium)
    (listIf "vieb" deviceConfig.browsers ./applications/gui/browser/vieb)
    (listIf "firefox" deviceConfig.browsers ./applications/gui/browser/firefox)
  ];
}
