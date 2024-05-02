{
  pkgs,
  lib,
  g,
  nvimDeclaration,
  ...
}: {}
# let
#   ifSupported = langName:
#     if  nvimDeclaration.languages.${langName}
#     then {langName = (import ./_languages/{langName} {inherit pkgs lib g;};);}
#     else {};
#   collectLanguages = nvimDeclaration: lib.foldl’
#     ifSupported
#     {}
#     (lib.attrSets.attrNames nvimDeclaration)
# in
#   (collectLanguages nvimDeclaration.languages)

