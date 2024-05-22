{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: {
  packages = [];
  plugins = (with pkgs.vimPlugins; []) ++ (with custom; []);

  files = {
    "./nvim/lua/colors.lua".text = g.utils.readAndInterpolate g ./colors.lua;
  };

  needsPython3 = false;
  needsNodeJs = false;
  needsRuby = false;
}
# [[ notes from ChatGPT
# -- see also https://neovim.discourse.group/t/nvim-set-hl-usage/2384,
# -- https://vim.fandom.com/wiki/Highlight_unwanted_spaces,
# -- https://neovim.discourse.group/t/lua-equivalent-to-syntax-match-syntax-keyword/3688/2,
# -- https://www.youtube.com/watch?v=iHYeCLOOO_k
# -- Define highlight groups for different types of brackets
# vim.cmd('highlight StructuralBracket guifg=blue')
# vim.cmd('highlight FunctionCallBracket guifg=green')
# vim.cmd('highlight ListTupleBracket guifg=red')
# -- Match structural brackets (e.g., {}, [], ())
# vim.cmd('syntax match StructuralBracket /[{[(]\|[]}]\|[])]\|[(]/ contains=ALL')
# -- Match function call/signature brackets (e.g., ())
# vim.cmd('syntax match FunctionCallBracket /[()]/ contains=ALL')
# -- Match list/tuple brackets (e.g., [], ())
# vim.cmd('syntax match ListTupleBracket /[\[\]()]/ contains=ALL')
# ]]

