{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.dartFlutter;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [
    ];

    plugins =
      (with pkgs.vimPlugins; [
        {
          plugin = flutter-tools-nvim;
          optional = true;
        }
      ])
      ++ (with custom; []);

    files = {
      "./nvim/lua/languages/${luaName}.lua".text = g.utils.readAndInterpolate g ./_.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
