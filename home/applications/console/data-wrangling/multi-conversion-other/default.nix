{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    gdrive3

    pandoc # TODO: add extras and lua filters: https://pandoc.org/extras.html, https://github.com/pandoc/lua-filters, https://github.com/pandoc-ext/info
    remarshal
    dasel
    sq

    toml2nix
    regex2json

    mypkgs.bafi
    xidel

    # miscellaneous
    # xurls  TODO: fix
  ];
}
