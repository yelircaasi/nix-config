{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    minimnal = with pkgs; [
      xan # PLACEHOLDERLINK
    ];
    # TODONEXT
    core = with pkgs; [
      pandoc # PLACEHOLDERLINK # TODO::prio2: add extras and lua filters: https://pandoc.org/extras.html, https://github.com/pandoc/lua-filters, https://github.com/pandoc-ext/info
      remarshal # PLACEHOLDERLINK
      dasel # PLACEHOLDERLINK
      sq # PLACEHOLDERLINK

      toml2nix # PLACEHOLDERLINK
      regex2json # PLACEHOLDERLINK

      mypkgs.bafi # PLACEHOLDERLINK
      xidel # PLACEHOLDERLINK

      # miscellaneous
      # xurls # PLACEHOLDERLINK  TODO::prio2: fix
    ];
    extended = with pkgs; [
      gdrive3 # PLACEHOLDERLINK
    ];
  };
}
