{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  programs.fzf = {
    enable = true;
    package = pkgs.fzf;
    # TODO:
  };

  /*
    # The command that gets executed as the source for fzf for the ALT-C keybinding
    changeDirWidgetCommand = "fd --type d";

    # Command line options for the ALT-C keybinding
    changeDirWidgetOptions = [
      "--preview 'tree -C {} | head -200'"
    ];

    # Color scheme options added to FZF_DEFAULT_OPTS
    # colors = {
    #   bg = "#001600"; #"${g.color.bg}";
    #   "bg+" = "#003200"; #"${g.color.bg}";
    #   fg = "#004800"; #"${g.color.fg}";
    #   "fg+" = "#006400"; #"${g.color.fg}";
    # };
    # colors = {
    #   bg = "#1e1e1e";
    #   "bg+" = "#1e1e1e";
    #   fg = "#d4d4d4";
    #   "fg+" = "#d4d4d4";
    # };

    # The command that gets executed as the default source for fzf when running
    defaultCommand = "fd --type f";

    # Extra command line options given to fzf by default
    defaultOptions = [
      "--height 40%"
      "--border"
      "--color bg:#000800,bg+:#001600,fg:#003200,fg+:#006400"
    ];

    enableBashIntegration = true;
    #enableFishIntegration = true;

    # The command that gets executed as the source for fzf for the CTRL-T keybinding
    fileWidgetCommand = "fd --type f";

    # Command line options for the CTRL-T keybinding
    fileWidgetOptions = ["--preview 'head {}'"];

    # Command line options for the CTRL-R keybinding
    historyWidgetOptions = [
      "--sort"
      "--exact"
      # "--color bg:#000800,bg+:#001600,fg:#003200,fg+:#006400"
    ];

    #tmux = {
    #  enableShellIntegration = true;
    #  shellIntegrationOptions = [ "-d 40%" ];
    #};
  };

  */
}
