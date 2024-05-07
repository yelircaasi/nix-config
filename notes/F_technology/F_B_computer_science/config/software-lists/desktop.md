# WMs, Compositors, Bars, Menus, Launchers, Notifications, Widgets, Lockscreen, etc

SORT

* (1) [hyprland](https://github.com/hyprwm/Hyprland) - nvidia info [here](https://wiki.hyprland.org/Nvidia/)
   | ( ) [sway](...) - nvidia info [here](https://github.com/swaywm/sway/wiki)
   | ( ) [riverwm](...)
* (2) [waybar](...)
   | ( ) [eww](...)
   | ( ) [polybar](...)
* (2) [rofi-wayland](...)
   | ( ) [wofi](...)
* (2) [swww](...)
* (2.5) [mako](...)
   | (2.5) [avizo](https://github.com/misterdanb/avizo)
   | ( ) [dunst](...)
* (2) [libnotify](...)
* (2) [networkmanagerapplet](...)
* (2) [et](https://github.com/oxzi/et)
* (2) [caffeine-ng](https://codeberg.org/WhyNotHugo/caffeine-ng)
* (2.5)
* (2.5) [greenclip](https://github.com/erebe/greenclip)
   | (2.5) [Clipboard](https://github.com/Slackadays/Clipboard)
   | (2.5) [CopyQ](https://github.com/hluk/CopyQ)
   | (2.5) [wl-clipboard](https://github.com/bugaevc/wl-clipboard)
   | (2.5) [yank](https://github.com/mptre/yank)
* (2.5)
* ( ) [kanshi](https://sr.ht/~emersion/kanshi/) ([autorandr](...) for x)
* (6) [?](...) ([xrandr](...) for x)

## Legend

(0) - already installed and configured in nix-config
(1) - already added to nix-config, but some work is needed
(2) - to be added next
(2.5 / 3.5) - to be added, but first decide between alternatives
(2.6) - Looks good, but still need to try it out
(2.9) - Could be better than the current choice, but a decision needed to be made
(3) - also to be added, but lower priority
(3.9) - For fun; no urgency, but try it soon :)
(4) - not decided yet / maybe later
(4.5) - Backpocket, maybe for a different device, etc.
(5) - some rewriting or packaging necessary (but to be added)
(5) - Like (5), but also for RosettaProjects
(6) - Decided against, but still looks good
(7) Decided against; looks bad
(N) - Ready to package for Nix
(R) - Read!

## Notes

### Ideal Setup

* 1. Minimal use of mouse
* 2. Unified, consistent, ergonomic keybindings
* 3. Multiple layouts and configurations for different tasks
* 4. Configurations well-documented and backed up, easy to reproduce with a few commands
* 5. Aesthetically pleasing - unified color scheme (and ability to switch between themes)
* 6. Privacy and security
* 7. Maximized efficiency and productivity: work at the speed of thought, minimizing clutter & drag
* 8. Reliable, solid system - no breakage
* Wayland recommended stack:
* hyprland, sway, river
* waybar, eww
* mako, dunst
* libnotify
* xdg portal
* swww, hyprpaper, swaybg, wpaperd, mpvpaper
* rofi-wayland, wofi, bemenu, fuzzel, tofi.
* Display Manager, Login, Lockscreen, Boot, etc.
* How to place one window on top of another, like floating but always keeping smaller one on top? → PiP functionality with a tiling WM?
* -> scrollable window manager
* → make settings in NixOS for each and make choice of which one to use dependent on a single keyword in the main config file
* note *  grid: window positions and sizes based on a regular NxM grid. May be automatic (like wmfs, monsterwm) or manual (like Subtle).

## Desktop Shell

### ags

* (2) [ags](https://github.com/Aylur/ags)
* (4) [ags-sootspirits](https://github.com/flick0/ags-sootspirits)

### eww

* (3) [elkowar/eww: ElKowars wacky widgets](https://github.com/elkowar/eww) [Eww - Widgets for everyone! - eww documentation](https://elkowar.github.io/eww/eww.html)

### fabric

* ( ) [fabric](https://github.com/Fabric-Development/fabric)[fabric](https://github.com/Fabric-Development/fabric)
* ( ) [Fabric-Development/fabric](https://github.com/Fabric-Development/fabric)
* ( ) [Fabric-Development/fabric](https://github.com/Fabric-Development/fabric)

### nwg-shell

* ( ) [nwg-shell](https://nwg-piotr.github.io/nwg-shell/)

### way-shell

* ( ) [way-shell](https://github.com/ldelossa/way-shell)

### hyprpanel

* ( ) [hyprpanel](https://github.com/pdf/hyprpanel)

## Desktop Environment

* ( ) [pop-os/cosmic-epoch: Next generation Cosmic desktop environment](https://github.com/pop-os/cosmic-epoch)
  * ( ) [Pop!OS Shell](https://github.com/pop-os/shell) - Pop Shell is a keyboard-driven auto-tiling window manager that run on top of the GNOME shell.
  * ( ) [pop-os/cosmic-randr at 88c570cf8b88beae1cf4f3e2d412cc64ec49cd7c](https://github.com/pop-os/cosmic-randr/tree/88c570cf8b88beae1cf4f3e2d412cc64ec49cd7c)
* ( ) [Budgie](https://blog.buddiesofbudgie.org/) - Budgie is a desktop environment designed with the modern user in mind, it focuses on simplicity and elegance.
* ( ) [Cinnamon](https://linuxmint.com/) - Cinnamon strives to provide a traditional user experience. Cinnamon is a fork of GNOME 3.
* ( ) [Deepin DE](https://www.deepin.org/en/dde/) - DDE (Deepin Desktop Environment) is the default desktop environment originally created for the Linux Deepin distribution.
* ( ) [Enlightenment](https://www.enlightenment.org/about) - A lightweight and pretty desktop environment that is designed to run fast and look good, while retaining a large degree of customization.
* ( ) [LXDE](https://lxde.org/) - The Lightweight X11 Desktop Environment is a fast and energy-saving desktop environment.
* ( ) [LXQt](https://lxqt-project.org/) - LXQt is the Qt port and the upcoming version of LXDE, the Lightweight Desktop Environment.
* ( ) [Mate](https://mate-desktop.com/) - Mate provides an intuitive and attractive desktop to Linux users using traditional metaphors. MATE is a fork of GNOME 2.
* ( ) [Pantheon](https://elementary.io/) - Pantheon is the default desktop environment originally created for the elementary OS distribution.
* ( ) [UKUI](https://www.ukui.org/) - UKUI is a desktop environment for Linux distributions and other UNIX-like operating systems, originally developed for Ubuntu Kylin, and written using the Qt framework.
* ( ) [Unity](https://unity8.io/) - Unity is a shell for GNOME designed by Canonical for Ubuntu.
* ( ) [Xfce](https://www.xfce.org/) - [how_to_customize_xfce4panel/](https://www.reddit.com/r/unixporn/comments/12zboi0/xfce_decided_to_learn_how_to_customize_xfce4panel/)
* ( ) [GNOME](https://www.gnome.org/) - The GNOME desktop environment is an attractive and intuitive desktop with both a modern (GNOME) and a classic (GNOME Classic) session.
  * ( ) [GNOME Extensions](https://extensions.gnome.org/) - Extensions for the GNOME Desktop Environment.
  * ( ) [omglinux.com/space-bar-gnome-extension/](https://www.omglinux.com/space-bar-gnome-extension/)
  * ( ) [GNOME Look](https://www.gnome-look.org/) - A website that hosts a Large amounts of community created icons, shell themes, fonts, and many more assets that can be used to customize your GNOME desktop environment.
  * ( ) [Gradience](https://gradienceteam.github.io/) - Gradience is a tool for customizing Libadwaita applications and the adw-gtk3 theme.
  * ( ) [Extension Manager](https://github.com/mjakeman/extension-manager) - A utility for browsing and installing GNOME Shell Extensions.
  * ( ) [GNOME Flashback](https://wiki.gnome.org/Projects/GnomeFlashback) - a shell for GNOME 3 which was initially called GNOME fallback mode. The desktop layout and the underlying technology is similar to GNOME 2
* ( ) [KDE Plasma](https://www.kde.org/plasma-desktop) - offers all the tools required for a modern desktop computing experience so you can be productive right from the start.
  * ( ) [KDE Plasma DT](https://youtu.be/S6Zf16gYzIY)
  * ( ) [docs.kde.org/*](https://docs.kde.org/)
  * ( ) [invent.kde.org/plasma](https://invent.kde.org/plasma) [en.wikipedia.org/wiki/KDE_Plasma_5](https://en.wikipedia.org/wiki/KDE_Plasma_5)
  * ( ) [userbase.kde.org/Tutorials*](https://userbase.kde.org/Tutorials) [userbase.kde.org/Welcome_to_KDE_UserBase](https://userbase.kde.org/Welcome_to_KDE_UserBase)
  * ( ) [userbase.kde.org/Websites*](https://userbase.kde.org/Websites) [docs.kde.org/](https://docs.kde.org/)
  * ( ) [docs.kde.org/stable5/en/plasma-desktop/plasma-desktop/index.html](https://docs.kde.org/stable5/en/plasma-desktop/plasma-desktop/index.html)
  * ( ) [[ KDE + Bismuth ] Am I doing it right? : r/unixporn - Reddit](https://www.reddit.com/r/unixporn/comments/vz6oyi/kde_bismuth_am_i_doing_it_right/)
  * ( ) [[KDE] Plasma with Bismuth tiling extension is just perfect. The ...](https://www.reddit.com/r/unixporn/comments/q55e8f/kde_plasma_with_bismuth_tiling_extension_is_just/)
  * ( ) [[KDE + Bismuth] Tartarus : r/unixporn - Reddit](https://www.reddit.com/r/unixporn/comments/x001ij/kde_bismuth_tartarus/)
  * ( ) [Bismuth](https://bismuth-forge.github.io/bismuth/) - Making tiling window management easy. On KDE Plasma.
  * ( ) [Kröhnkite](https://github.com/esjeon/krohnkite) - A dynamic tiling extension for KWin.
  * ( ) [userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma)
* (3) [desq](https://gitlab.com/DesQ)
* ( ) Arcan + suite
  * ( ) [arcan-fe.com/](https://arcan-fe.com/)
  * ( ) [letoram](https://github.com/letoram)
  * ( ) [letoram/cat9](https://github.com/letoram/cat9)
  * ( ) [letoram/durden](https://github.com/letoram/durden)
  * ( ) [arcan](https://github.com/letoram/arcan)
  * ( ) [arcan-fe.com/](https://arcan-fe.com/)
  * ( ) [durden.arcan-fe.com/](http://durden.arcan-fe.com/)
  * Arcan on Nix 2020: [gist.github.com/egasimus/0254dcd67f95f262aa6e133794738392](https://gist.github.com/egasimus/0254dcd67f95f262aa6e133794738392)
  * ( ) [egasimus/arcan-nix](https://github.com/egasimus/arcan-nix)
  * ( ) [gTile](https://github.com/gTile/gTile)

### Desktop Environment Ricing and Mixing

* ( ) [r/gnome/comments/tptfg6/theme_kde_apps_on_gnome/](https://www.reddit.com/r/gnome/comments/tptfg6/theme_kde_apps_on_gnome/)
* WMs on Xubuntu and Lubuntu? → Lubuntu integrates well with KDE apps
* ( ) [askubuntu.com/questions/24780/how-to-make-kde-applications-look-native-in-gnome](https://askubuntu.com/questions/24780/how-to-make-kde-applications-look-native-in-gnome)
* ( ) [debugpoint.com/customize-gnome-clean-look-2022-1/](https://www.debugpoint.com/customize-gnome-clean-look-2022-1/)
* search: gnome theme for kde apps
* ( ) [r/kde/comments/11mghkl/guide_theme_dolphin_qt_apps_on_gnome/](https://www.reddit.com/r/kde/comments/11mghkl/guide_theme_dolphin_qt_apps_on_gnome/)

## WM/Compositor

* ( ) [algae](https://github.com/amirography/algae) RiverWM config in Rust
   |  ( ) [algae](https://github.com/prmadev/algae) - river in rust
* ( ) [awesome-hyprland#plugins](https://github.com/hyprland-community/awesome-hyprland#plugins)
* ( ) [cage-kiosk/cage: A Wayland kiosk](https://github.com/cage-kiosk/cage)
* ( ) [dwl-guile](https://github.com/engstrand-config/dwl-guile)
* ( ) [dwl-guile home service](https://github.com/engstrand-config/home-service-dwl-guile)
* ( ) [dwl](https://github.com/denisdubochevalier/dwl)
   |  ( ) [dwl](https://github.com/djpohly/dwl)
* ( ) [ezmonad](https://github.com/QuillFlash/ezmonad)
* ( ) [gamescope](https://github.com/Plagman/gamescope) - Gamescope is a micro-compositor that provides a sandboxed Xwayland desktop with independent input, resolution, and refresh rate.
* ( ) [way-cooler](https://github.com/OmegaRogue/way-cooler)
* ( ) [home-service-dwl-guile](https://github.com/engstrand-config/home-service-dwl-guile)
* ( ) [hy3](https://github.com/outfoxxed/hy3)
* ( ) [Hyprland](https://hyprland.org/) - [awesome-hyprland](https://github.com/hyprland-community/awesome-hyprland) Hyprland is a dynamic tiling Wayland compositor that doesn’t sacrifice on its looks. [So you want to learn hyprland? LONG VERSION... install and m0re.](https://www.youtube.com/watch?v=iE99GrcZzhs) -> [Never knew Hyprland had different animations than the default!](https://www.youtube.com/watch?v=UOniMj7bkh4) [Monitors | Hyprland Wiki](https://wiki.hyprland.org/Configuring/Monitors/)
* ( ) [kiwmi (fork)](https://github.com/kuruczgy/kiwmi)
* ( ) [kiwmi](https://github.com/buffet/kiwmi)
* ( ) [mahogany](https://github.com/stumpwm/mahogany) (Wayland, CL)
* ( ) [monroeclinton/mwm: My Window Manager](https://github.com/monroeclinton/mwm)
* ( ) [newm-atha](https://sr.ht/~atha/newm-atha/)
* ( ) [newm: Wayland compositor](https://github.com/jbuchermn/newm)
* ( ) [newM](https://github.com/jbuchermn/newm)
* ( ) [niri: A scrollable-tiling Wayland compositor.](https://github.com/YaLTeR/niri) $$$
* ( ) [noway](https://github.com/mora-unie-youer/noway)
* ( ) [papersway](https://spwhitton.name/tech/code/papersway/)
* ( ) [river](https://github.com/riverwm/river) | ( ) [river-luatile](https://github.com/MaxVerevkin/river-luatile) | ( ) [kile](https://gitlab.com/snakedye/kile) - layout generator for RiverWM
* ( ) [simplewc](https://www.reddit.com/r/unixporn/s/7BK4nY4pV3) [github](https://github.com/kcirick/simplewc)
* ( ) [strata](https://github.com/StrataWM/strata)
* ( ) [sway useful add-ons](https://github.com/swaywm/sway/wiki/Useful-add-ons-for-sway)
* ( ) [Sway](https://swaywm.org/) - Sway is tiling Wayland compositor and a drop-in replacement for the i3 window manager for X11. [i3 to Sway :: The Curator](https://julioln.com/posts/from-i3-to-sway/)
* ( ) [swayfx: SwayFX: Sway, but with eye candy!](https://github.com/WillPower3309/swayfx)
* ( ) [swaywm](https://swaywm.org/) [swayWM First Impressions - Is it Good? - YouTube](https://www.youtube.com/watch?v=FmEaMntQDzM)
* ( ) [taiwins](https://github.com/taiwins/taiwins)
* ( ) [vivarium](https://github.com/inclement/vivarium)
* ( ) [way-cooler](http://way-cooler.org/)
* ( ) [wayfire](https://github.com/WayfireWM/wayfire)
* ( ) [wayfire](https://wayfire.org/) - Wayfire is a wayland compositor based on wlroots. It aims to create a customizable, extendable and lightweight environment without sacrificing its appearance.
* ( ) [waymonad](https://github.com/waymonad/waymonad)
* ( ) [waymonader](https://github.com/ardek66/waymonader)
* ( ) [wmoon](https://github.com/Natchuz/wmoon)

### Sway

* ( ) [sway migration](https://www.reddit.com/r/swaywm/s/uafu7rzdOD)
* ( ) [...](https://www.reddit.com/r/swaywm/s/f60rY9AMIV) DE experience on Sway
* ( ) [Commits · WillPower3309/swayfx](https://github.com/WillPower3309/swayfx/commits/master/)
* ( ) [NixOS Search - Packages - swayfx](https://search.nixos.org/packages?channel%3D23.11%26show%3Dswayfx%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dswayfx)
* ( ) [Some loose ends for sway on nixos which we should fix - Development - NixOS Discourse](https://discourse.nixos.org/t/some-loose-ends-for-sway-on-nixos-which-we-should-fix/17728/5)
* ( ) [swayfx/flake.nix at master · WillPower3309/swayfx](https://github.com/WillPower3309/swayfx/blob/master/flake.nix)
* ( ) [swaywm/sway: i3-compatible Wayland compositor](https://github.com/swaywm/sway)

### Qtile

* ( ) [elParaguayo/qtile-widget-livefootballscores: Qtile widget to display live football scores](https://github.com/elParaguayo/qtile-widget-livefootballscores)
* ( ) [Qtile_NotWin_Theme](https://github.com/ADVisual161/Qtile_NotWin_Theme)
* ( ) [Qtile](http://www.qtile.org/) - Qtile is a full-featured, hackable tiling window manager written and configured in Python.
* ( ) [dt qtile](https://gitlab.com/dwt1/dotfiles/-/tree/master/.config/qtile) → [video](https://www.youtube.com/watch?v=9NO2DJARbU0)
* ( ) [Qtile Playlist](https://www.youtube.com/playlist?list=PL5--8gKSku15-C4mBKRpQVcaat4zwe4Gu)
* ( ) [Modifying Qtile on Debian Stable - Simple configuration](https://www.youtube.com/watch?v=o1-d90BBKuI)
* ( ) [Qtile Layouts - Manage And Configure Window Layouts](https://www.youtube.com/watch?v=GmJlwVTKTmg)
* ( ) [qtile gnome](https://docs.qtile.org/en/latest/manual/install/gnome.html)
* ( ) [KDE + qtile](https://www.reddit.com/r/unixporn/comments/rhviab/kde_qtile_am_i_doing_tiling_wms_right/)
* ( ) [r/qtile/comments/ynxnvd/how_to_make_sticky_window/](https://www.reddit.com/r/qtile/comments/ynxnvd/how_to_make_sticky_window/)
* ( ) [mail-archive.com/qtile-dev@googlegroups.com/msg00983.html](https://www.mail-archive.com/qtile-dev@googlegroups.com/msg00983.html)
* ( ) [qtile-plasma](https://github.com/numirias/qtile-plasma)
* ( ) [qtile.org/videos/](http://www.qtile.org/videos/)
* ( ) [google.com/search?q=qtile+drop-down+window&oq=qtile+drop-down+window&aqs=chrome..69i57j33i160l2.6008j0j4&sourceid=chrome&ie=UTF-8](https://www.google.com/search?q=qtile+drop-down+window&oq=qtile+drop-down+window&aqs=chrome..69i57j33i160l2.6008j0j4&sourceid=chrome&ie=UTF-8)
* ( ) [Qtile Playlist](https://www.youtube.com/playlist?list=PL8vZ_N0-ziZP1gm2-CBiCBPZNFrlge8Nb)
* ( ) [google.com/search?q=qtile+sticky+window&oq=qtile+sticky+window&aqs=chrome..69i57j69i60.10030j0j9&sourceid=chrome&ie=UTF-8](https://www.google.com/search?q=qtile+sticky+window&oq=qtile+sticky+window&aqs=chrome..69i57j69i60.10030j0j9&sourceid=chrome&ie=UTF-8) * - [dioptricdesign.com/2021/08/20/qtile-chameleon-update/](https://www.dioptricdesign.com/2021/08/20/qtile-chameleon-update/)
* ( ) [Tuff Gniuz qtile Playlist](https://www.youtube.com/playlist?list=PLIHtvvGZ1O3hgLjh-Gt42-XrVmR0a4hEi)
* ( ) [archcraft-qtile](https://github.com/archcraft-os/archcraft-qtile)/tree/main * - [r/qtile/comments/12sdtfp/how_to_make_translucent_kde_konsole/](https://www.reddit.com/r/qtile/comments/12sdtfp/how_to_make_translucent_kde_konsole/)

### Stacking Window Managers

* ( ) [2bwm](https://github.com/venam/2bwm) - A fast floating WM, with the particularity of having 2 borders, written over the XCB library and derived from mcwm.
* ( ) [Blackbox](https://github.com/bbidulock/blackboxwm) - A fast, lightweight window manager for the X Window System, without all those annoying library dependencies.
* ( ) [Fluxbox](http://fluxbox.org/) - A window manager for X that was based on the Blackbox 0.61.1 code.
* ( ) [IceWM](https://ice-wm.org/) - A window manager for the X Window System. The goal of IceWM is speed, simplicity, and not getting in the user’s way.
* ( ) [Openbox](http://openbox.org/) - A highly configurable, next generation window manager with extensive standards support.

## Bar, etc

### Wayland

* ( ) [Waybar](https://github.com/Alexays/Waybar)
* ( ) [yambar](https://codeberg.org/dnkl/yambar)
* ( ) [HybridBar](https://github.com/vars1ty/HybridBar)

### X11 Only

* -> [Configuring Xmonad and Polybar (It's Not THAT Difficult!) - YouTube](https://www.youtube.com/watch?v=cOehuALOQy4)
* (x11) [dwm](https://github.com/PurpleAce88/dwm-bar-in-rust-)
* for i3
  * (x11 ) [i3bar](https://www.reddit.com/r/i3wm/comments/adjhd0/can_i_hide_i3bar_at_all_times_except_when_i/ )
  * (x11 ) [i3status-rust](https://github.com/greshake/i3status-rust)
* (x11 ) [Lemonbar](https://github.com/LemonBoy/bar) - Super fast, lightweight, and mnml status bar for Linux.
* (x11 ) [polybar](https://github.com/polybar/polybar) [polybar site](https://polybar.github.io/) - Fast and easy-to-use status bar.
* (x11 ) [xmobar](https://codeberg.org/xmobar/xmobar) [xmobar](https://codeberg.org/xmobar/xmobar/src/branch/master/doc/quick-start.org) + [Pomobar](https://github.com/rlcintra/pomobar) -> [r/unixporn - [Xmonad / Taffybar] A minimalist & blue RICE!](https://www.reddit.com/r/unixporn/comments/stsstb/xmonad_taffybar_a_minimalist_blue_rice/), [beginners-guide-to-xmonad.readthedocs.io/configure_xmobar.html](https://beginners-guide-to-xmonad.readthedocs.io/configure_xmobar.html)
* (x11 ) [taffybar](https://github.com/taffybar/taffybar) - [r/unixporn - [taffybar/XMonad] Gtk+3 Updates to Taffybar](https://www.reddit.com/r/unixporn/comments/78zwek/taffybarxmonad_gtk3_updates_to_taffybar/) - [taffybarXMonad](https://www.reddit.com/r/unixporn/comments/8l40iu/taffybarxmonad_a_little_bit_too_much_transparency/), [r/unixporn - [XMonad] Dynamic Workspace Naming with Taffybar](https://www.reddit.com/r/unixporn/comments/59y6uf/xmonad_dynamic_workspace_naming_with_taffybar/)
  * (x11 ) [gtk-sni-tray](https://github.com/taffybar/gtk-sni-tray)
* -> investigate polybar vs qtile bar
* (x11 ) [dzen](https://robm.github.io/dzen/)
* (x11 ) [cnx](https://github.com/mjkillough/cnx)
* (x11 ) [trayer](https://github.com/sargon/trayer-srg)
* (x11 ) [stalonetray](https://kolbusa.github.io/stalonetray/)

### Bar Inputs

* ( ) [luastatus](https://github.com/shdown/luastatus)

### Widgets

* ( ) [SwayOSD](https://github.com/ErikReider/SwayOSD)
* ( ) [mixxc](https://github.com/Elvyria/Mixxc) minimalistic volume mixer
* ( ) [waybar-weather](https://github.com/RiScJ/waybar-weather)
* ( ) [playerctl-polybar](https://yarmo.eu/blog/playerctl-polybar/)
* ( ) [wmname](https://tools.suckless.org/x/wmname/)
* ( ) [Reddit - [ wms ] alternating border color as low battery alert](https://www.reddit.com/r/unixporn/comments/1239m15/wms_alternating_border_color_as_low_battery_alert/)

## Desktop Managers + Greeters

* (2) [lightdm](https://github.com/canonical/lightdm) [...](https://github.com/canonical/lightdm?)
   | (2) [lightdm-gtk-greeter](https://github.com/Xubuntu/lightdm-gtk-greeter)
   | (2) [slick-greeter](https://github.com/linuxmint/slick-greeter)
   | (3) [greeter](https://github.com/elementary/greeter)
   | (4) [Web Greeter](https://jezerm.github.io/web-greeter-page/)
   | (4) [lightdm-webengine-greeter](https://github.com/matijaskala/lightdm-webengine-greeter)
   | (4) [nody-greeter](https://github.com/JezerM/nody-greeter) (same look as web-greeter, but faster)
   | (4) [sea-greeter](https://github.com/JezerM/sea-greeter)
   | (6) [lightdm-mini-greeter](https://github.com/prikhi/lightdm-mini-greeter)
   | (6) [lightdm-tiny-greeter](https://github.com/tobiohlala/lightdm-tiny-greeter)
* (2) [greetd](https://git.sr.ht/~kennylevinsen/greetd)
   | (2) [ReGreet](https://github.com/rharish101/ReGreet)
   | (2) [tuigreet](https://github.com/apognu/tuigreet)
   | (3) [cosmic-greeter](https://github.com/pop-os/cosmic-greeter)
   | (3) [greetd + gtkgreet](https://man.sr.ht/~kennylevinsen/greetd/#styling-gtkgreet)
   | (4) [wlgreet](https://git.sr.ht/~kennylevinsen/wlgreet)
   | ( ) [dlm - The Dumb Login Manager, an fbdev greeter for greetd - sourcehut git](https://git.sr.ht/~kennylevinsen/dlm)
   | ( ) [gtkgreet - Gtk greeter for greetd - sourcehut git](https://git.sr.ht/~kennylevinsen/gtkgreet)
   | ( ) [tuigreet: Graphical console greeter for greetd](https://github.com/apognu/tuigreet)
   | ( ) [Greetd - NixOS Wiki](https://nixos.wiki/wiki/Greetd)
   | ( ) [Marcus Britanicus / QtGreet · GitLab](https://gitlab.com/marcusbritanicus/QtGreet)
   -> package: ( ) [Vawlpe/hgreet: Haskell package to interact with the greetd daemon trough it's IPC protocol.](https://github.com/Vawlpe/hgreet) - [hgreet/hgreet-example at main · Vawlpe/hgreet](https://github.com/Vawlpe/hgreet/tree/main/hgreet-example)
* (2) [sddm](https://github.com/sddm/sddm)
   | (2) [SDDM Chili](https://www.opendesktop.org/p/1240784)
   | (2) [where-is-my-sddm-theme](https://github.com/stepanzubkov/where-is-my-sddm-theme)
   | ( ) [sddm/issues/1316](https://github.com/sddm/sddm/issues/1316)
   | ( ) [sddm/issues/1713](https://github.com/sddm/sddm/issues/1713)
   | ( ) [genshin-sddm-theme](https://github.com/nicefaa6waa/genshin-sddm-theme)
* (2) [lemurs](https://github.com/coastalwhite/lemurs)
* ( ) [Entrance](https://enlightenment.org/) - An EFL based display manager, highly experimental.
* ( ) [GDM](https://wiki.gnome.org/Projects/GDM) - The GNOME display manager. [Login Manager Settings](https://realmazharhussain.github.io/gdm-settings/) - A settings app for GNOME’s Login Manager, GDM.
* ( ) [LightDM](http://www.freedesktop.org/wiki/Software/LightDM) - A cross-desktop display manager, can use various front-ends written in any toolkit.
* ( ) [LXDM](http://sourceforge.net/projects/lxdm/) - The LXDE display manager. Can be used independent of the LXDE desktop environment.
* ( ) [MDM](https://github.com/linuxmint/mdm) - The MDM display manager, used in Linux Mint, a fork of GDM 2.
* ( ) [XDM](http://www.x.org/archive/X11R7.5/doc/man/man1/xdm.1.html) - The X display manager with support for XDMCP, and host chooser.

### Display manager - Console

* ( ) [CDM](https://github.com/evertiro/cdm) - A ultra-minimalistic, yet full-featured login manager written in Bash.
* ( ) [Console TDM](https://github.com/dopsi/console-tdm) - An extension for xinit written in pure Bash.
* ( ) [Ly](https://github.com/cylgom/ly) - Ly is a lightweight, TUI (ncurses-like) display manager for Linux.
* ( ) [nodm](https://github.com/spanezz/nodm) - A minimalistic display manager for automatic logins.

### Color Picker

* (2.5) [hyprpicker](https://github.com/hyprwm/hyprpicker)
* (2.5) [pick-color-picker](https://kryogenix.org/code/pick/)

## Logout Menu

* ( ) [wlogout](https://github.com/ArtsyMacaw/wlogout) [wlogout/blob/master/layout](https://github.com/ArtsyMacaw/wlogout/blob/master/layout)
* ( ) [waylogout](https://github.com/loserMcloser/waylogout)
* ( ) [wleave](https://github.com/AMNatty/wleave)

## Lock Screen

* ( ) [slock](https://github.com/BachoSeven/slock)
* ( ) [slock-flexipatch](https://github.com/bakkeby/slock-flexipatch)
* ( ) [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)
* ( ) [display3d](https://github.com/redpenguinyt/display3d) lock screen
* ( ) [Paulo-Murilo-Dev/42screensaver](https://github.com/Paulo-Murilo-Dev/42screensaver)
* ( ) [xsecurelock](https://github.com/google/xsecurelock)

## Launcher, Menu

* ( ) [albert](https://albertlauncher.github.io/) - An awesome keyboard launcher for the Linux desktop.
* ( ) [albert](https://github.com/albertlauncher/albert,) [site](https://albertlauncher.github.io/) - An awesome keyboard launcher for the Linux desktop. [albertlauncher.github.io/https://albertlauncher.github.io/reference/](https://albertlauncher.github.io/https://albertlauncher.github.io/reference/) - ( ) [albert fork](https://github.com/ManuelSchneid3r/albert)
* ( ) [appImageLauncher](https://github.com/TheAssassin/AppImageLauncher) - Helper application for Linux distributions serving as a kind of “entry point” for running and integrating AppImages.
* ( ) [bashrun](http://bashrun.sourceforge.net/)
* ( ) [bashrun2](http://henning-bekel.de/bashrun2/)
* ( ) [bemenu](https://github.com/Cloudef/bemenu)
* ( ) [blisslauncher](https://f-droid.org/packages/foundation.e.blisslauncher/)
* ( ) [catfish](https://docs.xfce.org/apps/catfish/start) - Catfish is a versatile file searching tool.
* ( ) [cerebro](https://cerebroapp.com/) - Open-source productivity booster with a brain / MacOS-Spotlight alternative.
* ( ) [dmenu_run](http://tools.suckless.org/dmenu/)
* ( ) [dmenu-wayland](https://github.com/nyyManni/dmenu-wayland)
* ( ) [dmenu](https://tools.suckless.org/dmenu/) - dmenu is a dynamic menu for X, originally designed for dwm. It manages large numbers of user-defined menu items
* ( ) [dmenu2](https://bitbucket.org/melek/dmenu2)
* ( ) [fsearch](https://github.com/cboxdoerfer/fsearch) A fast file search utility for Unix-like systems based on GTK+3. Wildcard support, RegEx support, Filter support.
* ( ) [fuzzel](https://codeberg.org/dnkl/fuzzel) - rofi for wayland
* ( ) [fzf](https://github.com/junegunn/fzf)
* ( ) [fzy](https://github.com/jhawthorn/fzy)
* ( ) [gauntlet](https://github.com/project-gauntlet/gauntlet) - Application launcher with React-based plugins
* ( ) [gmrun](http://sourceforge.net/projects/gmrun/)
* ( ) [gof](https://github.com/mattn/gof)
* ( ) [gpicker](http://www.nongnu.org/gpicker/)
* ( ) [handlr-regex](https://github.com/Anomalocaridid/handlr-regex)
* ( ) [Heatseeker](https://github.com/rschmitt/heatseeker)
* ( ) [hex](https://github.com/Twins-Divyanshu-Sharma/Hex)
* ( ) [hmenu](https://github.com/sulami/hmenu)
* ( ) [Icepick](https://github.com/felipesere/icepick)
* ( ) [ilia](...)
* ( ) [kando-menu/kando](https://github.com/kando-menu/kando)
* ( ) [kando](https://github.com/kando-menu/kando/blob/main/docs/configuring.md)
* ( ) [kupfer](http://engla.github.io/kupfer/)
* ( ) [kupfer](https://github.com/kupferlauncher/kupfer)
* ( ) [lighthouse](https://github.com/emgram769/lighthouse)
* ( ) [loungy](https://github.com/MatthiasGrandl/Loungy)
* ( ) [mkcron](https://github.com/keshavbhatt/mkcron) - cron editor for desktop
* ( ) [onagre-launcher/onagre](https://github.com/onagre-launcher/onagre)
* ( ) [PathPicker](https://facebook.github.io/PathPicker/)
* ( ) [peco](https://github.com/peco/peco)
* ( ) [percol](https://github.com/mooz/percol)
* ( ) [pick](https://github.com/thoughtbot/pick)
* ( ) [picom - ArchWiki](https://wiki.archlinux.org/title/picom) TODO
* ( ) [pmenu](https://github.com/sgtpep/pmenu) - A dynamic terminal-based menu inspired by dmenu.
* ( ) [ppick](https://github.com/alanbork/ppick)
* ( ) [rglauncher](https://github.com/aeghn/rglauncher)
* ( ) [rofi(1) — Arch manual pages](https://man.archlinux.org/man/community/rofi/rofi.1.en)
* ( ) [rofi](https://davatorium.github.io/rofi/) → [gist.github.com/MilesMcBain/0e6f449c3f8e07ed1b06aa785b0726ff](https://gist.github.com/MilesMcBain/0e6f449c3f8e07ed1b06aa785b0726ff) -> vs dmenu
* ( ) [rofi](https://github.com/adi1090x/rofi)
   | ( ) [rofi](https://github.com/davatorium/rofi) - A window switcher, application launcher and dmenu replacement.
   | ( ) [rofi](https://github.com/DaveDavenport/rofi)
* ( ) [rrun](https://github.com/buster/rrun) (Rust)
* ( ) [Selecta](https://github.com/garybernhardt/selecta)
* ( ) [selector](http://fleuret.org/cgi-bin/gitweb/gitweb.cgi?p=selector)
* ( ) [shellex](https://github.com/Merovius/shellex)
* ( ) [slmenu](https://bitbucket.org/rafaelgg/slmenu)
* ( ) [smenu](https://github.com/p-gen/smenu)
* ( ) [sway-launcher-desktop](https://github.com/Biont/sway-launcher-desktop)
* ( ) [tmenu](https://github.com/dhamidi/tmenu)
* ( ) [tofi](https://github.com/philj56/tofi)
* ( ) [tpick](https://github.com/smblott-github/tpick)
* ( ) [ulauncher](https://ulauncher.io/) - Ulauncher is a fast application launcher for Linux. It’s is written in Python, using GTK+.
* ( ) [vis-menu](http://martanne.github.io/vis/man/vis-menu.1.html)
* ( ) [walker](https://github.com/abenz1267/walker)
* ( ) [wofi](https://sr.ht/~scoopta/wofi/)
* ( ) [xboomx](https://github.com/victorhaggqvist/xboomx)
* ( ) [xlauncher](https://github.com/vatriani/xlauncher)

### Misc / plugins

* ( ) [rofi-calc](https://github.com/svenstaro/rofi-calc)
* ( ) [networkmanager-dmenu](https://github.com/firecat53/networkmanager-dmenu)
* ( ) [...](https://www.reddit.com/r/unixporn/s/DoOlUPlMjw)  rofi plugin for nerdfonts

## Notification

* ( ) [dunst](https://github.com/dunst-project/dunst)
* ( ) [tiramisu](https://github.com/Sweets/tiramisu)
* ( ) [mako](https://github.com/emersion/mako)
* ( ) [linux_notification_center](https://github.com/phuhl/linux_notification_center)
* ( ) [dunst](https://github.com/dunst-project/dunst)
* ( ) [noti](https://github.com/variadico/noti) Monitor a process and trigger a notification.
* ( ) [ntfy](https://github.com/dschep/ntfy) Cross-platform Python utility that enables you to automatically get desktop notifications on demand or when long running commands complete. It can as well send push notifications to your phone once a particular command completes.
* ( ) [undistract-me](https://github.com/jml/undistract-me) - A command line program that plays a sound or sends a notification when a long command has finished running in the command line.
* ( ) [keep](https://github.com/keephq/keep) - Simple alerting tool, with declarative syntax and builtin providers.
* ( ) [catlight](https://catlight.io/) - status notifier for developers. Checks the status of continuous delivery builds and shows desktop notifications.
* ( ) [sysm](https://github.com/jafarlihi/sysm) - Makes your system play custom sounds when any configured system or external event happens.
* ( ) [Welcome to Notifiers documentation! — notifiers 1.3.0 documentation](https://notifiers.readthedocs.io/en/latest/)

## Wallpaper

* ( ) [todowalp](https://github.com/linuxdotexe/todowalp)
* ( ) [caydence](https://github.com/joshcbrown/caydence)
* ( ) [lwp](https://github.com/jszczerbinsky/lwp) - Multi-platform parallax wallpaper engine
* ( ) [pscircle](https://gitlab.com/mildlyparallel/pscircle/blob/master/examples/pscircle.service)
* (5) [Daily Reddit Wallpaper](https://federicotorrielli.github.io/Daily-Reddit-Wallpaper/) - Change your wallpaper to the most upvoted image of the day from /r/wallpapers or any other subreddit on system startup.
* ( ) [smoothpaper](https://github.com/matjam/smoothpaper) Smoothly transitioning wallpaper daemon for X11 Window Managers

### Monitoring Wallpaper

* ( ) [MangoHud](https://github.com/flightlessmango/MangoHud)
* ( ) [victorconky](https://github.com/kushall09/victorconky)

## Miscellaneous

### Hyprland Apps

* ( ) [hyprlock](https://github.com/hyprwm/hyprlock) - Hyprland's GPU-accelerated screen locking utility
* ( ) [hyprwm/hyprland-welcome: Hyprland's welcome app, written in qt.](https://github.com/hyprwm/hyprland-welcome) - Hyprland's welcome app, written in qt
* ( ) [hyprkool](https://github.com/thrombe/hyprkool) - Hyprland plugin to replicate the feel of kde activities and desktop grid layout
* ( ) [hyprspace](https://github.com/KZDKM/Hyprspace) - Workspace overview plugin for Hyprland

### Window Management Tools

* ( ) [~emersion/wlr-randr - An xrandr clone for wlroots compositors - sourcehut git](https://git.sr.ht/~emersion/wlr-randr)

#### X11-Only

* (x11 ) [xbanish](https://github.com/jcs/xbanish)
* (x11 ) [unclutter-xfixes](https://github.com/Airblader/unclutter-xfixes)

### Brightness

* ( ) [dim](https://github.com/marcelohdez/dim)
* ( ) brightnessctl

### Clipboard

* ( ) [wl-clipboard](https://github.com/bugaevc/wl-clipboard)

### Drag and Drop

* (2) [nik012003/ripdrag: Drag and Drop utilty written in Rust and GTK4](https://github.com/nik012003/ripdrag)

### Openers (like xdg-open)

* (2) [handlr](https://github.com/chmln/handlr)
* (5) [mimi](https://github.com/BachoSeven/mimi) $$$
* (5) [open-in-editor](https://github.com/dandavison/open-in-editor)

### Theme Switcher

* ( ) [nChain](https://github.com/Nocxium/nChain) theme switcher

## Comparison

* ( ) [Comparison of extensible window managers | Sawfish | Fandom](https://sawfish.fandom.com/wiki/Comparison_of_extensible_window_managers)
* ( ) [My Tier List For Tiling Window Managers - YouTube](https://www.youtube.com/watch?v=xysISs0mcj8)
* ( ) [Qtile Versus i3 Window Manager](https://www.youtube.com/watch?v=vXFuhNbGgZg)
* compare i3/sway vs qtile
* ( ) [video](https://www.youtube.com/watch?v=pY9HPm1N16Y)
* ( ) [481 - ¿PROBAR UN TILING WINDOW MANAGER?¿REGOLITH, I3 O CUAL?](https://atareao.es/podcast/probar-un-tiling-window-managerregolith-i3-o-cual/)
* ( ) [tecmint.com/best-tiling-window-managers-for-linux/](https://www.tecmint.com/best-tiling-window-managers-for-linux/)
* ( ) [Reddit - Best WM to start with](https://www.reddit.com/r/unixporn/comments/11m9ggz/best_wm_to_start_with/)

## Screenshot

* -> [debian wayland screenshot tool discussion](https://forums.debian.net/viewtopic.php?p%3D794502) CLI screenshot tool
* (4.5) [flameshot](https://flameshot.org/) - Powerful yet simple to use screenshot software.
* ( ) [grimblast](https://github.com/hyprwm/contrib/tree/main/grimblast)
* ( ) [shutter on wayland](https://www.omgubuntu.co.uk/2024/01/shutter-on-wayland)
* ( ) [flameshot](https://flameshot.org/)
* ( ) [grimcap](https://ithub.com/wick3dr0se/grimcap)
* (2.5) [watershot](https://github.com/Kirottu/watershot) - A simple wayland native screenshot tool
* ( ) [pyscreenshot 3.1 on PyPI - Libraries.io](https://libraries.io/pypi/pyscreenshot)
* ( ) [screenshot-to-code](https://github.com/abi/screenshot-to-code)
* ( ) [sss](https://github.com/SergioRibera/sss) - SSS (Super ScreenShot) is a WIP: CLI/Lib to take amazing screenshot of code or screen
* ( ) [swappy](https://github.com/jtheoof/swappy)
* (2.5) [grim](https://sr.ht/~emersion/grim/)

### Screenshot Annotation

* ( ) [satty](https://github.com/gabm/Satty) - Satty - Modern Screenshot Annotation. A tool inspired by Swappy and Flameshot.
* ( ) [swappy](https://github.com/jtheoof/swappy) - A Wayland native snapshot editing tool, inspired by Snappy on macOS

## Old, X11 etc

### X11 Compositor

* Picom
  | ( ) [picom](https://github.com/dccsillag/picom) fork
  | ( ) [picom](https://github.com/jonaburg/picom)
  | ( ) [picom](https://github.com/yshui/picom) -> [picom](https://github.com/yshui/picom/blob/next/picom.sample.conf)
  | ( ) [picom](https://github.com/xealea/picom)
  | ( ) [picom-shaders](https://github.com/ikz87/picom-shaders)
* ( ) [compton](https://github.com/yshui/compton) - Compton is a standalone composite manager, suitable for use with window managers that do not natively provide compositing functionality.
* ( ) [xcompmgr](https://cgit.freedesktop.org/xorg/app/xcompmgr) - Xcompmgr is a simple composite manager capable of rendering drop shadows and, with the use of the transset utility, primitive window transparency.
* ( )[picom-shaders](https://github.com/ikz87/picom-shaders/wiki/Shader-gallery)
* ( ) [glassit-linux](https://github.com/Fmstrat/glassit-linux) - not needed due to picom*

## X11 WM Tools

* ( ) [xborder](https://github.com/deter0/xborder)

## X11 WMs

* ( ) [arch wiki](https://wiki.archlinux.org/title/i3)
* ( ) [awesome blog post](https://scaron.info/blog/awesome-with-gnome-on-ubuntu.html)
* ( ) [awesome site](https://awesomewm.org/)
* ( ) [awesome](https://awesomewm.org/) - A highly configurable, next generation framework window manager for X.
* ( ) [awesomewm with dots](https://www.reddit.com/r/unixporn/comments/12tvw7f/awesome_finally_i_got_what_i_want)
* ( ) [bedwm](https://github.com/chadcat7/bedwm)
* ( ) [blueicewm](https://github.com/ottop/blueicewm)
* ( ) [bspwm discussion](https://www.reddit.com/r/unixporn/comments/130h37f/bspwm_how_is_it/)
* ( ) [bspwm](https://github.com/baskerville/bspwm)
* ( ) [codeberg.org/Oglo12/personal-i3-config/](https://codeberg.org/Oglo12/personal-i3-config/) * - [r/i3wm/](https://www.reddit.com/r/i3wm/)
* ( ) [DkWM](https://bitbucket.org/natemaia/dk)
* ( ) [dkwm](https://bitbucket.org/natemaia/dk/src/master/)
* ( ) [dwm patches](https://dwm.suckless.org/patches/)
* ( ) [dwm-flexipatch](https://github.com/bakkeby/dwm-flexipatch)
* ( ) [dwm](https://dwm.suckless.org/) - A dynamic window manager for X. It manages windows in tiled, monocle and floating layouts.
* ( ) [dwm](https://www.reddit.com/r/unixporn/comments/123ld44/dwm_tugend_oder_ruhm/) - look for source of passage
* ( ) [Herbstluftwm](https://herbstluftwm.org/) - Is a Manual tiling window manager for X11 using Xlib and Glib.
* ( ) [herbstluftwm Combine The Best of Bspwm and XMonad, You Get Herbstluftwm! - YouTube](https://www.youtube.com/watch?v=eEmOy3qzrcg)
* ( ) [herbstluftwm/herbstluftwm: A manual tiling window manager for X11](https://github.com/herbstluftwm/herbstluftwm)
* ( ) [Hypr](https://github.com/hyprwm/Hypr)
* ( ) [i3 Episode → HPR -> see show notes!](https://hackerpublicradio.org/eps.php?id=3735)
* ( ) [i3 mouseless](https://thevaluable.dev/i3-config-mouseless/)
* ( ) [i3 vs qtile](https://www.reddit.com/r/unixporn/comments/enshqt/i3_or_qtile/)
* ( ) [i3 Windows Manager with XFCE using MX Linux distribution](https://www.youtube.com/watch?v=MMRVG9jk_M0&t=128s)**
* ( ) [i3 WM](https://i3wm.org/) - A better tiling and dynamic window manager. It’s completely written from scratch. The target platforms are GNU/Linux and BSD operating systems. [i3wm.org/docs/userguide.html](https://i3wm.org/docs/userguide.html)  [i3wm.org/docs/](https://i3wm.org/docs/) [i3wm](https://i3wm.org/docs/) [dev.to/t/i3wm](https://dev.to/t/i3wm) [i3wm.org/docs/layout-saving.html](https://i3wm.org/docs/layout-saving.html) [itsfoss.com/i3-customization/](https://itsfoss.com/i3-customization/)
* ( ) [i3-alternating](https://github.com/nowakf/i3-alternating)
* ( ) [i3-autolayout](https://github.com/BiagioFesta/i3-autolayout)
* ( ) [i3-gaps](https://github.com/Airblader/i3) - i3-gaps is i3 with more features.
* ( ) [i3-layout-manager](https://github.com/klaxalk/i3-layout-manager)
* ( ) [i3: i3 User’s Guide](https://i3wm.org/docs/userguide.html%23_default_keybindings)
* ( ) [i3](https://opensource.com/article/18/8/getting-started-i3-window-manager)
* ( ) [i3](https://vincent.bernat.ch/en/blog/2021-i3-window-manager)
* ( ) [i3wm playlist](https://www.youtube.com/playlist?list=PL5ze0DjYv5DbCv9vNEzFmP6sU7ZmkGzcf) (Alex Booker)
* ( ) [leftwm](http://leftwm.org/)
* ( ) [leftwm](https://github.com/leftwm/leftwm)
* ( ) [leftwm](https://github.com/leftwm/leftwm)
* ( ) [marswm](https://github.com/jzbor/marswm)
* ( ) [marswm](https://www.reddit.com/r/unixporn/comments/13cp71s/marswm_rusty_buisiness/)
* ( ) [moonwm](https://github.com/jzbor/moonwm)
* ( ) [pypi.org/project/xpywm/](https://pypi.org/project/xpywm/)
* ( ) [Qtile on Ubuntu](https://www.youtube.com/watch?v=Y1busy_dDRQ)
* ( ) [r/linux/comments/rpzur6/i3_is_the_best_window_manager/](https://www.reddit.com/r/linux/comments/rpzur6/i3_is_the_best_window_manager/)
* ( ) [ragnar](https://github.com/cococry/ragnar) X twm
* ( ) [ragnarwm](https://www.ragnarwm.org/)
* ( ) [sowm](https://github.com/dylanaraps/sowm)
* ( ) [spectrwm](https://github.com/conformal/spectrwm) - A small dynamic tiling window manager for X11, largely inspired by xmonad and dwm.
* ( ) [stumpwm](https://github.com/stumpwm/stumpwm) [stumpwm.github.io/](http://stumpwm.github.io/) (X11, CL)
* ( ) [stumpwm](https://stumpwm.github.io/)
* ( ) [ulubis](https://github.com/malcolmstill/ulubis)
* ( ) [wiki](https://github.com/baskerville/bspwm/wiki) - Bspwm is a tiling window manager that represents windows as the leaves of a full binary tree. [wiki.archlinux.org/title/bspwm](https://wiki.archlinux.org/title/bspwm)
* ( ) [worm](https://github.com/codic12/worm) - A dynamic, tag-based window manager written in Nim.
* ( ) [xmonad config](https://github.com/NeshHari/XMonad) [xmonad.org/gnome.html](https://xmonad.org/gnome.html)
* ( ) [xmonad Configuration Tutorial | xmonad - the tiling window manager that rocks](https://xmonad.org/TUTORIAL.html)
* ( ) [xmonad demo](https://www.youtube.com/watch?v=5oBT0a25FyA) [XMonad Demo - YouTube](https://www.youtube.com/watch?v=70IxjLEmomg)
* ( ) [xmonad guide](https://beginners-guide-to-xmonad.readthedocs.io/index.html)
* ( ) [xmonad install](https://xmonad.org/INSTALL.html)
* ( ) [xmonad thread hn](https://news.ycombinator.com/item?id=28794901)
* ( ) [xmonad](https://xmonad.org/) - A dynamically tiling X11 window manager that is written and configured in Haskell.
* ( ) [xmonad](https://xmonad.org/documentation.html) → remove dock and remove bar, also remove [window bars](https://stackoverflow.com/questions/71204126/how-to-remove-the-title-bar-of-gnome-applications)?
* ( ) [xtermwm](https://xtermwm.sourceforge.io/)

## Internals, Low-Level

### Wayland Libraries

* ( ) [smithay](https://github.com/Smithay/smithay)
* ( ) [wlroots](https://gitlab.freedesktop.org/wlroots/wlroots/)
* weston*
* ( ) [wayflan: From-scratch Wayland client for Common Lisp](https://sr.ht/~shunter/wayflan/)

### Graphics and System Libraries

* ( ) [nixGL](https://github.com/cfhammill/nixGL)
* ( ) [dbus](https://www.freedesktop.org/wiki/Software/dbus/)
* ( ) [ibus](https://github.com/ibus/ibus)
* ( ) [learnopengl](https://learnopengl.com/)

### Wayland, X11, WM Information

* -> guake for wayland?
* ( ) [wayland.app/protocols/](https://wayland.app/protocols/)
* ( ) [wayland.freedesktop.org/docs/html/](https://wayland.freedesktop.org/docs/html/)
* ( ) [cbtnuggets.com/blog/technology/networking/why-use-wayland-versus-x11](https://www.cbtnuggets.com/blog/technology/networking/why-use-wayland-versus-x11)
* ( ) [Thesis](https://www.cs.ru.nl/bachelors-theses/2019/Max_van_Deurzen___4581903___The_anatomy_of_the_modern_window_manager_-_a_case_study_for_X_in_an_Agile_manner.pdf)
* Wayland vs X*
* ( ) [bbs.archlinux.org/viewtopic.php?id=238376](https://bbs.archlinux.org/viewtopic.php?id=238376)
* ( ) [Wayland vs X11](https://youtu.be/nPz5TAGYgzA)
* ( ) [en.wikipedia.org/wiki/Wayland_(protocol)](https://en.wikipedia.org/wiki/Wayland_(protocol)) vs X11?*
  * Wayland Apps
* ( ) [wtype](https://github.com/atx/wtype)
* ( ) [ydotool](https://github.com/ReimuNotMoe/ydotool)
* ( ) [LeftWM - A Fast and Simple Xmonad Alternative - YouTube](https://www.youtube.com/watch?v=jvfk380Pses)
* ( ) [askubuntu.com/questions/956640/equivalent-to-xdotool-for-wayland#977801*](https://askubuntu.com/questions/956640/equivalent-to-xdotool-for-wayland#977801*)
* ( ) [unix.stackexchange.com/questions/309580/does-wayland-use-xkb-for-keyboard-layouts](https://unix.stackexchange.com/questions/309580/does-wayland-use-xkb-for-keyboard-layouts)
* ( ) [I wonder what will happen to XMonad as the Wayland future actually seems to be a... | Hacker News](https://news.ycombinator.com/item?id=28794901)
* ( ) [swhkd](https://github.com/waycrate/swhkd)
* ( ) [A Comprehensive Guide To Tiling Window Managers](https://www.youtube.com/watch?v=Obzf9ppODJU&t=717s) 
* ( ) [xwinman.org/](http://www.xwinman.org/)
* ( ) X Protocol Reference Manual for X11, Release 6 (Definitive Guide to X Window System, Vol. 0) (Definitive Guides to the X Window System)
* ( ) [The anatomy of the modern window manager](http://library.lol/main/C392F948ADD053F40ABE01AACE37ED57)
* ( ) [eirenicon.org/implementing-linux-window-managers-tutorial/](https://eirenicon.org/implementing-linux-window-managers-tutorial/)
* ( ) [xwinman.org/others.php](http://www.xwinman.org/others.php)
* ( ) [userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma)
* → Xorg vs Wayland vs Arcan
* How to set up dropdown windows with a tiling window manager?
* ( ) [A Look Inside Mutter / GNOME Shell](https://lpc.events/event/7/contributions/834/attachments/684/1263/A_Look_Inside_Mutter.pdf)
* ( ) [x.org/releases/X11R7.5/doc/man/man1/xprop.1.html](https://www.x.org/releases/X11R7.5/doc/man/man1/xprop.1.html)
* ( ) [wiki.archlinux.org/title/Xorg#Composite](https://wiki.archlinux.org/title/Xorg#Composite)
* ( ) [How to build a window manager in Python](https://monroeclinton.com/build-your-own-window-manager/)
* ( ) [xorg documentation](https://www.x.org/wiki/Documentation/)
* ( ) [wiki.archlinux.org/title/Window_manager](https://wiki.archlinux.org/title/Window_manager)
* ( ) [Why I Use Tiling Window Managers - And Why You Should Too - YouTube](https://www.youtube.com/watch?v=K_W0ia2QjU8)
* ( ) [wayland](https://wayland.freedesktop.org/)
* ( ) [wayland protocols](https://wayland.app/protocols/)
