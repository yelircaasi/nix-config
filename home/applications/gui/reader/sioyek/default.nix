{
  pkgs,
  g,
  deviceConfig,
  ...
}: let 
  bg = "#031A16";
  bgLighter = "#0B342D";
  textColor = "#3E9688";
  textColorDim = "#2B685E";
  textColorBright = "#94863D";
  highlightColor = "#81B5AC";
  selectionColor = "#96883E";
in {
  programs.sioyek = {
    enable = true;
    package = pkgs.sioyek;
    config = {
      # "startup_commands" = "toggle_custom_color fit_to_page_width";

      # "background_color" = "0.24 0.58 0.53";
      # "dark_mode_background_color" = "0.0 0.08 0.0";
      # "dark_mode_contrast" = "0.2";
      # "ui_background_color" = "0.0 0.08 0.0";
      # "ui_text_color" = "0.5 0.7 0.67";
      # "text_highlight_color" = "0.0 0.2 0.0";
      # "custom_background_color" = "0.0 0.08 0.0";
      # "custom_text_color" = "0.5 0.7 0.67";
      # "status_bar_color"  =      "0.24 0.58 0.53";
      # "status_bar_text_color"  = "0.01 0.1 0.08";
      # "status_bar_font_size"  =  "12";

      ui_font = "Iosevka Custom";
      font_size = "16";
      should_launch_new_window = "1";
      startup_commands = "toggle_custom_color;fit_to_page_smart;toggle_statusbar";

      # https://github.com/catppuccin/sioyek/blob/3879f23da360c891ed18bb0b85537f891589c47f/themes/macchiato.config
      background_color = "${bg}";
      custom_color_mode_empty_background_color = "${bg}";
      custom_background_color = "${bg}";
      custom_text_color = "${textColor}";
      
      page_separator_width = "0";
      page_separator_color = "${bg}";
      text_highlight_color = "${highlightColor}";
      visual_mark_color = "#8087a2dd";
      search_highlight_color = "${selectionColor}";
      link_highlight_color = "#8aadf4";
      synctex_highlight_color = "#a6da95";
      highlight_color_a = "#eed49f";
      highlight_color_b = "#a6da95";
      highlight_color_c = "#91d7e3";
      highlight_color_d = "#ee99a0";
      highlight_color_e = "#c6a0f6";
      highlight_color_f = "#ed8796";
      highlight_color_g = "#eed49f";
      ui_text_color = "${textColor}";
      ui_background_color = "${bgLighter}";
      ui_selected_text_color = "${textColorBright}";
      ui_selected_background_color = "${selectionColor}";
      status_bar_color = "${bgLighter}";
      status_bar_text_color = "${textColorBright}";
      dark_mode_background_color = "#14472a"; #"#5b6078";
      dark_mode_contrast = "0.4";
      
    };
    bindings = {
      "move_up" = "k";
      "move_down" = "j";
      "move_left" = "h";
      "move_right" = "l";
      "screen_down" = ["d" "<c-d>"];
      "screen_up" = ["u" "<c-u>"];
    };
  };
}
