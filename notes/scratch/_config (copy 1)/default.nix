{
  pkgs,
  lib,
  g,
  ...
}: {
  # xdg.configFile."./nvim/init.lua".text = (g.utils.readAndInterpolate g ./config/init.lua);
  # xdg.configFile."./nvim/lua/plugins" = {
  #   source = ./config/lua/plugins;
  #   recursive = true;
  # };
  # xdg.configFile."./nvim/lua/colors.lua".text = (g.utils.readAndInterpolate g ./config/lua/colors.lua);
  # xdg.configFile."./nvim/lua/mappings.lua".text = (g.utils.readAndInterpolate g ./config/lua/mappings.lua);
  # xdg.configFile."./nvim/lua/options.lua".source = ./config/lua/options.lua;

  xdg.configFile =
    {"./nvim/init.lua".text = g.utils.readAndInterpolate g ./config/init.lua;}
    // (
      g.utils.readAndInterpolateFiles
      g
      {
        xdgAttrName = "./nvim/lua";
        relativeDir = ./config/lua;
        fileSuffix = ".lua";
      }
      [
        "colors"
        "mappings"
        "options"
      ]
    )
    // (
      g.utils.readAndInterpolateFiles
      g
      {
        xdgAttrName = "./nvim/lua/plugins";
        relativeDir = ./config/lua/plugins;
        fileSuffix = ".lua";
      }
      [
        "ai"
        "buffer_line"
        "clipboard"
        "code_minimap"
        "code_outline"
        "comments"
        "completion"
        "debugging"
        "editing"
        "execution"
        "filetree"
        "folding"
        "formatting_and_linting"
        "git"
        "github"
        "highlighting_other"
        "icons"
        "increment_and_toggling"
        "json"
        "keybinding"
        "lsp"
        "macros"
        "markdown"
        "media"
        "menus_other"
        "miscellaneous"
        "modes"
        "multiplexer"
        "navigation"
        "neovim_dev"
        "nix"
        "notifications"
        "org"
        "other_langs"
        "pairs"
        "productivity"
        "projects"
        "python"
        "quickfix"
        "refactoring_other"
        "rust"
        "search"
        "search_and_replace"
        "snippets"
        "startscreen"
        "status_line"
        "tab_line"
        "taskrunner"
        "terminal"
        "testing_and_coverage"
        "tex"
        "textobjects"
        "training"
        "treesitter_and_extensions"
        "ui"
      ]
    );
}
