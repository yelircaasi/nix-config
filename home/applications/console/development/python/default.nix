{
  config,
  inputs,
  pkgs,
  mypkgs,
  g,
  deviceConfig,
  ...
}: let
  myPython = pkgs.python314.withPackages (ps:
    with ps; [
      pydantic
      numpy
      ipython
      matplotlib
      numpy
      pandas
      pydantic
      mypkgs.matplotlib-backend-wezterm
      mypkgs.adiumentum
    ]);

  autoImports = pkgs.writeTextDir "usercustomize.py" ''
    import adiumentum
    import adiumentum as adi
    import json
    from pathlib import Path
    import builtins

    builtins.json = json
    builtins.Path = Path
    builtins.adiumentum = adiumentum
    builtins.adi = adi
  '';

  py = pkgs.writeShellScriptBin "py" ''
    export PYTHONPATH="${autoImports}:${myPython}/${pkgs.python314.sitePackages}''${PYTHONPATH:+:$PYTHONPATH}"
    exec ${pkgs.python314}/bin/python3 "$@"
  '';
in {
  # TODO::prio1: make list of progLangs to import according to boolean switches in deviceConfig
  # use in specific environments only, to avoid clash?
  home.packages = g.selectViaConsoleSet deviceConfig {
    minimal = with pkgs; [
      uv
      ruff
      py
    ];
  };

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

