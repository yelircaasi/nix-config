{
  g,
  deviceConfig,
  ...
}: {
  programs.qutebrowser = {
    enable = true;
    # TODO:
    # - read: https://qutebrowser.org/doc/help/settings.html
    # - add userscripts: https://github.com/qutebrowser/qutebrowser/blob/main/misc/userscripts/README.md
    # - try this: https://github.com/qutebrowser/qutebrowser/pull/3854#issuecomment-545174068
    # - review: https://gitlab.com/dwt1/dotfiles/-/blob/master/.config/qutebrowser/config.py
    # - watch: https://www.youtube.com/watch?v=kFw64hlJkoI
    # - https://gitlab.com/dwt1/dotfiles/-/tree/master/.config/qutebrowser/solarized-everything-css?ref_type=heads
  };
}
