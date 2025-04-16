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
      # emanote  TODO: fix
      eureka-ideas
      kb # TODO: debug
      # mypkgs.diary # TODO: needs work

      # jrnl  TODO fix
      joplin
      # mypkgs.dnote TODO: fix errors
    ])
    ++ (with mypkgs; []);
}
