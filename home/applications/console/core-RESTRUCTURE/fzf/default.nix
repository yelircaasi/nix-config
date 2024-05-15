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

    # The command that gets executed as the source for fzf for the ALT-C keybinding
    changeDirWidgetCommand = "fd --type d";

    # Command line options for the ALT-C keybinding
    changeDirWidgetOptions = [
      "--preview 'tree -C {} | head -200'"
    ];

    # Color scheme options added to FZF_DEFAULT_OPTS
    colors = {
      bg = "${g.color.bg}";
      "bg+" = "${g.color.bg}";
      fg = "${g.color.bg}";
      "fg+" = "${g.color.bg}";
    };

    # The command that gets executed as the default source for fzf when running
    defaultCommand = "fd --type f";

    # Extra command line options given to fzf by default
    defaultOptions = [
      "--height 40%"
      "--border"
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
    ];

    #tmux = {
    #  enableShellIntegration = true;
    #  shellIntegrationOptions = [ "-d 40%" ];
    #};
  };
}
