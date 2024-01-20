{inputs, ...}: {
  xsession.windowManager.i3.enable = true;
  services.picom.settings = {
    backend = "glx";
    glx-no-stencil = true;
    glx-copy-from-front = false;
    glx-no-rebind-pixmap = true;
    use-damage = true;
    xrender-sync-fence = true;

    inactive-opacity = 0.7;
    active-opacity = 0.95;
    frame-opacity = 0.9;
    inactive-opacity-override = false;

    # Dim inactive windows. (0.0 - 1.0)
    inactive-dim = 0.03;
    # Do not let dimness adjust based on window opacity.
    inactive-dim-fixed = true;
    # Blur background of transparent windows. Bad performance with X Render backend. GLX backend is preferred.
    blur-background = true;
    # Blur background of opaque windows with transparent frames as well.
    # blur-background-frame = true;
    # Do not let blur radius adjust based on window opacity.
    blur-background-fixed = false;

    corner-radius = 5;
    round-borders = 1;
  };
}
