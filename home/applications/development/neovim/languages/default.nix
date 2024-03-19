{
  pkgs,
  g,
  ...
}: {
  python = import ./python.nix {inherit pkgs g;};
  # haskell  = import ./haskell.nix {inherit pkgs g;};
}
