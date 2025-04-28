{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    pup
    htmlq
    htmlcxx

    # mypkgs.xmlq  # TODO::prio2: make into CLI
    libxml2 # provides xmllint
    html2text
  ];
}
