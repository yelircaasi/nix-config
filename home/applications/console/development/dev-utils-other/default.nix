{
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = g.selectViaConsoleSet deviceConfig {
    core = with pkgs; [
      fastmod
      # mypkgs.codemod2

      # general code quality

      # linting and formatting
      # mypkgs.precious  TODO::prio2: fix
      treefmt
      /*
      eventually need to decide which of precious and treefmt I prefer,
      or whether they are non interchangeable and thus both worth keeping
      -> see treefmt-nix later
      */
      uncrustify

      # counting & analysis
      scc
      tokei

      # visualization
      gource
      mypkgs.tokei-pie

      # release

      # codebase navigation
      universal-ctags
      idutils

      # debugging
      # mypkgs.rebound

      # logs
      lnav
      multitail

      # todos
      mypkgs.todocheck

      # scripting
      gnumake
      just
      mypkgs.makesure
      mypkgs.mk
      mypkgs.mxflow-cli

      # miscellaneous
      ripsecrets
    ];
  };
}
