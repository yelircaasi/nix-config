# Desktop Meta - WMs, Compositors, Bars, Notifications, Launchers, etc.

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
    - [lightdm](https://github.com/canonical/lightdm) (https://github.com/canonical/lightdm?)
      - [Web Greeter](https://jezerm.github.io/web-greeter-page/)
      - [nody-greeter](https://github.com/JezerM/nody-greeter) (same look as web-greeter, but faster)
      - [sea-greeter](https://github.com/JezerM/sea-greeter) 
      - [lightdm-tiny-greeter](https://github.com/tobiohlala/lightdm-tiny-greeter)
      - [lightdm-webengine-greeter](https://github.com/matijaskala/lightdm-webengine-greeter) 
      - [lightdm-gtk-greeter](https://github.com/Xubuntu/lightdm-gtk-greeter)
      - [lightdm-mini-greeter](https://github.com/prikhi/lightdm-mini-greeter) 
      - [greeter](https://github.com/elementary/greeter)
      - [slick-greeter](https://github.com/linuxmint/slick-greeter)
    - [greetd](https://git.sr.ht/~kennylevinsen/greetd)
      - [tuigreet](https://github.com/apognu/tuigreet)
      - [ReGreet](https://github.com/rharish101/ReGreet)
      - [cosmic-greeter](https://github.com/pop-os/cosmic-greeter)
      - [lightdm-tiny-greeter](https://github.com/tobiohlala/lightdm-tiny-greeter)
      - [wlgreet](https://git.sr.ht/~kennylevinsen/wlgreet)
      - [greetd](https://man.sr.ht/~kennylevinsen/greetd/#styling-gtkgreet)
    - [sddm](https://github.com/sddm/sddm)
      - [SDDM Chili](https://www.opendesktop.org/p/1240784)
    - [SLiM](https://wiki.archlinux.org/title/SLiM)
    - [lemurs](https://github.com/coastalwhite/lemurs)
    
- Logout Menu
  - [wlogout](https://github.com/ArtsyMacaw/wlogout)
  - [waylogout](https://github.com/loserMcloser/waylogout)
  - [wleave](https://github.com/AMNatty/wleave)
- Lock Screen
  - [slock](https://github.com/BachoSeven/slock)
  - [slock-flexipatch](https://github.com/bakkeby/slock-flexipatch)
  - [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)
- Launchers, Menus
    - [sway-launcher-desktop](https://github.com/Biont/sway-launcher-desktop)
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
    - [pmenu](https://github.com/sgtpep/pmenu) - A dynamic terminal-based menu inspired by dmenu.
    - ilia
  - Sort      
    - [albert,](https://github.com/albertlauncher/albert,) https://albertlauncher.github.io/https://albertlauncher.github.io/reference/
    - [Albert](https://albertlauncher.github.io/) - An awesome keyboard launcher for the Linux desktop.
    - [Albert](https://github.com/ManuelSchneid3r/albert) `C++ X11`
    - [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher) - Helper application for Linux distributions serving as a kind of “entry point” for running and integrating AppImages.
    - [bashrun](http://bashrun.sourceforge.net/) `Bash terminal`
    - [bashrun2](http://henning-bekel.de/bashrun2/) `Bash terminal`
    - [bemenu](https://github.com/Cloudef/bemenu)
    - [catfish](https://docs.xfce.org/apps/catfish/start) - Catfish is a versatile file searching tool.
    - [Cerebro](https://cerebroapp.com/) - Open-source productivity booster with a brain / MacOS-Spotlight alternative.
    - [dmenu-wayland](https://github.com/nyyManni/dmenu-wayland) 
    - [dmenu](https://tools.suckless.org/dmenu/) - dmenu is a dynamic menu for X, originally designed for dwm. It manages large numbers of user-defined menu items 
    - [fsearch](https://github.com/cboxdoerfer/fsearch) A fast file search utility for Unix-like systems based on GTK+3. Wildcard support, RegEx support, Filter support.
    - [fuzzel](https://codeberg.org/dnkl/fuzzel) - rofi for wayland
    - [gmrun](http://sourceforge.net/projects/gmrun/) `C X11`
    - [Kupfer](http://engla.github.io/kupfer/) `Python X11`
    - [kupfer](https://github.com/kupferlauncher/kupfer)
    - [lighthouse](https://github.com/emgram769/lighthouse) `C X11`
    - [mkcron](https://github.com/keshavbhatt/mkcron) - cron editor for desktop
    - [picom - ArchWiki](https://wiki.archlinux.org/title/picom) TODO
    - [rrun](https://github.com/buster/rrun) `Rust X11`
    - [shellex](https://github.com/Merovius/shellex) `C X11`
    - [xboomx](https://github.com/victorhaggqvist/xboomx) `PythonX11`
    - [xlauncher](https://github.com/vatriani/xlauncher) `CX11`
    - [rofi](https://github.com/davatorium/rofi) - A window switcher, application launcher and dmenu replacement.
      - [rofi](https://davatorium.github.io/rofi/) → https://gist.github.com/MilesMcBain/0e6f449c3f8e07ed1b06aa785b0726ff -> vs dmenu
    - [rofi(1) — Arch manual pages](https://man.archlinux.org/man/community/rofi/rofi.1.en)
    - [rofi](https://github.com/adi1090x/rofi)
    - [rofi/INSTALL.md at next · davatorium/rofi · GitHub](https://github.com/davatorium/rofi/blob/next/INSTALL.md)
    - [tofi](https://github.com/philj56/tofi)
    - [ULauncher](https://ulauncher.io/)
    - [Ulauncher](https://ulauncher.io/) - Ulauncher is a fast application launcher for Linux. It’s is written in Python, using GTK+.
    - [wofi](https://sr.ht/~scoopta/wofi/)
  
  - Misc / plugins
    - [rofi-calc](https://github.com/svenstaro/rofi-calc)
    - [networkmanager-dmenu](https://github.com/firecat53/networkmanager-dmenu)
    
    
  - **dmenu-like menus**
        - [bemenu](https://github.com/Cloudef/bemenu) `C Wayland X11 terminal`
        - [bemenu](https://github.com/Cloudef/bemenu) `C` `Wayland` `X11` `terminal`
        - [dmenu](http://tools.suckless.org/dmenu/) `C X11`
        - [dmenu](http://tools.suckless.org/dmenu/) `C` `X11`
        - [dmenu2](https://bitbucket.org/melek/dmenu2) `C X11`
        - [dmenu2](https://bitbucket.org/melek/dmenu2) `C` `X11`
        - [fzf](https://github.com/junegunn/fzf) `Go terminal`
        - [fzf](https://github.com/junegunn/fzf) `Go` `terminal`
        - [fzy](https://github.com/jhawthorn/fzy) `C terminal`
        - [fzy](https://github.com/jhawthorn/fzy) `C` `terminal`
        - [gof](https://github.com/mattn/gof) `Go terminal`
        - [gof](https://github.com/mattn/gof) `Go` `terminal`
        - [gpicker](http://www.nongnu.org/gpicker/) `C X11`
        - [gpicker](http://www.nongnu.org/gpicker/) `C` `X11`
        - [Heatseeker](https://github.com/rschmitt/heatseeker) `Rust terminal`
        - [Heatseeker](https://github.com/rschmitt/heatseeker) `Rust` `terminal`
        - [hmenu](https://github.com/sulami/hmenu) `Haskell` `terminal`
        - [hmenu](https://github.com/sulami/hmenu) `Haskellterminal`
        - [Icepick](https://github.com/felipesere/icepick) `Rust terminal`
        - [Icepick](https://github.com/felipesere/icepick) `Rust` `terminal`
        - [PathPicker](https://facebook.github.io/PathPicker/) `Python terminal`
        - [PathPicker](https://facebook.github.io/PathPicker/) `Python` `terminal`
        - [peco](https://github.com/peco/peco) `Go` `terminal`
        - [peco](https://github.com/peco/peco) `Goterminal`
        - [percol](https://github.com/mooz/percol) `Python terminal`
        - [percol](https://github.com/mooz/percol) `Python` `terminal`
        - [pick](https://github.com/thoughtbot/pick) `C terminal`
        - [pick](https://github.com/thoughtbot/pick) `C` `terminal`
        - [ppick](https://github.com/alanbork/ppick) 'C' 'terminal'
        - [ppick](https://github.com/alanbork/ppick) 'C' 'terminal'
        - [rofi](https://github.com/DaveDavenport/rofi) `C X11`
        - [rofi](https://github.com/DaveDavenport/rofi) `C` `X11`
        - [Selecta](https://github.com/garybernhardt/selecta) `Ruby terminal`
        - [Selecta](https://github.com/garybernhardt/selecta) `Ruby` `terminal`
        - [selector](http://fleuret.org/cgi-bin/gitweb/gitweb.cgi?p=selector) `C terminal`
        - [selector](http://fleuret.org/cgi-bin/gitweb/gitweb.cgi?p=selector) `C` `terminal`
        - [slmenu](https://bitbucket.org/rafaelgg/slmenu) `C terminal`
        - [slmenu](https://bitbucket.org/rafaelgg/slmenu) `C` `terminal`
        - [smenu](https://github.com/p-gen/smenu) `C terminal`
        - [smenu](https://github.com/p-gen/smenu) `C` `terminal`
        - [tmenu](https://github.com/dhamidi/tmenu) `C terminal`
        - [tmenu](https://github.com/dhamidi/tmenu) `C` `terminal`
        - [tpick](https://github.com/smblott-github/tpick) `C terminal`
        - [tpick](https://github.com/smblott-github/tpick) `C` `terminal`
        - [vis-menu](http://martanne.github.io/vis/man/vis-menu.1.html) `C terminal`
        - [vis-menu](http://martanne.github.io/vis/man/vis-menu.1.html) `C` `terminal`
  
  - dmenu wrappers
        - [Yeganesh](http://dmwit.com/yeganesh/) `Haskel`
        - [xboomx](https://github.com/victorhaggqvist/xboomx) `Python`
        - [yegonesh](https://github.com/klowner/yegonesh) `Go`
    - Application launchers
    
- Bars (or widgets)
    
    - [i3bar](https://www.reddit.com/r/i3wm/comments/adjhd0/can_i_hide_i3bar_at_all_times_except_when_i/ )
    - [i3status-rust](https://github.com/greshake/i3status-rust)
    - [Lemonbar](https://github.com/LemonBoy/bar) - Super fast, lightweight, and mnml status bar for Linux.
    - [luastatus](https://github.com/shdown/luastatus)
    - [Polybar](https://polybar.github.io/) - Fast and easy-to-use status bar.
    - [Pomobar](https://github.com/rlcintra/pomobar)
    - [Waybar](https://github.com/Alexays/Waybar)
    - [xmobar](https://codeberg.org/xmobar/xmobar) vs [taffybar](https://github.com/taffybar/taffybar)
    - [xmobar](https://codeberg.org/xmobar/xmobar/src/branch/master/doc/quick-start.org)
    - [yambar](https://codeberg.org/dnkl/yambar)
    - [yambar](https://codeberg.org/dnkl/yambar)
    - sort
      - investigate polybar vs qtile bar
      - [polybar](https://github.com/polybar/polybar)
      - status bars: 
        - [dzen](https://robm.github.io/dzen/)
        - [xmobar](https://codeberg.org/xmobar/xmobar)
        - [taffybar](https://github.com/taffybar/taffybar)
        - [polybar](https://github.com/polybar/polybar)
          - [Configuring Xmonad and Polybar (It's Not THAT Difficult!) - YouTube](https://www.youtube.com/watch?v=cOehuALOQy4)
        - [cnx](https://github.com/mjkillough/cnx)
      - systrays: 
        - [trayer](https://github.com/sargon/trayer-srg)
        - [stalonetray](https://kolbusa.github.io/stalonetray/)
        - [gtk-sni-tray](https://github.com/taffybar/gtk-sni-tray)
    
    - taffybar configs
        - [Dotfiles,](https://github.com/ProtonNumber/Dotfiles,)
        - [r/unixporn - [Xmonad / Taffybar] A minimalist & blue RICE!](https://www.reddit.com/r/unixporn/comments/stsstb/xmonad_taffybar_a_minimalist_blue_rice/)
        - [r/unixporn - [XMonad] Dynamic Workspace Naming with Taffybar](https://www.reddit.com/r/unixporn/comments/59y6uf/xmonad_dynamic_workspace_naming_with_taffybar/)
        - [r/unixporn - [taffybar/XMonad] Gtk+3 Updates to Taffybar](https://www.reddit.com/r/unixporn/comments/78zwek/taffybarxmonad_gtk3_updates_to_taffybar/)
        - [r/unixporn - [taffybar][XMonad] A little bit too much transparency](https://www.reddit.com/r/unixporn/comments/8l40iu/taffybarxmonad_a_little_bit_too_much_transparency/)
        
    - xmobar configs
      - https://beginners-guide-to-xmonad.readthedocs.io/configure_xmobar.html
      - [dotfiles](https://github.com/Horhik/dotfiles)
      - [dotfiles](https://github.com/Jonathas-Conceicao/dotfiles)
      - [dofiles](https://gitlab.com/roosemberth/dotfiles/-/tree/master/)
      - [Solarized-xmonad-xmobar](https://github.com/dmxt/Solarized-xmonad-xmobar)
        
    
    
- Widgets
    
    - [elkowar/eww: ElKowars wacky widgets](https://github.com/elkowar/eww)
    - [ags](https://github.com/Aylur/ags)
    
- Notifications
    
    [dunst](https://github.com/dunst-project/dunst)
    
    - Notifications: [tiramisu](https://github.com/Sweets/tiramisu)
    
    [mako](https://github.com/emersion/mako)
    
    [linux_notification_center](https://github.com/phuhl/linux_notification_center)
    
    - [dunst](https://github.com/dunst-project/dunst)
    - [noti](https://github.com/variadico/noti) Monitor a process and trigger a notification.
    - [ntfy](https://github.com/dschep/ntfy) Cross-platform Python utility that enables you to automatically get desktop notifications on demand or when long running commands complete. It can as well send push notifications to your phone once a particular command completes.
    - [undistract-me](https://github.com/jml/undistract-me) - A command line program that plays a sound or sends a notification when a long command has finished running in the command line.
    - [keep -](https://github.com/keephq/keep) - Simple alerting tool, with declarative syntax and builtin providers.
    - [catlight](https://catlight.io/) - status notifier for developers. Checks the status of continuous delivery builds and shows desktop notifications.
    - [sysm](https://github.com/jafarlihi/sysm) - Makes your system play custom sounds when any configured system or external event happens.
- Openers (like xdg-open)
    
    ********* [mimi](https://github.com/BachoSeven/mimi)
    
- Browser Equivalents
    
    [Heimdall](https://github.com/linuxserver/Heimdall)
    
- Other
    
    [todowalp](https://github.com/linuxdotexe/todowalp)
    
    [Reddit - [ wms ] alternating border color as low battery alert](https://www.reddit.com/r/unixporn/comments/1239m15/wms_alternating_border_color_as_low_battery_alert/)
    
    [SwayOSD](https://github.com/ErikReider/SwayOSD)
    

---

- Compositors
    - [ ]  Picom
    
    [picom](https://github.com/dccsillag/picom) fork
    
    [picom](https://github.com/jonaburg/picom)
    
    - [Compton](https://github.com/yshui/compton) - Compton is a standalone composite manager, suitable for use with window managers that do not natively provide compositing functionality.
    - [Gamescope](https://github.com/Plagman/gamescope) - Gamescope is a micro-compositor that provides a sandboxed Xwayland desktop with independent input, resolution, and refresh rate.
    - [Hyprland](https://hyprland.org/) - Hyprland is a dynamic tiling Wayland compositor that doesn’t sacrifice on its looks.
    - [River](https://github.com/riverwm/river) - River is a dynamic tiling Wayland compositor with flexible runtime configuration.
    - [Sway](https://swaywm.org/) - Sway is tiling Wayland compositor and a drop-in replacement for the i3 window manager for X11.
    - [Wayfire](https://wayfire.org/) - Wayfire is a wayland compositor based on wlroots. It aims to create a customizable, extendable and lightweight environment without sacrificing its appearance.
    - [Xcompmgr](https://cgit.freedesktop.org/xorg/app/xcompmgr) - Xcompmgr is a simple composite manager capable of rendering drop shadows and, with the use of the transset utility, primitive window transparency.
    
    ricing - picom shaders - [picom-shaders](https://github.com/ikz87/picom-shaders)/wiki/Shader-gallery
    
    - Compositor: [picom](https://github.com/yshui/picom)
    - [ ]  [picom](https://github.com/yshui/picom)
    
    [picom](https://github.com/yshui/picom)/blob/next/picom.sample.conf 
    
    [picom](https://github.com/xealea/picom)
    
    [picom-shaders](https://github.com/ikz87/picom-shaders)
    
    [glassit-linux](https://github.com/Fmstrat/glassit-linux) - not needed due to picom
    
- Comparison
    
    [My Tier List For Tiling Window Managers - YouTube](https://www.youtube.com/watch?v=xysISs0mcj8)
    
    ****[Qtile Versus i3 Window Manager](https://www.youtube.com/watch?v=vXFuhNbGgZg)****
    
    compare i3/sway vs qtile
    
    [Linx Cast WM Playlist](https://www.youtube.com/playlist?list=PL4d6Lj0GrDEBeTLsdZ94NRZlgft-rrlQE)
    
    best tiling window manager https://www.youtube.com/watch?v=pY9HPm1N16Y
    
    ****[481 - ¿PROBAR UN TILING WINDOW MANAGER?¿REGOLITH, I3 O CUAL?](https://atareao.es/podcast/probar-un-tiling-window-managerregolith-i3-o-cual/)****
    
    https://www.tecmint.com/best-tiling-window-managers-for-linux/ 
    
    [Reddit - Best WM to start with](https://www.reddit.com/r/unixporn/comments/11m9ggz/best_wm_to_start_with/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
    
- X11 WMs
    
    
    [stumpwm](https://github.com/stumpwm/stumpwm) http://stumpwm.github.io/ (X11, CL)
    
    https://pypi.org/project/xpywm/
    
    - [bspwm](https://github.com/baskerville/bspwm) [wiki](https://github.com/baskerville/bspwm/wiki) - Bspwm is a tiling window manager that represents windows as the leaves of a full binary tree. https://wiki.archlinux.org/title/bspwm
    
    - [awesome](https://awesomewm.org/) - A highly configurable, next generation framework window manager for X.
    - [dwm](https://dwm.suckless.org/) - A dynamic window manager for X. It manages windows in tiled, monocle and floating layouts.
    - [spectrwm](https://github.com/conformal/spectrwm) - A small dynamic tiling window manager for X11, largely inspired by xmonad and dwm.
    - [Worm](https://github.com/codic12/worm) - A dynamic, tag-based window manager written in Nim.
    - [xmonad](https://xmonad.org/) - A dynamically tiling X11 window manager that is written and configured in Haskell.
    - [Herbstluftwm](https://herbstluftwm.org/) - Is a Manual tiling window manager for X11 using Xlib and Glib.
    - [i3 WM](https://i3wm.org/) - A better tiling and dynamic window manager. It’s completely written from scratch. The target platforms are GNU/Linux and BSD operating systems. https://i3wm.org/docs/userguide.html  https://i3wm.org/docs/ [i3wm](https://i3wm.org/docs/) https://dev.to/t/i3wm https://i3wm.org/docs/layout-saving.html https://itsfoss.com/i3-customization/ 
      - [i3-gaps](https://github.com/Airblader/i3) - i3-gaps is i3 with more features.
      - [i3-autolayout](https://github.com/BiagioFesta/i3-autolayout)
      - [i3-alternating](https://github.com/nowakf/i3-alternating)
      - [i3-layout-manager](https://github.com/klaxalk/i3-layout-manager)
      - https://codeberg.org/Oglo12/personal-i3-config/ 
      - https://www.reddit.com/r/i3wm/ 
      - [i3wm playlist](https://www.youtube.com/playlist?list=PL5ze0DjYv5DbCv9vNEzFmP6sU7ZmkGzcf) (Alex Booker)
      - [i3 mouseless](https://thevaluable.dev/i3-config-mouseless/)
      - https://wiki.archlinux.org/title/i3
      - https://www.reddit.com/r/linux/comments/rpzur6/i3_is_the_best_window_manager/ 
      - **[i3 Windows Manager with XFCE using MX Linux distribution](https://www.youtube.com/watch?v=MMRVG9jk_M0&t=128s)**
    
    - [leftwm](http://leftwm.org/) [leftwm](https://github.com/leftwm/leftwm)
    - [i3 vs qtile](https://www.reddit.com/r/unixporn/comments/enshqt/i3_or_qtile/) 
    - 
    - [Qtile on Ubuntu](https://www.youtube.com/watch?v=Y1busy_dDRQ)
    - [xmonad](https://xmonad.org/) xmonad https://www.youtube.com/watch?v=JLz3UKJFMoI, 
        xmonad dt: https://www.youtube.com/watch?v=5oBT0a25FyA [XMonad Demo - YouTube](https://www.youtube.com/watch?v=70IxjLEmomg) 
      - [XMonad config](https://github.com/NeshHari/XMonad) https://xmonad.org/gnome.html
    - [herbstluftwm/herbstluftwm: A manual tiling window manager for X11](https://github.com/herbstluftwm/herbstluftwm)
      - [Combine The Best of Bspwm and XMonad, You Get Herbstluftwm! - YouTube](https://www.youtube.com/watch?v=eEmOy3qzrcg)
    - [bedwm](https://github.com/chadcat7/bedwm)
    - [Hypr](https://github.com/hyprwm/Hypr)
    - [dkwm](https://bitbucket.org/natemaia/dk/src/master/)
    
    
    
    [XMonad Configuration Tutorial | xmonad - the tiling window manager that rocks](https://xmonad.org/TUTORIAL.html)
    
    https://dwm.suckless.org/patches/ 
    
    https://vincent.bernat.ch/en/blog/2021-i3-window-manager
    
    https://news.ycombinator.com/item?id=28794901
    
    [marswm](https://github.com/jzbor/marswm)
    
    [moonwm](https://github.com/jzbor/moonwm)
    
    [HPR i3 Episode → see show notes!](https://hackerpublicradio.org/eps.php?id=3735) 
    
    [awwesomewm with dots](https://www.reddit.com/r/unixporn/comments/12tvw7f/awesome_finally_i_got_what_i_want)
    
    https://stumpwm.github.io/ 
    
    [blueicewm](https://github.com/ottop/blueicewm)
    
    https://opensource.com/article/18/8/getting-started-i3-window-manager 
    
    https://awesomewm.org/ 
    
    https://www.reddit.com/r/unixporn/comments/130h37f/bspwm_how_is_it/ 
    
    - [ ]  [xmonad](https://xmonad.org/documentation.html) → [remove dock](https://www.notion.so/Config-d0658f0bfd30465c8d87406aa2b63490?pvs=21) and remove bar, also remove [window bars](https://stackoverflow.com/questions/71204126/how-to-remove-the-title-bar-of-gnome-applications)?
    [→ install](https://xmonad.org/INSTALL.html)
    [guide](https://beginners-guide-to-xmonad.readthedocs.io/index.html)
    
    [dwm-flexipatch](https://github.com/bakkeby/dwm-flexipatch)
    
    [blueicewm](https://github.com/ottop/blueicewm)
    
    https://scaron.info/blog/awesome-with-gnome-on-ubuntu.html
    
    [leftwm](https://github.com/leftwm/leftwm)
    
    https://www.ragnarwm.org/ 
    
    [DkWM](https://bitbucket.org/natemaia/dk) 
    
    https://tools.suckless.org/x/wmname/ 
    
    https://www.reddit.com/r/unixporn/comments/13cp71s/marswm_rusty_buisiness/ 
    
- Wayland Compositors

    - [hyprland](https://hyprland.org/)
      - [awesome-hyprland](https://github.com/hyprland-community/awesome-hyprland)
      - [awesome-hyprland](https://github.com/hyprland-community/awesome-hyprland)
      - [awesome-hyprland#plugins](https://github.com/hyprland-community/awesome-hyprland#plugins)
      - ****[So you want to learn hyprland? LONG VERSION... install and m0re.](https://www.youtube.com/watch?v=iE99GrcZzhs)****
    
    - [river](https://github.com/riverwm/river)
      - [river-luatile](https://github.com/MaxVerevkin/river-luatile)
      - [algae](https://github.com/prmadev/algae) - river in rust 
      - [algae](https://github.com/amirography/algae) RiverWM config in Rust
    - [swaywm](https://swaywm.org/)
      - [sway useful add-ons](https://github.com/swaywm/sway/wiki/Useful-add-ons-for-sway)
      - [SwayWM First Impressions - Is it Good? - YouTube](https://www.youtube.com/watch?v=FmEaMntQDzM)
    - [swayfx](https://github.com/WillPower3309/swayfx)
    - [kiwmi](https://github.com/buffet/kiwmi)
      - [kiwmi (fork)](https://github.com/kuruczgy/kiwmi)
    - [wayfire](https://github.com/WayfireWM/wayfire)
    - [dwl](https://github.com/djpohly/dwl) 
    - [mahogany](https://github.com/stumpwm/mahogany) (Wayland, CL)
    - [noway](https://github.com/mora-unie-youer/noway)
    - [wmoon](https://github.com/Natchuz/wmoon)
    - [vivarium](https://github.com/inclement/vivarium)
    - [strata](https://github.com/StrataWM/strata)
    - [taiwins](https://github.com/taiwins/taiwins)
    - [way-cooler](http://way-cooler.org/) [gh](https://github.com/OmegaRogue/way-cooler) 
    - [waymonader](https://github.com/ardek66/waymonader)
    - [newM](https://github.com/jbuchermn/newm)
    - [kile](https://gitlab.com/snakedye/kile) - layout generator for RiverWM
    - [waymonad](https://github.com/waymonad/waymonad)
    - [waymonader](https://github.com/ardek66/waymonader)
    
    
- Wayland Libraries
    - [smithay](https://github.com/Smithay/smithay)
    - [wlroots](https://gitlab.freedesktop.org/wlroots/wlroots/)
    - weston
    
- DE-agnostic WMs
    - [Qtile](http://www.qtile.org/) - Qtile is a full-featured, hackable tiling window manager written and configured in Python.
      - https://gitlab.com/dwt1/dotfiles/-/tree/master/.config/qtile → [video](https://www.youtube.com/watch?v=9NO2DJARbU0)
      - [Qtile Playlist](https://www.youtube.com/playlist?list=PL5--8gKSku15-C4mBKRpQVcaat4zwe4Gu)
      - ****[Modifying Qtile on Debian Stable - Simple configuration](https://www.youtube.com/watch?v=o1-d90BBKuI)****
      - ****[Qtile Layouts - Manage And Configure Window Layouts](https://www.youtube.com/watch?v=GmJlwVTKTmg)****
      - https://docs.qtile.org/en/latest/manual/install/gnome.html
      - [KDE + qtile](https://www.reddit.com/r/unixporn/comments/rhviab/kde_qtile_am_i_doing_tiling_wms_right/)
      - https://www.reddit.com/r/qtile/comments/ynxnvd/how_to_make_sticky_window/ 
      - https://www.mail-archive.com/qtile-dev@googlegroups.com/msg00983.html 
      - [qtile-plasma](https://github.com/numirias/qtile-plasma) 
      - http://www.qtile.org/videos/ 
      - https://www.google.com/search?q=qtile+drop-down+window&oq=qtile+drop-down+window&aqs=chrome..69i57j33i160l2.6008j0j4&sourceid=chrome&ie=UTF-8 
      - [Qtile Playlist](https://www.youtube.com/playlist?list=PL8vZ_N0-ziZP1gm2-CBiCBPZNFrlge8Nb)
      - https://www.google.com/search?q=qtile+sticky+window&oq=qtile+sticky+window&aqs=chrome..69i57j69i60.10030j0j9&sourceid=chrome&ie=UTF-8 
      - https://www.dioptricdesign.com/2021/08/20/qtile-chameleon-update/ 
      - [Tuff Gniuz qtile Playlist](https://www.youtube.com/playlist?list=PLIHtvvGZ1O3hgLjh-Gt42-XrVmR0a4hEi)
      - [archcraft-qtile](https://github.com/archcraft-os/archcraft-qtile)/tree/main 
      - https://www.reddit.com/r/qtile/comments/12sdtfp/how_to_make_translucent_kde_konsole/ 
    - [monroeclinton/mwm: My Window Manager](https://github.com/monroeclinton/mwm)
    
      
    
- Other DE
    - [Bismuth](https://bismuth-forge.github.io/bismuth/) - Making tiling window management easy. On KDE Plasma.
    - [Kröhnkite](https://github.com/esjeon/krohnkite) - A dynamic tiling extension for KWin.
    - [Pop!_OS Shell](https://github.com/pop-os/shell) - Pop Shell is a keyboard-driven auto-tiling window manager that run on top of the GNOME shell.
    -  Arcan + suite
        - https://arcan-fe.com/  https://github.com/letoram
        - https://github.com/letoram/cat9
        - https://github.com/letoram/durden
        - [arcan](https://github.com/letoram/arcan)/wiki
        - https://arcan-fe.com/
        - http://durden.arcan-fe.com/
        - Arcan on Nix 2020: https://gist.github.com/egasimus/0254dcd67f95f262aa6e133794738392
        - https://github.com/egasimus/arcan-nix
    - https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma 
    - [gTile](https://github.com/gTile/gTile)
    
    
- **Stacking Window Managers**
    - [2bwm](https://github.com/venam/2bwm) - A fast floating WM, with the particularity of having 2 borders, written over the XCB library and derived from mcwm.
    - [Blackbox](https://github.com/bbidulock/blackboxwm) - A fast, lightweight window manager for the X Window System, without all those annoying library dependencies.
    - [Fluxbox](http://fluxbox.org/) - A window manager for X that was based on the Blackbox 0.61.1 code.
    - [IceWM](https://ice-wm.org/) - A window manager for the X Window System. The goal of IceWM is speed, simplicity, and not getting in the user’s way.
    - [Openbox](http://openbox.org/) - A highly configurable, next generation window manager with extensive standards support.
    
- Wayland, X11, WM Information
    - https://wayland.app/protocols/ 
    - https://wayland.freedesktop.org/docs/html/ 
    - https://www.cbtnuggets.com/blog/technology/networking/why-use-wayland-versus-x11 
    - [Thesis](https://www.cs.ru.nl/bachelors-theses/2019/Max_van_Deurzen___4581903___The_anatomy_of_the_modern_window_manager_-_a_case_study_for_X_in_an_Agile_manner.pdf)
    - Wayland vs X
        - https://bbs.archlinux.org/viewtopic.php?id=238376 
        - [Wayland vs X11](https://youtu.be/nPz5TAGYgzA)
        - [https://en.wikipedia.org/wiki/Wayland_(protocol)](https://en.wikipedia.org/wiki/Wayland_(protocol)) vs X11?
        - Wayland Apps
            - [wtype](https://github.com/atx/wtype)
            - [ydotool](https://github.com/ReimuNotMoe/ydotool)
            - [LeftWM - A Fast and Simple Xmonad Alternative - YouTube](https://www.youtube.com/watch?v=jvfk380Pses)
            guake for wayland?
            - https://askubuntu.com/questions/956640/equivalent-to-xdotool-for-wayland#977801
            - https://unix.stackexchange.com/questions/309580/does-wayland-use-xkb-for-keyboard-layouts
            - [I wonder what will happen to XMonad as the Wayland future actually seems to be a... | Hacker News](https://news.ycombinator.com/item?id=28794901)
            - [wl-clipboard](https://github.com/bugaevc/wl-clipboard)
            - [swhkd](https://github.com/waycrate/swhkd)

    - ****[A Comprehensive Guide To Tiling Window Managers](https://www.youtube.com/watch?v=Obzf9ppODJU&t=717s)****
    - http://www.xwinman.org/ 
    - **[X Protocol Reference Manual for X11, Release 6 (Definitive Guide to X Window System, Vol. 0) (Definitive Guides to the X Window System)](http://library.lol/main/01D1783574EC32A48D6FF44FAC825C18)**
    - **[The anatomy of the modern window manager](http://library.lol/main/C392F948ADD053F40ABE01AACE37ED57)**
    - https://eirenicon.org/implementing-linux-window-managers-tutorial/ 
    - http://www.xwinman.org/others.php 
    - https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma
    - → Xorg vs Wayland vs Arcan
    - How to set up dropdown windows with a tiling window manager?
    - [A Look Inside Mutter / GNOME Shell](https://lpc.events/event/7/contributions/834/attachments/684/1263/A_Look_Inside_Mutter.pdf)
    - https://www.x.org/releases/X11R7.5/doc/man/man1/xprop.1.html 
    - https://wiki.archlinux.org/title/Xorg#Composite
    - [How to build a window manager in Python](https://monroeclinton.com/build-your-own-window-manager/)
    - [xorg documentation](https://www.x.org/wiki/Documentation/)
    - https://wiki.archlinux.org/title/Window_manager 
    - [Why I Use Tiling Window Managers - And Why You Should Too - YouTube](https://www.youtube.com/watch?v=K_W0ia2QjU8)
    - [wayland](https://wayland.freedesktop.org/) [wayland protocols](https://wayland.app/protocols/)

- Misc

    - How to place one window on top of another, like floating but always keeping smaller one on top? → PiP functionality with a tiling WM?
    - scrollable window manager
    - [blfs](https://www.linuxfromscratch.org/blfs/read.html)
    - [xtermwm](https://xtermwm.sourceforge.io/)
    - [nixGL](https://github.com/cfhammill/nixGL)
    - [learnopengl](https://learnopengl.com/)
    - [dbus](https://www.freedesktop.org/wiki/Software/dbus/)
    - [ibus]()
    - [xborder](https://github.com/deter0/xborder)