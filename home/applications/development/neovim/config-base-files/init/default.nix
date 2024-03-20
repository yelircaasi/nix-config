{
  pkgs,
  lib,
  neovimConfig,
  langs,
  feats,
  ...
}: let
  langRequires = langs: lib.strings.concatLines (map (lang: ''require("language_specific.${lang}")'') langs);
  featRequires = feats: lib.strings.concatLines (map (feat: ''require("features.${feat}")'') feats);
in ''
  require("colors")
  require("commands")
  require("mapping")
  require("options")

  ${langRequires}

  ${featRequires}
''
