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
      # emanote  TODO::prioX: fix
      eureka-ideas
      kb # TODO::prioX: debug
      # mypkgs.diary # TODO::prioX: needs work

      # jrnl  TODO::prioX fix
      joplin
      # mypkgs.dnote TODO::prioX: fix errors
    ])
    ++ (with mypkgs; []);
}
