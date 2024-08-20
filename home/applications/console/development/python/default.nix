{
  config,
  inputs,
  pkgs,
  mypkgs,
  ...
}: {
  home.packages = with pkgs; [
    (python311.withPackages (ps:
      with ps; [
        ipython
        matplotlib
        numpy
        pandas
        pydantic
        mypkgs.matplotlib-backend-wezterm
      ]))
    poetry

    black
    mypy
    isort
  ];
  programs.matplotlib = {
    enable = true;
    config = let
      bg = ''"#000a00"'';
      fg = ''"#808080"'';
    in {
      lines.color = fg;
      patch.edgecolor = fg;

      text.color = fg;

      axes.facecolor = bg;
      axes.edgecolor = fg;
      axes.labelcolor = fg;
      axes.prop_cycle = "cycler('color', ['8dd3c7', 'feffb3', 'bfbbd9', 'fa8174', '81b1d2', 'fdb462', 'b3de69', 'bc82bd', 'ccebc4', 'ffed6f'])";

      xtick.color = fg;
      ytick.color = fg;

      grid.color = fg;

      figure.facecolor = fg;
      figure.edgecolor = bg;

      savefig.facecolor = bg;
      savefig.edgecolor = bg;
    };
  };
  home.file.".ipython/profile_default/startup/wezterm.py".text = ''
    import os

    if {
        "WEZTERM_CONFIG_DIR",
        "WEZTERM_EXECUTABLE",
        "WEZTERM_UNIX_SOCKET",
        "WEZTERM_CONFIG_FILE",
        "WEZTERM_EXECUTABLE_DIR",
    }.intersection(os.environ):
        import matplotlib
        import matplotlib.pyplot as plt
        matplotlib.use("module://matplotlib-backend-wezterm")
  '';
}
# Set black background default line colors to white.

