{
  pkgs,
  mypkgs,
  ...
}: {
  home.packages =
    (with pkgs; [
      nb
      pandoc
      jot
      zk
      emanote
      eureka-ideas
      kb # TODO: debug
      mypkgs.diary # TODO: needs work

      jrnl
      joplin
      # mypkgs.dnote
    ])
    ++ (with mypkgs; []);
}
