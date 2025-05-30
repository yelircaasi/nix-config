{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      pandoc # TODO::prio2: add extras and lua filters: https://pandoc.org/extras.html, https://github.com/pandoc/lua-filters, https://github.com/pandoc-ext/info
      remarshal
      dasel
      sq

      toml2nix
      regex2json

      mypkgs.bafi
      xidel

      # miscellaneous
      # xurls  TODO::prio2: fix
    ];
    extended = with pkgs; [
      gdrive3
    ];
  };
}
