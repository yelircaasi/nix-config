{lib}: {neovimConfig = lib.attrsets.recursiveUpdate (import ./default-declaration.nix) (import ./declaration.nix);}
