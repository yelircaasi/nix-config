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
      # emanote  TODO::prio2: fix
      eureka-ideas
      kb # TODO::prio2: debug
      # mypkgs.diary # TODO::prio2: needs work

      # jrnl  TODO::prio2 fix
      joplin
      # mypkgs.dnote TODO::prio2: fix errors
    ])
    ++ (with mypkgs; []);
}
