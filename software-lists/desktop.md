# WMs, Compositors, Bars, Menus, Launchers, Notifications, Widgets, Lockscreen, etc.

---

Wayland recommended stack:

**hyprland**, sway, river

**waybar**, eww

**mako**, dunst

**libnotify**

**xdg portal**

**swww**, hyprpaper, swaybg, wpaperd, mpvpaper

rofi-wayland, wofi, bemenu, fuzzel, tofi. 

---

→ make settings in NixOS for each and make choice of which one to use dependent on a single keyword in the main config file

---

- Desktop Managers + Greeters
    - ‣ (‣?)
        
        Web Greeter [https://jezerm.github.io/web-greeter-page/](https://jezerm.github.io/web-greeter-page/) 
        
        [nody-greeter](https://github.com/JezerM/nody-greeter)(same look as web-greeter, but faster)
        
       [sea-greeter](https://github.com/JezerM/sea-greeter)
        
        https://github.com/tobiohlala/lightdm-tiny-greeter
        
       [lightdm-webengine-greeter](https://github.com/matijaskala/lightdm-webengine-greeter)
        
        https://github.com/Xubuntu/lightdm-gtk-greeter
        
       [lightdm-mini-greeter](https://github.com/prikhi/lightdm-mini-greeter)
        
        https://github.com/elementary/greeter
        
        https://github.com/linuxmint/slick-greeter
        
    - [greetd](https://git.sr.ht/~kennylevinsen/greetd)
        
        https://github.com/apognu/tuigreet
        
        https://github.com/rharish101/ReGreet
        
        https://github.com/pop-os/cosmic-greeter
        
        https://github.com/tobiohlala/lightdm-tiny-greeter
        
        [https://git.sr.ht/~kennylevinsen/wlgreet](https://git.sr.ht/~kennylevinsen/wlgreet) 
        
        [https://man.sr.ht/~kennylevinsen/greetd/#styling-gtkgreet](https://man.sr.ht/~kennylevinsen/greetd/#styling-gtkgreet) 
        
    - https://github.com/sddm/sddm
        
        [https://www.opendesktop.org/p/1240784](https://www.opendesktop.org/p/1240784) SDDM Chili
        
    
    [https://wiki.archlinux.org/title/SLiM](https://wiki.archlinux.org/title/SLiM) 
    
    https://github.com/coastalwhite/lemurs
    
- Logout Menu
    
    https://github.com/ArtsyMacaw/wlogout
    
    https://github.com/loserMcloser/waylogout
    
    https://github.com/AMNatty/wleave
    
- Lock Screen
    
    https://github.com/BachoSeven/slock
    
    https://github.com/bakkeby/slock-flexipatch
    
    https://github.com/betterlockscreen/betterlockscreen
    
- Launchers, Menus
    
    https://github.com/Biont/sway-launcher-desktop
    
    - [Albert](https://github.com/ManuelSchneid3r/albert) `C++` `X11`
    - [Kupfer](http://engla.github.io/kupfer/) `Python` `X11`
    - [bashrun2](http://henning-bekel.de/bashrun2/) `Bash` `terminal`
    - [bashrun](http://bashrun.sourceforge.net/) `Bash` `terminal`
    - [dmenu_run](http://tools.suckless.org/dmenu/) `Shell` `X11`
    - [gmrun](http://sourceforge.net/projects/gmrun/) `C` `X11`
    - [lighthouse](https://github.com/emgram769/lighthouse) `C` `X11`
    - [rrun](https://github.com/buster/rrun) `Rust` `X11`
    - [shellex](https://github.com/Merovius/shellex) `C` `X11`
    - [xboomx](https://github.com/victorhaggqvist/xboomx) `Python` `X11`
    - [xlauncher](https://github.com/vatriani/xlauncher) `C` `X11`
    
    [pmenu](https://github.com/sgtpep/pmenu) - A dynamic terminal-based menu inspired by dmenu.
    
    - **dmenu-like menus**
        - [Heatseeker](https://github.com/rschmitt/heatseeker) `Rust` `terminal`
        - [Icepick](https://github.com/felipesere/icepick) `Rust` `terminal`
        - [PathPicker](https://facebook.github.io/PathPicker/) `Python` `terminal`
        - [Selecta](https://github.com/garybernhardt/selecta) `Ruby` `terminal`
        - [bemenu](https://github.com/Cloudef/bemenu) `C` `Wayland` `X11` `terminal`
        - [dmenu2](https://bitbucket.org/melek/dmenu2) `C` `X11`
        - [dmenu](http://tools.suckless.org/dmenu/) `C` `X11`
        - [fzf](https://github.com/junegunn/fzf) `Go` `terminal`
        - [fzy](https://github.com/jhawthorn/fzy) `C` `terminal`
        - [gof](https://github.com/mattn/gof) `Go` `terminal`
        - [gpicker](http://www.nongnu.org/gpicker/) `C` `X11`
        - [hmenu](https://github.com/sulami/hmenu) `Haskell` `terminal`
        - [peco](https://github.com/peco/peco) `Go` `terminal`
        - [percol](https://github.com/mooz/percol) `Python` `terminal`
        - [pick](https://github.com/thoughtbot/pick) `C` `terminal`
        - [rofi](https://github.com/DaveDavenport/rofi) `C` `X11`
        - [selector](http://fleuret.org/cgi-bin/gitweb/gitweb.cgi?p=selector) `C` `terminal`
        - [slmenu](https://bitbucket.org/rafaelgg/slmenu) `C` `terminal`
        - [smenu](https://github.com/p-gen/smenu) `C` `terminal`
        - [tmenu](https://github.com/dhamidi/tmenu) `C` `terminal`
        - [tpick](https://github.com/smblott-github/tpick) `C` `terminal`
        - [ppick](https://github.com/alanbork/ppick) 'C' 'terminal'
        - [vis-menu](http://martanne.github.io/vis/man/vis-menu.1.html) `C` `terminal`
    - dmenu wrappers
        - [Yeganesh](http://dmwit.com/yeganesh/) `Haskel`
        - [xboomx](https://github.com/victorhaggqvist/xboomx) `Python`
        - [yegonesh](https://github.com/klowner/yegonesh) `Go`
    - **dmenu-like menus (sort)**
        - [Heatseeker](https://github.com/rschmitt/heatseeker) `Rustterminal`
        - [Icepick](https://github.com/felipesere/icepick) `Rustterminal`
        - [PathPicker](https://facebook.github.io/PathPicker/) `Pythonterminal`
        - [Selecta](https://github.com/garybernhardt/selecta) `Rubyterminal`
        - [bemenu](https://github.com/Cloudef/bemenu) `CWaylandX11terminal`
        - [dmenu2](https://bitbucket.org/melek/dmenu2) `CX11`
        - [dmenu](http://tools.suckless.org/dmenu/) `CX11`
        - [fzf](https://github.com/junegunn/fzf) `Goterminal`
        - [fzy](https://github.com/jhawthorn/fzy) `Cterminal`
        - [gof](https://github.com/mattn/gof) `Goterminal`
        - [gpicker](http://www.nongnu.org/gpicker/) `CX11`
        - [hmenu](https://github.com/sulami/hmenu) `Haskellterminal`
        - [peco](https://github.com/peco/peco) `Goterminal`
        - [percol](https://github.com/mooz/percol) `Pythonterminal`
        - [pick](https://github.com/thoughtbot/pick) `Cterminal`
        - [rofi](https://github.com/DaveDavenport/rofi) `CX11`
        - [selector](http://fleuret.org/cgi-bin/gitweb/gitweb.cgi?p=selector) `Cterminal`
        - [slmenu](https://bitbucket.org/rafaelgg/slmenu) `Cterminal`
        - [smenu](https://github.com/p-gen/smenu) `Cterminal`
        - [tmenu](https://github.com/dhamidi/tmenu) `Cterminal`
        - [tpick](https://github.com/smblott-github/tpick) `Cterminal`
        - [ppick](https://github.com/alanbork/ppick) 'C' 'terminal'
        - [vis-menu](http://martanne.github.io/vis/man/vis-menu.1.html) `Cterminal`
    - Application launchers
        - [Albert](https://github.com/ManuelSchneid3r/albert) `C++X11`
        - [Kupfer](http://engla.github.io/kupfer/) `PythonX11`
        - [bashrun2](http://henning-bekel.de/bashrun2/) `Bashterminal`
        - [bashrun](http://bashrun.sourceforge.net/) `Bashterminal`
        - [dmenu_run](http://tools.suckless.org/dmenu/) `ShellX11`
        - [gmrun](http://sourceforge.net/projects/gmrun/) `CX11`
        - [lighthouse](https://github.com/emgram769/lighthouse) `CX11`
        - [rrun](https://github.com/buster/rrun) `RustX11`
        - [shellex](https://github.com/Merovius/shellex) `CX11`
        - [xboomx](https://github.com/victorhaggqvist/xboomx) `PythonX11`
        - [xlauncher](https://github.com/vatriani/xlauncher) `CX11`
    - App Launcher: [rofi](https://github.com/davatorium/rofi)
    - Application Launchers
        
        ilia
        
        dmenu
        
        [picom - ArchWiki](https://wiki.archlinux.org/title/picom)
        
    - [rofi](https://github.com/davatorium/rofi) - A window switcher, application launcher and dmenu replacement.
    - [ ]  [rofi](https://davatorium.github.io/rofi/) → [https://gist.github.com/MilesMcBain/0e6f449c3f8e07ed1b06aa785b0726ff](https://gist.github.com/MilesMcBain/0e6f449c3f8e07ed1b06aa785b0726ff)
    vs dmenu
    
    [dmenu](https://tools.suckless.org/dmenu/) - dmenu is a dynamic menu for X, originally designed for dwm. It manages large numbers of user-defined menu items efficiently.
    
    - [ ]  [Albert](https://albertlauncher.github.io/) - An awesome keyboard launcher for the Linux desktop.
    - [ ]  Rofi
        
        [https://codeberg.org/dnkl/fuzzel](https://codeberg.org/dnkl/fuzzel) 
        
    
    program launchers: [dmenu](https://tools.suckless.org/dmenu/), [rofi](https://github.com/davatorium/rofi)
    
    - [ ]  [ULauncher](https://ulauncher.io/)
    
    [https://codeberg.org/dnkl/fuzzel](https://codeberg.org/dnkl/fuzzel) - rofi for wayland
    
    [https://sr.ht/~scoopta/wofi/](https://sr.ht/~scoopta/wofi/) 
    
    https://github.com/philj56/tofi
    
    https://github.com/kupferlauncher/kupfer
    
    keyboard launcher [https://github.com/albertlauncher/albert](https://github.com/albertlauncher/albert), [https://albertlauncher.github.io/](https://albertlauncher.github.io/)[https://albertlauncher.github.io/reference/](https://albertlauncher.github.io/reference/)
    
    [https://www.reddit.com/r/unixporn/comments/12ud45j/mate_mac_like_setup/](https://www.reddit.com/r/unixporn/comments/12ud45j/mate_mac_like_setup/) - good launcher
    
    [rofi(1) — Arch manual pages](https://man.archlinux.org/man/community/rofi/rofi.1.en)
    
    [rofi/INSTALL.md at next · davatorium/rofi · GitHub](https://github.com/davatorium/rofi/blob/next/INSTALL.md)
    
    [https://codeberg.org/dnkl/fuzzel](https://codeberg.org/dnkl/fuzzel) 
    
    [https://ulauncher.io/](https://ulauncher.io/) 
    
    https://github.com/Cloudef/bemenu
    
    https://github.com/adi1090x/rofi
    
    - **Local Search, Launchers (GUI)**
        - [ ]  [https://docs.xfce.org/apps/catfish/start](https://docs.xfce.org/apps/catfish/start) - Catfish is a versatile file searching tool.
        - [ ] [fsearch](https://github.com/cboxdoerfer/fsearch) - A fast file search utility for Unix-like systems based on GTK+3. Wildcard support, RegEx support, Filter support.
        - [ ] [Ulauncher/](https://github.com/Ulauncher/Ulauncher/)- [Ulauncher](https://ulauncher.io/) - Ulauncher is a fast application launcher for Linux. It’s is written in Python, using GTK+.
        - [ ] [cerebro](https://github.com/cerebroapp/cerebro)- [Cerebro](https://cerebroapp.com/) - Open-source productivity booster with a brain / MacOS-Spotlight alternative.
    - ☒☐ App and Task Launchers
        - [ ]  [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher) - Helper application for Linux distributions serving as a kind of “entry point” for running and integrating AppImages.
        - [ ] [mkcron](https://github.com/keshavbhatt/mkcron)- cron editor for desktop
    
    https://github.com/svenstaro/rofi-calc
    
    https://github.com/firecat53/networkmanager-dmenu
    
   [dmenu-wayland](https://github.com/nyyManni/dmenu-wayland)
    
- Bars (or widgets)
    
    
    - [ ]  [xmobar](https://codeberg.org/xmobar/xmobar) vs [taffybar](https://github.com/taffybar/taffybar)
    - [ ]  [Pomobar](https://github.com/rlcintra/pomobar)
    
    investigate polybar vs qtile bar
    
    [polybar/polybar: A fast and easy-to-use status bar](https://github.com/polybar/polybar)
    
    status bars: [dzen](https://robm.github.io/dzen/), [xmobar](https://codeberg.org/xmobar/xmobar)[taffybar](https://github.com/taffybar/taffybar)[polybar](https://github.com/polybar/polybar)[cnx](https://github.com/mjkillough/cnx)
    
    systrays: [trayer](https://github.com/sargon/trayer-srg), [stalonetray](https://kolbusa.github.io/stalonetray/)[gtk-sni-tray](https://github.com/taffybar/gtk-sni-tray)
    
    [https://www.reddit.com/r/i3wm/comments/adjhd0/can_i_hide_i3bar_at_all_times_except_when_i/](https://www.reddit.com/r/i3wm/comments/adjhd0/can_i_hide_i3bar_at_all_times_except_when_i/) 
    
    - Bar: [yambar](https://codeberg.org/dnkl/yambar)
    
    [Lemonbar](https://github.com/LemonBoy/bar) - Super fast, lightweight, and mnml status bar for Linux.
    
    [Polybar](https://polybar.github.io/) - Fast and easy-to-use status bar.
    
    - taffybar configs
        - [https://github.com/ProtonNumber/Dotfiles](https://github.com/ProtonNumber/Dotfiles),
        
        [r/unixporn - [Xmonad / Taffybar] A minimalist & blue RICE!](https://www.reddit.com/r/unixporn/comments/stsstb/xmonad_taffybar_a_minimalist_blue_rice/)
        
        - 
        
        [r/unixporn - [XMonad] Dynamic Workspace Naming with Taffybar](https://www.reddit.com/r/unixporn/comments/59y6uf/xmonad_dynamic_workspace_naming_with_taffybar/)
        
        [r/unixporn - [taffybar/XMonad] Gtk+3 Updates to Taffybar](https://www.reddit.com/r/unixporn/comments/78zwek/taffybarxmonad_gtk3_updates_to_taffybar/)
        
        [r/unixporn - [taffybar][XMonad] A little bit too much transparency](https://www.reddit.com/r/unixporn/comments/8l40iu/taffybarxmonad_a_little_bit_too_much_transparency/)
        
    - xmobar configs
        
        [https://beginners-guide-to-xmonad.readthedocs.io/configure_xmobar.html](https://beginners-guide-to-xmonad.readthedocs.io/configure_xmobar.html)
        
        https://github.com/Horhik/dotfiles
        
        https://github.com/Jonathas-Conceicao/dotfiles
        
        [https://gitlab.com/roosemberth/dotfiles/-/tree/master/](https://gitlab.com/roosemberth/dotfiles/-/tree/master/)
        
        [https://github.com/dmxt/Solarized-xmonad-xmobar](https://github.com/dmxt/Solarized-xmonad-xmobar)
        
    
    https://github.com/Alexays/Waybar
    
    https://github.com/shdown/luastatus
    
    [https://codeberg.org/xmobar/xmobar/src/branch/master/doc/quick-start.org](https://codeberg.org/xmobar/xmobar/src/branch/master/doc/quick-start.org)
    
    [https://codeberg.org/dnkl/yambar](https://codeberg.org/dnkl/yambar) 
    
    https://github.com/greshake/i3status-rust
    
    [Configuring Xmonad and Polybar (It's Not THAT Difficult!) - YouTube](https://www.youtube.com/watch?v=cOehuALOQy4)
    
- Widgets
    
    [elkowar/eww: ElKowars wacky widgets](https://github.com/elkowar/eww)
    
    https://github.com/Aylur/ags
    
- Notifications
    
    https://github.com/dunst-project/dunst
    
    - Notifications: [tiramisu](https://github.com/Sweets/tiramisu)
    
    https://github.com/emersion/mako
    
    https://github.com/phuhl/linux_notification_center
    
    - [ ]  https://github.com/dunst-project/dunst
    - [ ] [noti -](https://github.com/variadico/noti -)Monitor a process and trigger a notification.
    - [ ] [ntfy -](https://github.com/dschep/ntfy -)Cross-platform Python utility that enables you to automatically get desktop notifications on demand or when long running commands complete. It can as well send push notifications to your phone once a particular command completes.
    - [ ] [undistract-me -](https://github.com/jml/undistract-me -)A command line program that plays a sound or sends a notification when a long command has finished running in the command line.
    - [ ] [keep -](https://github.com/keephq/keep -)Simple alerting tool, with declarative syntax and builtin providers.
    - [ ]  [https://catlight.io/](https://catlight.io/) - status notifier for developers. Checks the status of continuous delivery builds and shows desktop notifications.
    - [ ] [undistract-me -](https://github.com/jml/undistract-me -)Notifies you when long-running terminal commands complete.
    - [ ] [sysm -](https://github.com/jafarlihi/sysm -)Makes your system play custom sounds when any configured system or external event happens.
- Openers (like xdg-open)
    
    ********* https://github.com/BachoSeven/mimi
    
- Browser Equivalents
    
    https://github.com/linuxserver/Heimdall
    
- Other
    
    https://github.com/linuxdotexe/todowalp
    
    [Reddit - [ wms ] alternating border color as low battery alert](https://www.reddit.com/r/unixporn/comments/1239m15/wms_alternating_border_color_as_low_battery_alert/)
    
    https://github.com/ErikReider/SwayOSD
    

---

- Compositors
    - [ ]  Picom
    
   [picom](https://github.com/dccsillag/picom)fork
    
    https://github.com/jonaburg/picom
    
    - [Compton](https://github.com/yshui/compton) - Compton is a standalone composite manager, suitable for use with window managers that do not natively provide compositing functionality.
    - [Gamescope](https://github.com/Plagman/gamescope) - Gamescope is a micro-compositor that provides a sandboxed Xwayland desktop with independent input, resolution, and refresh rate.
    - [Hyprland](https://hyprland.org/) - Hyprland is a dynamic tiling Wayland compositor that doesn’t sacrifice on its looks.
    - [River](https://github.com/riverwm/river) - River is a dynamic tiling Wayland compositor with flexible runtime configuration.
    - [Sway](https://swaywm.org/) - Sway is tiling Wayland compositor and a drop-in replacement for the i3 window manager for X11.
    - [Wayfire](https://wayfire.org/) - Wayfire is a wayland compositor based on wlroots. It aims to create a customizable, extendable and lightweight environment without sacrificing its appearance.
    - [Xcompmgr](https://cgit.freedesktop.org/xorg/app/xcompmgr) - Xcompmgr is a simple composite manager capable of rendering drop shadows and, with the use of the transset utility, primitive window transparency.
    
    ricing - picom shaders - [https://github.com/ikz87/picom-shaders/wiki/Shader-gallery](https://github.com/ikz87/picom-shaders/wiki/Shader-gallery)
    
    - Compositor: [picom](https://github.com/yshui/picom)
    - [ ]  [picom](https://github.com/yshui/picom)
    
    [https://github.com/yshui/picom/blob/next/picom.sample.conf](https://github.com/yshui/picom/blob/next/picom.sample.conf) 
    
    [https://github.com/xealea/picom](https://github.com/xealea/picom)
    
    [https://github.com/ikz87/picom-shaders](https://github.com/ikz87/picom-shaders)
    
   [glassit-linux](https://github.com/Fmstrat/glassit-linux)- not needed due to picom
    
- Comparison
    
    [My Tier List For Tiling Window Managers - YouTube](https://www.youtube.com/watch?v=xysISs0mcj8)
    
    ****[Qtile Versus i3 Window Manager](https://www.youtube.com/watch?v=vXFuhNbGgZg)****
    
    compare i3/sway vs qtile
    
    [Linx Cast WM Playlist](https://www.youtube.com/playlist?list=PL4d6Lj0GrDEBeTLsdZ94NRZlgft-rrlQE)
    
    best tiling window manager [https://www.youtube.com/watch?v=pY9HPm1N16Y](https://www.youtube.com/watch?v=pY9HPm1N16Y)
    
    ****[481 - ¿PROBAR UN TILING WINDOW MANAGER?¿REGOLITH, I3 O CUAL?](https://atareao.es/podcast/probar-un-tiling-window-managerregolith-i3-o-cual/)****
    
    [https://www.tecmint.com/best-tiling-window-managers-for-linux/](https://www.tecmint.com/best-tiling-window-managers-for-linux/) 
    
    [Reddit - Best WM to start with](https://www.reddit.com/r/unixporn/comments/11m9ggz/best_wm_to_start_with/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
    
- X11 WMs
    
    https://github.com/BiagioFesta/i3-autolayout
    
    https://github.com/nowakf/i3-alternating
    
    https://github.com/klaxalk/i3-layout-manager
    
   [stumpwm](https://github.com/stumpwm/stumpwm)[http://stumpwm.github.io/](http://stumpwm.github.io/) (X11, CL)
    
    [https://pypi.org/project/xpywm/](https://pypi.org/project/xpywm/)
    
    - [Bspwm](https://github.com/baskerville/bspwm/wiki) - Bspwm is a tiling window manager that represents windows as the leaves of a full binary tree.
    - [awesome](https://awesomewm.org/) - A highly configurable, next generation framework window manager for X.
    - [dwm](https://dwm.suckless.org/) - A dynamic window manager for X. It manages windows in tiled, monocle and floating layouts.
    - [spectrwm](https://github.com/conformal/spectrwm) - A small dynamic tiling window manager for X11, largely inspired by xmonad and dwm.
    - [Worm](https://github.com/codic12/worm) - A dynamic, tag-based window manager written in Nim.
    - [xmonad](https://xmonad.org/) - A dynamically tiling X11 window manager that is written and configured in Haskell.
    - [Herbstluftwm](https://herbstluftwm.org/) - Is a Manual tiling window manager for X11 using Xlib and Glib.
    - [i3 WM](https://i3wm.org/) - A better tiling and dynamic window manager. It’s completely written from scratch. The target platforms are GNU/Linux and BSD operating systems.
    - [i3-gaps](https://github.com/Airblader/i3) - i3-gaps is i3 with more features.
    - [https://wiki.archlinux.org/title/i3](https://wiki.archlinux.org/title/i3)
    
    [http://leftwm.org/](http://leftwm.org/) https://github.com/leftwm/leftwm
    
    [i3 vs qtile](https://www.reddit.com/r/unixporn/comments/enshqt/i3_or_qtile/) 
    
    - i3
        
        [https://dev.to/t/i3wm](https://dev.to/t/i3wm) 
        
        [https://i3wm.org/docs/layout-saving.html](https://i3wm.org/docs/layout-saving.html) 
        
        [i3wm](https://i3wm.org/docs/) 
        
    - qtile
        
        [Qtile on Ubuntu](https://www.youtube.com/watch?v=Y1busy_dDRQ)
        
    
    https://github.com/baskerville/bspwm
    
    [https://xmonad.org/](https://xmonad.org/)
    
    [herbstluftwm/herbstluftwm: A manual tiling window manager for X11](https://github.com/herbstluftwm/herbstluftwm)
    
    xmonad [https://www.youtube.com/watch?v=JLz3UKJFMoI](https://www.youtube.com/watch?v=JLz3UKJFMoI)
    
    xmonad dt [https://www.youtube.com/watch?v=5oBT0a25FyA](https://www.youtube.com/watch?v=5oBT0a25FyA)
    
    herbstluftwm
    
    [https://wiki.archlinux.org/title/bspwm](https://wiki.archlinux.org/title/bspwm)
    
    [https://i3wm.org/docs/userguide.html](https://i3wm.org/docs/userguide.html) 
    
    [Combine The Best of Bspwm and XMonad, You Get Herbstluftwm! - YouTube](https://www.youtube.com/watch?v=eEmOy3qzrcg)
    
    [https://github.com/chadcat7/bedwm](https://github.com/chadcat7/bedwm)
    
    [home | xmonad - the tiling window manager that rocks](https://xmonad.org/)
    
    [XMonad Demo - YouTube](https://www.youtube.com/watch?v=70IxjLEmomg)
    
    [https://github.com/hyprwm/Hypr](https://github.com/hyprwm/Hypr)
    
    [https://github.com/NeshHari/XMonad](https://github.com/NeshHari/XMonad)
    
    [https://xmonad.org/gnome.html](https://xmonad.org/gnome.html)
    
    [https://xmonad.org/gnome.html](https://xmonad.org/gnome.html)
    
    [https://itsfoss.com/i3-customization/](https://itsfoss.com/i3-customization/) 
    
    [dk wm](https://bitbucket.org/natemaia/dk/src/master/)
    
    [https://i3wm.org/docs/](https://i3wm.org/docs/)
    
    [https://codeberg.org/Oglo12/personal-i3-config/](https://codeberg.org/Oglo12/personal-i3-config/) 
    
    [https://www.reddit.com/r/i3wm/](https://www.reddit.com/r/i3wm/) 
    
    [i3wm playlist](https://www.youtube.com/playlist?list=PL5ze0DjYv5DbCv9vNEzFmP6sU7ZmkGzcf) (Alex Booker)
    
    [https://thevaluable.dev/i3-config-mouseless/](https://thevaluable.dev/i3-config-mouseless/) 
    
    [https://www.reddit.com/r/linux/comments/rpzur6/i3_is_the_best_window_manager/](https://www.reddit.com/r/linux/comments/rpzur6/i3_is_the_best_window_manager/) 
    
    **[i3 Windows Manager with XFCE using MX Linux distribution](https://www.youtube.com/watch?v=MMRVG9jk_M0&t=128s)**
    
    [XMonad Configuration Tutorial | xmonad - the tiling window manager that rocks](https://xmonad.org/TUTORIAL.html)
    
    [https://dwm.suckless.org/patches/](https://dwm.suckless.org/patches/) 
    
    [https://vincent.bernat.ch/en/blog/2021-i3-window-manager](https://vincent.bernat.ch/en/blog/2021-i3-window-manager)
    
    [https://news.ycombinator.com/item?id=28794901](https://news.ycombinator.com/item?id=28794901)
    
    https://github.com/jzbor/marswm
    
    https://github.com/jzbor/moonwm
    
    [HPR i3 Episode → see show notes!](https://hackerpublicradio.org/eps.php?id=3735) 
    
    [awwesomewm with dots](https://www.reddit.com/r/unixporn/comments/12tvw7f/awesome_finally_i_got_what_i_want)
    
    [https://stumpwm.github.io/](https://stumpwm.github.io/) 
    
    https://github.com/ottop/blueicewm
    
    [https://opensource.com/article/18/8/getting-started-i3-window-manager](https://opensource.com/article/18/8/getting-started-i3-window-manager) 
    
    [https://awesomewm.org/](https://awesomewm.org/) 
    
    [https://www.reddit.com/r/unixporn/comments/130h37f/bspwm_how_is_it/](https://www.reddit.com/r/unixporn/comments/130h37f/bspwm_how_is_it/) 
    
    - [ ]  [xmonad](https://xmonad.org/documentation.html) → [remove dock](https://www.notion.so/Config-d0658f0bfd30465c8d87406aa2b63490?pvs=21) and remove bar, also remove [window bars](https://stackoverflow.com/questions/71204126/how-to-remove-the-title-bar-of-gnome-applications)?
    [→ install](https://xmonad.org/INSTALL.html)
    [guide](https://beginners-guide-to-xmonad.readthedocs.io/index.html)
    
    https://github.com/bakkeby/dwm-flexipatch
    
    [https://github.com/ottop/blueicewm](https://github.com/ottop/blueicewm)
    
    [https://scaron.info/blog/awesome-with-gnome-on-ubuntu.html](https://scaron.info/blog/awesome-with-gnome-on-ubuntu.html)
    
    https://github.com/leftwm/leftwm
    
    [https://www.ragnarwm.org/](https://www.ragnarwm.org/) 
    
    [DkWM](https://bitbucket.org/natemaia/dk) 
    
    [https://tools.suckless.org/x/wmname/](https://tools.suckless.org/x/wmname/) 
    
    [https://www.reddit.com/r/unixporn/comments/13cp71s/marswm_rusty_buisiness/](https://www.reddit.com/r/unixporn/comments/13cp71s/marswm_rusty_buisiness/) 
    
- Wayland Compositors
    
   [mahogany](https://github.com/stumpwm/mahogany)(Wayland, CL)
    
    https://github.com/mora-unie-youer/noway
    
    https://github.com/Natchuz/wmoon
    
    https://github.com/StrataWM/strata
    
    https://github.com/taiwins/taiwins
    
   [way-cooler[http://way-cooler.org/](http://way-cooler.org/)](https://github.com/OmegaRogue/way-cooler[http://way-cooler.org/](http://way-cooler.org/))
    
    [https://github.com/hyprland-community/awesome-hyprland#plugins](https://github.com/hyprland-community/awesome-hyprland#plugins) 
    
    https://github.com/hyprland-community/awesome-hyprland
    
    https://github.com/MaxVerevkin/river-luatile
    
   [algae](https://github.com/prmadev/algae)- river in rust 
    
    [https://github.com/riverwm/river](https://github.com/riverwm/river)
    
    [SwayWM First Impressions - Is it Good? - YouTube](https://www.youtube.com/watch?v=FmEaMntQDzM)
    
    https://github.com/ardek66/waymonader
    
    https://github.com/MaxVerevkin/river-luatile
    
    [newM](https://github.com/jbuchermn/newm)
    
   [algae](https://github.com/amirography/algae)RiverWM config in Rust
    
    [riverwm/river: A dynamic tiling Wayland compositor](https://github.com/riverwm/river)
    
    https://github.com/WillPower3309/swayfx
    
    https://gitlab.com/snakedye/kile - layout generator for RiverWM
    
   [dwl](https://github.com/djpohly/dwl)
    
    [kuruczgy/kiwmi: My fork of kiwmi](https://github.com/kuruczgy/kiwmi)
    
    https://github.com/buffet/kiwmi
    
    ****[So you want to learn hyprland? LONG VERSION... install and m0re.](https://www.youtube.com/watch?v=iE99GrcZzhs)****
    
    [buffet/kiwmi: A fully programmable Wayland Compositor](https://github.com/buffet/kiwmi)
    
    https://github.com/ardek66/waymonader
    
    [https://github.com/swaywm/sway/wiki/Useful-add-ons-for-sway](https://github.com/swaywm/sway/wiki/Useful-add-ons-for-sway) 
    
- Wayland Libraries
    
    https://github.com/Smithay/smithay
    
    wlroots
    
    weston
    
    https://github.com/waymonad/waymonad
    
    [https://gitlab.freedesktop.org/wlroots/wlroots/](https://gitlab.freedesktop.org/wlroots/wlroots/) 
    
- DE-agnostic WMs
    - [Qtile](http://www.qtile.org/) - Qtile is a full-featured, hackable tiling window manager written and configured in Python.
    
    [https://gitlab.com/dwt1/dotfiles/-/tree/master/.config/qtile](https://gitlab.com/dwt1/dotfiles/-/tree/master/.config/qtile) → [video](https://www.youtube.com/watch?v=9NO2DJARbU0)
    
    [Qtile Playlist](https://www.youtube.com/playlist?list=PL5--8gKSku15-C4mBKRpQVcaat4zwe4Gu)
    
    ****[Modifying Qtile on Debian Stable - Simple configuration](https://www.youtube.com/watch?v=o1-d90BBKuI)****
    
    ****[Qtile Layouts - Manage And Configure Window Layouts](https://www.youtube.com/watch?v=GmJlwVTKTmg)****
    
    [https://docs.qtile.org/en/latest/manual/install/gnome.html](https://docs.qtile.org/en/latest/manual/install/gnome.html)
    
    [monroeclinton/mwm: My Window Manager](https://github.com/monroeclinton/mwm)
    
    [KDE + qtile](https://www.reddit.com/r/unixporn/comments/rhviab/kde_qtile_am_i_doing_tiling_wms_right/)
    
    [https://www.reddit.com/r/qtile/comments/ynxnvd/how_to_make_sticky_window/](https://www.reddit.com/r/qtile/comments/ynxnvd/how_to_make_sticky_window/) 
    
    [https://www.mail-archive.com/qtile-dev@googlegroups.com/msg00983.html](https://www.mail-archive.com/qtile-dev@googlegroups.com/msg00983.html) 
    
    [https://github.com/numirias/qtile-plasma](https://github.com/numirias/qtile-plasma) 
    
    [http://www.qtile.org/videos/](http://www.qtile.org/videos/) 
    
    [https://www.google.com/search?q=qtile+drop-down+window&oq=qtile+drop-down+window&aqs=chrome..69i57j33i160l2.6008j0j4&sourceid=chrome&ie=UTF-8](https://www.google.com/search?q=qtile+drop-down+window&oq=qtile+drop-down+window&aqs=chrome..69i57j33i160l2.6008j0j4&sourceid=chrome&ie=UTF-8) 
    
    [Qtile Playlist](https://www.youtube.com/playlist?list=PL8vZ_N0-ziZP1gm2-CBiCBPZNFrlge8Nb)
    
    [https://www.google.com/search?q=qtile+sticky+window&oq=qtile+sticky+window&aqs=chrome..69i57j69i60.10030j0j9&sourceid=chrome&ie=UTF-8](https://www.google.com/search?q=qtile+sticky+window&oq=qtile+sticky+window&aqs=chrome..69i57j69i60.10030j0j9&sourceid=chrome&ie=UTF-8) 
    
    [https://www.dioptricdesign.com/2021/08/20/qtile-chameleon-update/](https://www.dioptricdesign.com/2021/08/20/qtile-chameleon-update/) 
    
    [Tuff Gniuz qtile Playlist](https://www.youtube.com/playlist?list=PLIHtvvGZ1O3hgLjh-Gt42-XrVmR0a4hEi)
    
    [https://github.com/archcraft-os/archcraft-qtile/tree/main](https://github.com/archcraft-os/archcraft-qtile/tree/main) 
    
- Other DE
    - [Bismuth](https://bismuth-forge.github.io/bismuth/) - Making tiling window management easy. On KDE Plasma.
    - [Kröhnkite](https://github.com/esjeon/krohnkite) - A dynamic tiling extension for KWin.
    - [Pop!_OS Shell](https://github.com/pop-os/shell) - Pop Shell is a keyboard-driven auto-tiling window manager that run on top of the GNOME shell.
    - ☒☐ Arcan + suite
        - [ ] [arcan](https://github.com/letoram/arcan)[https://arcan-fe.com/](https://arcan-fe.com/)  [https://github.com/letoram](https://github.com/letoram)
        - [ ]  ‣
        - [ ]  https://github.com/letoram/durden
        - [ ]  [https://github.com/letoram/arcan/wiki](https://github.com/letoram/arcan/wiki)
        - [ ]  [https://arcan-fe.com/](https://arcan-fe.com/)
        - [ ]  [http://durden.arcan-fe.com/](http://durden.arcan-fe.com/)
        - [ ]  Arcan on Nix 2020: [https://gist.github.com/egasimus/0254dcd67f95f262aa6e133794738392](https://gist.github.com/egasimus/0254dcd67f95f262aa6e133794738392)
        - [ ]  https://github.com/egasimus/arcan-nix
    
    [https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma) 
    
    [https://github.com/gTile/gTile](https://github.com/gTile/gTile)
    
    [https://www.reddit.com/r/qtile/comments/12sdtfp/how_to_make_translucent_kde_konsole/](https://www.reddit.com/r/qtile/comments/12sdtfp/how_to_make_translucent_kde_konsole/) 
    
- **Stacking Window Managers**
    - [2bwm](https://github.com/venam/2bwm) - A fast floating WM, with the particularity of having 2 borders, written over the XCB library and derived from mcwm.
    - [Blackbox](https://github.com/bbidulock/blackboxwm) - A fast, lightweight window manager for the X Window System, without all those annoying library dependencies.
    - [Fluxbox](http://fluxbox.org/) - A window manager for X that was based on the Blackbox 0.61.1 code.
    - [IceWM](https://ice-wm.org/) - A window manager for the X Window System. The goal of IceWM is speed, simplicity, and not getting in the user’s way.
    - [Openbox](http://openbox.org/) - A highly configurable, next generation window manager with extensive standards support.
    
    [https://ice-wm.org/](https://ice-wm.org/)
    
- Wayland, X11, WM Information
    
    [https://wayland.app/protocols/](https://wayland.app/protocols/) 
    
    [https://wayland.freedesktop.org/docs/html/](https://wayland.freedesktop.org/docs/html/) 
    
    [https://www.cbtnuggets.com/blog/technology/networking/why-use-wayland-versus-x11](https://www.cbtnuggets.com/blog/technology/networking/why-use-wayland-versus-x11) 
    
    [Thesis](https://www.cs.ru.nl/bachelors-theses/2019/Max_van_Deurzen___4581903___The_anatomy_of_the_modern_window_manager_-_a_case_study_for_X_in_an_Agile_manner.pdf)
    
    - Wayland vs X
        
        [https://arewewaylandyet.com/](https://arewewaylandyet.com/) 
        
        [https://bbs.archlinux.org/viewtopic.php?id=238376](https://bbs.archlinux.org/viewtopic.php?id=238376) 
        
        [Wayland vs X11](https://youtu.be/nPz5TAGYgzA)
        
        [https://en.wikipedia.org/wiki/Wayland_(protocol)](https://en.wikipedia.org/wiki/Wayland_(protocol)) vs X11?
        
        [look into full pros and cons of wayland verses X11, such as https://www.reddit.com/r/wayland/comments/q5nnis/i_am_looking_for_a_wayland_based_tiling_window/](https://www.reddit.com/r/wayland/comments/q5nnis/i_am_looking_for_a_wayland_based_tiling_window/)
        
        - Wayland Apps
            
            [https://github.com/atx/wtype](https://github.com/atx/wtype)
            
            [https://github.com/ReimuNotMoe/ydotool](https://github.com/ReimuNotMoe/ydotool)
            
            [LeftWM - A Fast and Simple Xmonad Alternative - YouTube](https://www.youtube.com/watch?v=jvfk380Pses)
            
            guake for wayland?
            
            [https://askubuntu.com/questions/956640/equivalent-to-xdotool-for-wayland#977801](https://askubuntu.com/questions/956640/equivalent-to-xdotool-for-wayland#977801)
            
            [https://unix.stackexchange.com/questions/309580/does-wayland-use-xkb-for-keyboard-layouts](https://unix.stackexchange.com/questions/309580/does-wayland-use-xkb-for-keyboard-layouts)
            
            [I wonder what will happen to XMonad as the Wayland future actually seems to be a... | Hacker News](https://news.ycombinator.com/item?id=28794901)
            
            [https://github.com/bugaevc/wl-clipboard](https://github.com/bugaevc/wl-clipboard)
            
            [https://github.com/waycrate/swhkd](https://github.com/waycrate/swhkd)
            
        - Wayland Stack
            - [ ]  Hyprland
            - [ ]  SwayWM
            - [ ]  
        
       [wterm](https://github.com/majestrate/wterm)
        
       [awesome-wayland](https://github.com/natpen/awesome-wayland)
        
        https://github.com/Horus645/swww
        
        [Reddit - Wayland drop-in of AwesomeWM](https://www.reddit.com/r/awesomewm/comments/cbgr2l/does_awesome_wm_work_with_wayland/)
        
    
    ****[A Comprehensive Guide To Tiling Window Managers](https://www.youtube.com/watch?v=Obzf9ppODJU&t=717s)****
    
    [http://www.xwinman.org/](http://www.xwinman.org/) 
    
    **[X Protocol Reference Manual for X11, Release 6 (Definitive Guide to X Window System, Vol. 0) (Definitive Guides to the X Window System)](http://library.lol/main/01D1783574EC32A48D6FF44FAC825C18)**
    
    **[The anatomy of the modern window manager](http://library.lol/main/C392F948ADD053F40ABE01AACE37ED57)**
    
    [https://eirenicon.org/implementing-linux-window-managers-tutorial/](https://eirenicon.org/implementing-linux-window-managers-tutorial/) 
    
    [http://www.xwinman.org/others.php](http://www.xwinman.org/others.php) 
    
    [https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma)
    
    → Xorg vs Wayland vs Arcan
    
    How to set up dropdown windows with a tiling window manager?
    
    [A Look Inside Mutter / GNOME Shell](https://lpc.events/event/7/contributions/834/attachments/684/1263/A_Look_Inside_Mutter.pdf)
    
    [https://www.x.org/releases/X11R7.5/doc/man/man1/xprop.1.html](https://www.x.org/releases/X11R7.5/doc/man/man1/xprop.1.html) 
    
    [https://wiki.archlinux.org/title/Xorg#Composite](https://wiki.archlinux.org/title/Xorg#Composite)
    
    [How to build a window manager in Python](https://monroeclinton.com/build-your-own-window-manager/)
    
    - [ ]  [https://www.x.org/wiki/Documentation/](https://www.x.org/wiki/Documentation/)
    
    [https://wiki.archlinux.org/title/Window_manager](https://wiki.archlinux.org/title/Window_manager) 
    
    [Why I Use Tiling Window Managers - And Why You Should Too - YouTube](https://www.youtube.com/watch?v=K_W0ia2QjU8)
    
    - [ ]  [https://wayland.freedesktop.org/](https://wayland.freedesktop.org/) [https://wayland.app/protocols/](https://wayland.app/protocols/)
- Misc
    
    How to place one window on top of another, like floating but always keeping smaller one on top? → PiP functionality with a tiling WM?
    
    scrollable window manager
    
    [https://www.linuxfromscratch.org/blfs/read.html](https://www.linuxfromscratch.org/blfs/read.html) 
    
    [https://xtermwm.sourceforge.io/](https://xtermwm.sourceforge.io/)
    
    - [ ]  https://github.com/cfhammill/nixGL
    - [ ]  [https://learnopengl.com/](https://learnopengl.com/)
    - [ ]  [https://www.freedesktop.org/wiki/Software/dbus/](https://www.freedesktop.org/wiki/Software/dbus/)
    
    https://github.com/deter0/xborder
    

---
Display Manager, Login, Lockscreen, Boot, etc.

## **Display manager - Console**

- [CDM](https://github.com/evertiro/cdm) - A ultra-minimalistic, yet full-featured login manager written in Bash.
- [Console TDM](https://github.com/dopsi/console-tdm) - An extension for xinit written in pure Bash.
- [Ly](https://github.com/cylgom/ly) - Ly is a lightweight, TUI (ncurses-like) display manager for Linux.
- [nodm](https://github.com/spanezz/nodm) - A minimalistic display manager for automatic logins.

## **Display manager - Graphic**

- [Entrance](https://enlightenment.org/) - An EFL based display manager, highly experimental.
- [GDM](https://wiki.gnome.org/Projects/GDM) - The GNOME display manager.
- [LightDM](http://www.freedesktop.org/wiki/Software/LightDM) - A cross-desktop display manager, can use various front-ends written in any toolkit.
- [LXDM](http://sourceforge.net/projects/lxdm/) - The LXDE display manager. Can be used independent of the LXDE desktop environment.
- [MDM](https://github.com/linuxmint/mdm) - The MDM display manager, used in Linux Mint, a fork of GDM 2.
- [SDDM](https://github.com/sddm/sddm) - The QML-based display manager and successor to KDE4’s kdm; recommended for Plasma 5 and LXQt.
- [SLiM](http://sourceforge.net/projects/slim.berlios/) - Lightweight and elegant graphical login solution. (Discontinued)
- [XDM](http://www.x.org/archive/X11R7.5/doc/man/man1/xdm.1.html) - The X display manager with support for XDMCP, and host chooser.
- Lock screen: [xsecurelock](https://github.com/google/xsecurelock)

[rEFInd](https://www.rodsbooks.com/refind/) - rEFInd is a fork of the rEFIt boot manager. Like rEFIt, rEFInd can auto-detect your installed EFI boot loaders and it presents a pretty GUI menu of boot options. → great resource https://www.rodsbooks.com/refind/ 

[Login Manager Settings](https://realmazharhussain.github.io/gdm-settings/) - A settings app for GNOME’s Login Manager, GDM.

https://github.com/betterlockscreen/betterlockscreen