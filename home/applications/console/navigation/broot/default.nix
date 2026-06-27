{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = [pkgs.broot];
  xdg.configFile = {
    "broot/conf.hjson".source = ./conf.hjson;
    "broot/skins/odenwald.hjson".source = ./odenwald.hjson;
    "broot/verbs.hjson".source = ./verbs.hjson;
  };
  # programs.broot = {
  #   enable = true;
  #   settings = {
  #     skin = {
  #       code_fg = "lightyellow";
  #       directory_fg = "lightyellow";
  #       flag_value_fg = "lightyellow";
  #       input_fg = "cyan";
  #       permissions_fg = "grayscale(12)";
  #       selected_line_bg = "grayscale(7)";
  #       size_bar_full_bg = "red";
  #       size_bar_void_bg = "black";
  #       status_error_bg = "yellow";
  #       status_error_fg = "red";
  #       status_normal_bg = "grayscale(3)";
  #       status_normal_fg = "grayscale(18)";
  #       table_border_fg = "red";
  #       tree_fg = "red";
  #     };
  #     verbs = [
  #       {
  #         invocation = "p";
  #         execution = ":parent";
  #       }
  #       {
  #         invocation = "edit";
  #         shortcut = "e";
  #         execution = "$EDITOR {file}";
  #       }
  #       {
  #         invocation = "create {subpath}";
  #         execution = "$EDITOR {directory}/{subpath}";
  #       }
  #       {
  #         invocation = "view";
  #         execution = "less {file}";
  #       }
  #       {
  #         invocation = "blop {name}\\.{type}";
  #         execution = "mkdir {parent}/{type} && ${pkgs.neovim}/bin/nvim {parent}/{type}/{name}.{type}";
  #         from_shell = true;
  #       }
  #     ];
  #   };
  # };
}
