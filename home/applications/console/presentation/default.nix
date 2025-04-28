{pkgs, ...}: {
  home.packages = with pkgs; [
    mdp
    reveal-md
    slides
    # haskellPackages.slidemews  # TODO::prio2: fix (broken)
  ];
}
