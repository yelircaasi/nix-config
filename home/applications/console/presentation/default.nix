{pkgs, ...}: {
  home.packages = with pkgs; [
    mdp
    reveal-md
    slides
    # haskellPackages.slidemews  # TODO::prioX: fix (broken)
  ];
}
