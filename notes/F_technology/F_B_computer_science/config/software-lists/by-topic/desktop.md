# WMs, Compositors, Bars, Menus, Launchers, Notifications, Widgets, Lockscreen, etc

## SORT

* (1) [hyprland](https://github.com/hyprwm/Hyprland) - nvidia info [here](https://wiki.hyprland.org/Nvidia/)
   | (2) [sway](https://github.com/swaywm/sway) - nvidia info [here](https://github.com/swaywm/sway/wiki)
   | (2.5) [riverwm](...)
* (2) [swww](...)
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
* rofi-wayland, wofi, bemenu, fuzzel, tofi
* Display Manager, Login, Lockscreen, Boot, etc.
* How to place one window on top of another, like floating but always keeping smaller one on top? → PiP functionality with a tiling WM?
* -> scrollable window manager
* → make settings in NixOS for each and make choice of which one to use dependent on a single keyword in the main config file
* note *  grid: window positions and sizes based on a regular NxM grid. May be automatic (like wmfs, monsterwm) or manual (like Subtle).

## Desktop Shell

### ags

* (2) [ags](https://github.com/Aylur/ags)
      + (4) [ags-sootspirits](https://github.com/flick0/ags-sootspirits)

### eww

* (2.5) [elkowar/eww: ElKowars wacky widgets](https://github.com/elkowar/eww) [Eww - Widgets for everyone! - eww documentation](https://elkowar.github.io/eww/eww.html)
* (2.5) [fabric](https://github.com/Fabric-Development/fabric)[fabric](https://github.com/Fabric-Development/fabric)
* (2.5) [nwg-shell](https://nwg-piotr.github.io/nwg-shell/)
* (2.5) [way-shell](https://github.com/ldelossa/way-shell)
* (2.5) [hyprpanel](https://github.com/pdf/hyprpanel)

## Desktop Environment

* (2) [pop-os/cosmic-epoch: Next generation Cosmic desktop environment](https://github.com/pop-os/cosmic-epoch)
      + (2) [Pop!OS Shell](https://github.com/pop-os/shell) - Pop Shell is a keyboard-driven auto-tiling window manager that run on top of the GNOME shell.
* (6)  [Budgie](https://blog.buddiesofbudgie.org/) - Budgie is a desktop environment designed with the modern user in mind, it focuses on simplicity and elegance.
* (6)  [Cinnamon](https://linuxmint.com/) - Cinnamon strives to provide a traditional user experience. Cinnamon is a fork of GNOME 3.
* (6)  [Deepin DE](https://www.deepin.org/en/dde/) - DDE (Deepin Desktop Environment) is the default desktop environment originally created for the Linux Deepin distribution.
* (6)  [Enlightenment](https://www.enlightenment.org/about) - A lightweight and pretty desktop environment that is designed to run fast and look good, while retaining a large degree of customization.
* (6)  [LXDE](https://lxde.org/) - The Lightweight X11 Desktop Environment is a fast and energy-saving desktop environment.
* (6)  [LXQt](https://lxqt-project.org/) - LXQt is the Qt port and the upcoming version of LXDE, the Lightweight Desktop Environment.
* (6)  [Mate](https://mate-desktop.com/) - Mate provides an intuitive and attractive desktop to Linux users using traditional metaphors. MATE is a fork of GNOME 2.
* (6)  [Pantheon](https://elementary.io/) - Pantheon is the default desktop environment originally created for the elementary OS distribution.
* (6)  [UKUI](https://www.ukui.org/) - UKUI is a desktop environment for Linux distributions and other UNIX-like operating systems, originally developed for Ubuntu Kylin, and written using the Qt framework.
* (6)  [Unity](https://unity8.io/) - Unity is a shell for GNOME designed by Canonical for Ubuntu.
* (6)  [Xfce](https://www.xfce.org/) - [how_to_customize_xfce4panel/](https://www.reddit.com/r/unixporn/comments/12zboi0/xfce_decided_to_learn_how_to_customize_xfce4panel/)
* (6)  [GNOME](https://www.gnome.org/) - The GNOME desktop environment is an attractive and intuitive desktop with both a modern (GNOME) and a classic (GNOME Classic) session.
  * (6)  [GNOME Extensions](https://extensions.gnome.org/) - Extensions for the GNOME Desktop Environment.
  * (6)  [omglinux.com/space-bar-gnome-extension/](https://www.omglinux.com/space-bar-gnome-extension/)
  * (6)  [GNOME Look](https://www.gnome-look.org/) - A website that hosts a Large amounts of community created icons, shell themes, fonts, and many more assets that can be used to customize your GNOME desktop environment.
  * (6)  [Gradience](https://gradienceteam.github.io/) - Gradience is a tool for customizing Libadwaita applications and the adw-gtk3 theme.
  * (6)  [Extension Manager](https://github.com/mjakeman/extension-manager) - A utility for browsing and installing GNOME Shell Extensions.
  * (6)  [GNOME Flashback](https://wiki.gnome.org/Projects/GnomeFlashback) - a shell for GNOME 3 which was initially called GNOME fallback mode. The desktop layout and the underlying technology is similar to GNOME 2
* (6)  [KDE Plasma](https://www.kde.org/plasma-desktop) - offers all the tools required for a modern desktop computing experience so you can be productive right from the start.
  * (6)  [KDE Plasma DT](https://youtu.be/S6Zf16gYzIY)
  * (6)  [docs.kde.org/*](https://docs.kde.org/)
  * (6)  [invent.kde.org/plasma](https://invent.kde.org/plasma) [en.wikipedia.org/wiki/KDE_Plasma_5](https://en.wikipedia.org/wiki/KDE_Plasma_5)
  * (6)  [userbase.kde.org/Tutorials*](https://userbase.kde.org/Tutorials) [userbase.kde.org/Welcome_to_KDE_UserBase](https://userbase.kde.org/Welcome_to_KDE_UserBase)
  * (6)  [userbase.kde.org/Websites*](https://userbase.kde.org/Websites) [docs.kde.org/](https://docs.kde.org/)
  * (6)  [docs.kde.org/stable5/en/plasma-desktop/plasma-desktop/index.html](https://docs.kde.org/stable5/en/plasma-desktop/plasma-desktop/index.html)
  * (6)  [[ KDE + Bismuth ] Am I doing it right? : r/unixporn - Reddit](https://www.reddit.com/r/unixporn/comments/vz6oyi/kde_bismuth_am_i_doing_it_right/)
  * (6)  [[KDE] Plasma with Bismuth tiling extension is just perfect. The ...](https://www.reddit.com/r/unixporn/comments/q55e8f/kde_plasma_with_bismuth_tiling_extension_is_just/)
  * (6)  [[KDE + Bismuth] Tartarus : r/unixporn - Reddit](https://www.reddit.com/r/unixporn/comments/x001ij/kde_bismuth_tartarus/)
  * (6)  [Bismuth](https://bismuth-forge.github.io/bismuth/) - Making tiling window management easy. On KDE Plasma.
  * (6)  [Kröhnkite](https://github.com/esjeon/krohnkite) - A dynamic tiling extension for KWin.
  * (6)  [userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma)
* (3) [desq](https://gitlab.com/DesQ)
* (3) Arcan + suite
  * (R) [arcan-fe.com/](https://arcan-fe.com/)
  * (3) [letoram](https://github.com/letoram)
  * (3) [letoram/cat9](https://github.com/letoram/cat9)
  * (3) [letoram/durden](https://github.com/letoram/durden)
  * (3) [arcan](https://github.com/letoram/arcan)
  * (R) [durden.arcan-fe.com/](http://durden.arcan-fe.com/)
  * (R) Arcan on Nix 2020: [gist.github.com/egasimus/0254dcd67f95f262aa6e133794738392](https://gist.github.com/egasimus/0254dcd67f95f262aa6e133794738392)
  * (5) [egasimus/arcan-nix](https://github.com/egasimus/arcan-nix)
  * (2) [gTile](https://github.com/gTile/gTile)

### Desktop Environment Ricing and Mixing

* (R) [r/gnome/comments/tptfg6/theme_kde_apps_on_gnome/](https://www.reddit.com/r/gnome/comments/tptfg6/theme_kde_apps_on_gnome/)
* WMs on Xubuntu and Lubuntu? → Lubuntu integrates well with KDE apps
* (R) [askubuntu.com/questions/24780/how-to-make-kde-applications-look-native-in-gnome](https://askubuntu.com/questions/24780/how-to-make-kde-applications-look-native-in-gnome)
* (R) [debugpoint.com/customize-gnome-clean-look-2022-1/](https://www.debugpoint.com/customize-gnome-clean-look-2022-1/)
* search: gnome theme for kde apps
* (R) [r/kde/comments/11mghkl/guide_theme_dolphin_qt_apps_on_gnome/](https://www.reddit.com/r/kde/comments/11mghkl/guide_theme_dolphin_qt_apps_on_gnome/)

## WM/Compositor

* (5) [stratawm](https://github.com/StrataWM/strata) $$$
* (5) [pinnaclewm](https://github.com/pinnacle-comp/pinnacle) $$$
* (5) [magmawm](https://github.com/MagmaWM/MagmaWM)
* (->) [awesome-hyprland#plugins](https://github.com/hyprland-community/awesome-hyprland#plugins)
* (2) [cage-kiosk/cage: A Wayland kiosk](https://github.com/cage-kiosk/cage)
* (5) [dwl-guile](https://github.com/engstrand-config/dwl-guile) + [dwl-guile home service](https://github.com/engstrand-config/home-service-dwl-guile)
* (2.5) [dwl](https://github.com/denisdubochevalier/dwl)
   |  (2.5) [dwl](https://github.com/djpohly/dwl)
* (2) [ezmonad](https://github.com/QuillFlash/ezmonad)
* (6) [gamescope](https://github.com/Plagman/gamescope) - Gamescope is a micro-compositor that provides a sandboxed Xwayland desktop with independent input, resolution, and refresh rate.
* (5) [way-cooler](https://github.com/OmegaRogue/way-cooler)
* (2) [home-service-dwl-guile](https://github.com/engstrand-config/home-service-dwl-guile)
* (2.5) [hy3](https://github.com/outfoxxed/hy3)
* (1) [Hyprland](https://hyprland.org/) - [awesome-hyprland](https://github.com/hyprland-community/awesome-hyprland) Hyprland is a dynamic tiling Wayland compositor that doesn’t sacrifice on its looks. [So you want to learn hyprland? LONG VERSION... install and m0re.](https://www.youtube.com/watch?v=iE99GrcZzhs) -> [Never knew Hyprland had different animations than the default!](https://www.youtube.com/watch?v=UOniMj7bkh4) [Monitors | Hyprland Wiki](https://wiki.hyprland.org/Configuring/Monitors/)
* (2.5) [kiwmi (fork)](https://github.com/kuruczgy/kiwmi)
* (2.5) [kiwmi](https://github.com/buffet/kiwmi)
* (2) [mahogany](https://github.com/stumpwm/mahogany) (Wayland, CL)
* (5) [monroeclinton/mwm: My Window Manager](https://github.com/monroeclinton/mwm)
* (5) [newm-atha](https://sr.ht/~atha/newm-atha/)
      + (5) [pywm-atha](https://git.sr.ht/~atha/pywm-atha)
* (5) [newm: Wayland compositor](https://github.com/jbuchermn/newm) [newM](https://github.com/jbuchermn/newm)
* (2) [niri: A scrollable-tiling Wayland compositor.](https://github.com/YaLTeR/niri) $$$
* (5) [noway](https://github.com/mora-unie-youer/noway)
* (2) [river](https://github.com/riverwm/river) | (2) [river-luatile](https://github.com/MaxVerevkin/river-luatile) | (2) [kile](https://gitlab.com/snakedye/kile) - layout generator for RiverWM
      + (2.5) [algae](https://github.com/amirography/algae) RiverWM config in Rust
      + (2.5) [algae](https://github.com/prmadev/algae) - river in rust
* (2) [simplewc](https://www.reddit.com/r/unixporn/s/7BK4nY4pV3) [github](https://github.com/kcirick/simplewc)
* (->) [sway useful add-ons](https://github.com/swaywm/sway/wiki/Useful-add-ons-for-sway)
* (2) [sway](https://swaywm.org/) - Sway is tiling Wayland compositor and a drop-in replacement for the i3 window manager for X11. [i3 to Sway :: The Curator](https://julioln.com/posts/from-i3-to-sway/)
* (2) [swayfx: SwayFX: Sway, but with eye candy!](https://github.com/WillPower3309/swayfx)
* (2) [swaywm](https://swaywm.org/) [swayWM First Impressions - Is it Good? - YouTube](https://www.youtube.com/watch?v=FmEaMntQDzM)
      + (2) [papersway](https://spwhitton.name/tech/code/papersway/)
* (5) [taiwins](https://github.com/taiwins/taiwins)
* (5) [vivarium](https://github.com/inclement/vivarium) -> good illustrations
* (5) [way-cooler](http://way-cooler.org/)
* (2) [wayfire](https://github.com/WayfireWM/wayfire) [wayfire](https://wayfire.org/) - Wayfire is a wayland compositor based on wlroots. It aims to create a customizable, extendable and lightweight environment without sacrificing its appearance.
* (5) [waymonad](https://github.com/waymonad/waymonad)
   | (5) [waymonader](https://github.com/ardek66/waymonader)
* (5) [wmoon](https://github.com/Natchuz/wmoon)
* (2) [qtile](http://www.qtile.org/) - Qtile is a full-featured, hackable tiling window manager written and configured in Python. + (2) [elParaguayo/qtile-widget-livefootballscores: Qtile widget to display live football scores](https://github.com/elParaguayo/qtile-widget-livefootballscores)

### Stacking Window Managers

* (6)  [2bwm](https://github.com/venam/2bwm) - A fast floating WM, with the particularity of having 2 borders, written over the XCB library and derived from mcwm.
* (6)  [Blackbox](https://github.com/bbidulock/blackboxwm) - A fast, lightweight window manager for the X Window System, without all those annoying library dependencies.
* (6)  [Fluxbox](http://fluxbox.org/) - A window manager for X that was based on the Blackbox 0.61.1 code.
* (6)  [IceWM](https://ice-wm.org/) - A window manager for the X Window System. The goal of IceWM is speed, simplicity, and not getting in the user’s way.
* (6)  [Openbox](http://openbox.org/) - A highly configurable, next generation window manager with extensive standards support.

## Bar, etc

### Wayland

* (1) [Waybar](https://github.com/Alexays/Waybar)
   | (2.5) [yambar](https://codeberg.org/dnkl/yambar)
   | (2.5) [HybridBar](https://github.com/vars1ty/HybridBar)
* (2.5) [somebar](https://git.sr.ht/~raphi/somebar) for dwl

### X11 Only

* -> [Configuring Xmonad and Polybar (It's Not THAT Difficult!) - YouTube](https://www.youtube.com/watch?v=cOehuALOQy4)
* (x11) [dwm](https://github.com/PurpleAce88/dwm-bar-in-rust-)
* for i3
  * (6) [i3bar](https://www.reddit.com/r/i3wm/comments/adjhd0/can_i_hide_i3bar_at_all_times_except_when_i/ )
  * (6) [i3status-rust](https://github.com/greshake/i3status-rust)
* (6) [Lemonbar](https://github.com/LemonBoy/bar) - Super fast, lightweight, and mnml status bar for Linux.
* (6) [polybar](https://github.com/polybar/polybar) [polybar site](https://polybar.github.io/) - Fast and easy-to-use status bar.
* (6) [xmobar](https://codeberg.org/xmobar/xmobar) [xmobar](https://codeberg.org/xmobar/xmobar/src/branch/master/doc/quick-start.org) + [Pomobar](https://github.com/rlcintra/pomobar) -> [r/unixporn - [Xmonad / Taffybar] A minimalist & blue RICE!](https://www.reddit.com/r/unixporn/comments/stsstb/xmonad_taffybar_a_minimalist_blue_rice/), [beginners-guide-to-xmonad.readthedocs.io/configure_xmobar.html](https://beginners-guide-to-xmonad.readthedocs.io/configure_xmobar.html)
* (6) [taffybar](https://github.com/taffybar/taffybar) - [r/unixporn - [taffybar/XMonad] Gtk+3 Updates to Taffybar](https://www.reddit.com/r/unixporn/comments/78zwek/taffybarxmonad_gtk3_updates_to_taffybar/) - [taffybarXMonad](https://www.reddit.com/r/unixporn/comments/8l40iu/taffybarxmonad_a_little_bit_too_much_transparency/), [r/unixporn - [XMonad] Dynamic Workspace Naming with Taffybar](https://www.reddit.com/r/unixporn/comments/59y6uf/xmonad_dynamic_workspace_naming_with_taffybar/)
  * (6) [gtk-sni-tray](https://github.com/taffybar/gtk-sni-tray)
* -> investigate polybar vs qtile bar
* (6) [dzen](https://robm.github.io/dzen/)
* (6) [cnx](https://github.com/mjkillough/cnx)
* (6) [trayer](https://github.com/sargon/trayer-srg)
* (6) [stalonetray](https://kolbusa.github.io/stalonetray/)

### Bar Inputs

* (2.5) [luastatus](https://github.com/shdown/luastatus)

### Widgets

* (2.5) [SwayOSD](https://github.com/ErikReider/SwayOSD)
* (2.5) [mixxc](https://github.com/Elvyria/Mixxc) minimalistic volume mixer
* (2) [waybar-weather](https://github.com/RiScJ/waybar-weather)
* (5) [playerctl-polybar](https://yarmo.eu/blog/playerctl-polybar/)
* (2) [wmname](https://tools.suckless.org/x/wmname/)
* (2) [Reddit - [ wms ] alternating border color as low battery alert](https://www.reddit.com/r/unixporn/comments/1239m15/wms_alternating_border_color_as_low_battery_alert/)

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
   | (2.5) [dlm - The Dumb Login Manager, an fbdev greeter for greetd - sourcehut git](https://git.sr.ht/~kennylevinsen/dlm)
   | (2.5) [gtkgreet - Gtk greeter for greetd - sourcehut git](https://git.sr.ht/~kennylevinsen/gtkgreet)
   | (2) [tuigreet: Graphical console greeter for greetd](https://github.com/apognu/tuigreet)
   | (R) [Greetd - NixOS Wiki](https://nixos.wiki/wiki/Greetd)
   | (2) [Marcus Britanicus / QtGreet · GitLab](https://gitlab.com/marcusbritanicus/QtGreet)
   | (2) [Vawlpe/hgreet: Haskell package to interact with the greetd daemon trough it's IPC protocol.](https://github.com/Vawlpe/hgreet) - [hgreet/hgreet-example at main · Vawlpe/hgreet](https://github.com/Vawlpe/hgreet/tree/main/hgreet-example) -> update
* (2) [sddm](https://github.com/sddm/sddm)
   | (2) [SDDM Chili](https://www.opendesktop.org/p/1240784)
   | (2) [where-is-my-sddm-theme](https://github.com/stepanzubkov/where-is-my-sddm-theme)
   | (R) [sddm/issues/1316](https://github.com/sddm/sddm/issues/1316)
   | (R) [sddm/issues/1713](https://github.com/sddm/sddm/issues/1713)
   | (R) [genshin-sddm-theme](https://github.com/nicefaa6waa/genshin-sddm-theme)
* (2) [lemurs](https://github.com/coastalwhite/lemurs)
* (6) [Entrance](https://enlightenment.org/) - An EFL based display manager, highly experimental.
* (6) [GDM](https://wiki.gnome.org/Projects/GDM) - The GNOME display manager. [Login Manager Settings](https://realmazharhussain.github.io/gdm-settings/) - A settings app for GNOME’s Login Manager, GDM.
* (6) [LightDM](http://www.freedesktop.org/wiki/Software/LightDM) - A cross-desktop display manager, can use various front-ends written in any toolkit.
* (6) [LXDM](http://sourceforge.net/projects/lxdm/) - The LXDE display manager. Can be used independent of the LXDE desktop environment.
* (6) [MDM](https://github.com/linuxmint/mdm) - The MDM display manager, used in Linux Mint, a fork of GDM 2.
* (6) [XDM](http://www.x.org/archive/X11R7.5/doc/man/man1/xdm.1.html) - The X display manager with support for XDMCP, and host chooser.

### Display manager - Console

* (5) [CDM](https://github.com/evertiro/cdm) - A ultra-minimalistic, yet full-featured login manager written in Bash.
* (6) [Console TDM](https://github.com/dopsi/console-tdm) - An extension for xinit written in pure Bash.
* (2) [Ly](https://github.com/cylgom/ly) - Ly is a lightweight, TUI (ncurses-like) display manager for Linux.
* (6) [nodm](https://github.com/spanezz/nodm) - A minimalistic display manager for automatic logins.

### Color Picker

* (2.5) [hyprpicker](https://github.com/hyprwm/hyprpicker)
* (2.5) [pick-color-picker](https://kryogenix.org/code/pick/)

## Logout Menu

* (1) [wlogout](https://github.com/ArtsyMacaw/wlogout) [wlogout/blob/master/layout](https://github.com/ArtsyMacaw/wlogout/blob/master/layout)
* (2.5) [wleave](https://github.com/AMNatty/wleave)
* (2.5) [waylogout](https://github.com/loserMcloser/waylogout)

## Lock Screen

* (2) [gtklock](https://github.com/jovanlanik/gtklock)
* (2) [waylock](https://github.com/ifreund/waylock)
* (6) [slock](https://github.com/BachoSeven/slock)
* (6) [slock-flexipatch](https://github.com/bakkeby/slock-flexipatch)
* (5) [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen) - needs porting to Wayland stack
* (5) [display3d](https://github.com/redpenguinyt/display3d) lock screen
* (5) [Paulo-Murilo-Dev/42screensaver](https://github.com/Paulo-Murilo-Dev/42screensaver)
* (6) [xsecurelock](https://github.com/google/xsecurelock)
* (2.5) [swaylock-effects](https://github.com/mortie/swaylock-effects)
* (2.5) [swaylock](https://github.com/swaywm/swaylock)

## Launcher, Menu

### GUI Launcher

* (2) [albert](https://albertlauncher.github.io/) - An awesome keyboard launcher for the Linux desktop. [albert](https://github.com/albertlauncher/albert,) [site](https://albertlauncher.github.io/) - An awesome keyboard launcher for the Linux desktop. [albertlauncher.github.io/https://albertlauncher.github.io/reference/](https://albertlauncher.github.io/https://albertlauncher.github.io/reference/)
   | (2.5) [albert fork](https://github.com/ManuelSchneid3r/albert)
* (2) [appImageLauncher](https://github.com/TheAssassin/AppImageLauncher) - Helper application for Linux distributions serving as a kind of “entry point” for running and integrating AppImages.
* (2.5) [bashrun](http://bashrun.sourceforge.net/)
   | (2.5) [bashrun2](http://henning-bekel.de/bashrun2/)
* (5) [lighthouse](https://github.com/emgram769/lighthouse)
* (N) [loungy](https://github.com/MatthiasGrandl/Loungy) $$$$$$$$$
* (4.5) [mkcron](https://github.com/keshavbhatt/mkcron) - cron editor for desktop - update for use on non-NixOS, perhaps
* (2) [onagre-launcher/onagre](https://github.com/onagre-launcher/onagre)
* (2) [rglauncher](https://github.com/aeghn/rglauncher)
* (1) [fuzzel](https://codeberg.org/dnkl/fuzzel) - rofi for wayland
* (2.5) [bemenu](https://github.com/Cloudef/bemenu)
* (2.5) [catfish](https://docs.xfce.org/apps/catfish/start) - Catfish is a versatile file searching tool.
* (2.5) [dmenu-wayland](https://github.com/nyyManni/dmenu-wayland)
* (2.5) [fsearch](https://github.com/cboxdoerfer/fsearch) A fast file search utility for Unix-like systems based on GTK+3. Wildcard support, RegEx support, Filter support.
* (2.5) [Heatseeker](https://github.com/rschmitt/heatseeker)
* (2.5) [kupfer](https://kupferlauncher.github.io/) [kupfer](https://github.com/kupferlauncher/kupfer)
* (2) [cerebro](https://cerebroapp.com/) - Open-source productivity booster with a brain / MacOS-Spotlight alternative.
* (2) [gauntlet](https://github.com/project-gauntlet/gauntlet) - Application launcher with React-based plugins
* (2) [handlr-regex](https://github.com/Anomalocaridid/handlr-regex)
* (2) [kando-menu/kando](https://github.com/kando-menu/kando) [kando](https://github.com/kando-menu/kando/blob/main/docs/configuring.md)
* (2) [PathPicker](https://facebook.github.io/PathPicker/)
* (5) [hex](https://github.com/Twins-Divyanshu-Sharma/Hex)
* (5) [hmenu](https://github.com/sulami/hmenu)
* (5) [Icepick](https://github.com/felipesere/icepick)
* (6) [dmenu_run](http://tools.suckless.org/dmenu/)
* (6) [dmenu](https://tools.suckless.org/dmenu/) - dmenu is a dynamic menu for X, originally designed for dwm. It manages large numbers of user-defined menu items
* (6) [dmenu2](https://bitbucket.org/melek/dmenu2)
* (6) [handlr](https://github.com/chmln/handlr)
* (6) [rofi](https://davatorium.github.io/rofi/) → [gist.github.com/MilesMcBain/0e6f449c3f8e07ed1b06aa785b0726ff](https://gist.github.com/MilesMcBain/0e6f449c3f8e07ed1b06aa785b0726ff) * (R) [rofi(1) — Arch manual pages](https://man.archlinux.org/man/community/rofi/rofi.1.en) -> vs dmenu
   | (6) [rofi](https://github.com/DaveDavenport/rofi)
* (2) [rofi-wayland](https://github.com/lbonn/rofi) + [rofi extensions](https://github.com/adi1090x/rofi)
* (5) [sway-launcher-desktop](https://github.com/Biont/sway-launcher-desktop)
* (R) [tmenu](https://github.com/dhamidi/tmenu)
* (2.5) [tofi](https://github.com/philj56/tofi)
* (R) [tpick](https://github.com/smblott-github/tpick)
* (2.5) [ulauncher](https://ulauncher.io/) - Ulauncher is a fast application launcher for Linux. It’s is written in Python, using GTK+.
* (6) [vis-menu](http://martanne.github.io/vis/man/vis-menu.1.html)
* (2.5) [walker](https://github.com/abenz1267/walker)
* (2.5) [wofi](https://sr.ht/~scoopta/wofi/)
* (6) [xboomx](https://github.com/victorhaggqvist/xboomx)
* (6) [xlauncher](https://github.com/vatriani/xlauncher)

### Misc / plugins

* (5) [rofi-calc](https://github.com/svenstaro/rofi-calc) $$$
* (2) [networkmanager-dmenu](https://github.com/firecat53/networkmanager-dmenu) $$$
* (5) [rofi-nerdy](https://github.com/rolv-apneseth/rofi-nerdy)  rofi plugin for nerdfonts $$$
* (5) [keepmenu](https://github.com/firecat53/keepmenu)

## Notification

* (2) [dunst](https://github.com/dunst-project/dunst)
* (2.5) [tiramisu](https://github.com/Sweets/tiramisu)
* (2) [mako](https://github.com/emersion/mako)
* (2.5) [avizo](https://github.com/misterdanb/avizo)
* (2) [linux_notification_center](https://github.com/phuhl/linux_notification_center) - in Haskell!
* (2) [noti](https://github.com/variadico/noti) Monitor a process and trigger a notification.
* (5) [ntfy](https://github.com/dschep/ntfy) Cross-platform Python utility that enables you to automatically get desktop notifications on demand or when long running commands complete. It can as well send push notifications to your phone once a particular command completes.
* (5) [undistract-me](https://github.com/jml/undistract-me) - A command line program that plays a sound or sends a notification when a long command has finished running in the command line.
* (2) [keep](https://github.com/keephq/keep) - Simple alerting tool, with declarative syntax and builtin providers.
* (2.5) [catlight](https://catlight.io/) - status notifier for developers. Checks the status of continuous delivery builds and shows desktop notifications.
* (2) [sysm](https://github.com/jafarlihi/sysm) - Makes your system play custom sounds when any configured system or external event happens.
* (2) [Welcome to Notifiers documentation! — notifiers 1.3.0 documentation](https://notifiers.readthedocs.io/en/latest/)

## Wallpaper

* (5) [todowalp](https://github.com/linuxdotexe/todowalp) $$$$$$$$$
* (N) [caydence](https://github.com/joshcbrown/caydence)
* (N) [lwp](https://github.com/jszczerbinsky/lwp) - Multi-platform parallax wallpaper engine
* (5) [Daily Reddit Wallpaper](https://federicotorrielli.github.io/Daily-Reddit-Wallpaper/) - Change your wallpaper to the most upvoted image of the day from /r/wallpapers or any other subreddit on system startup.
* (5) [smoothpaper](https://github.com/matjam/smoothpaper) Smoothly transitioning wallpaper daemon for X11 Window Managers

### Monitoring Wallpaper

* (2) [MangoHud](https://github.com/flightlessmango/MangoHud)
* (5) [victorconky](https://github.com/kushall09/victorconky)
* (2) [pscircle](https://gitlab.com/mildlyparallel/pscircle)

## Miscellaneous

### Hyprland Apps

* (2) [hyprlock](https://github.com/hyprwm/hyprlock) - Hyprland's GPU-accelerated screen locking utility
* (2) [hyprwm/hyprland-welcome: Hyprland's welcome app, written in qt.](https://github.com/hyprwm/hyprland-welcome) - Hyprland's welcome app, written in qt
* (2) [hyprkool](https://github.com/thrombe/hyprkool) - Hyprland plugin to replicate the feel of kde activities and desktop grid layout
* (2) [hyprspace](https://github.com/KZDKM/Hyprspace) - Workspace overview plugin for Hyprland

### Window Management Tools

* (2.5) [~emersion/wlr-randr - An xrandr clone for wlroots compositors - sourcehut git](https://git.sr.ht/~emersion/wlr-randr)
* (2.5) [kanshi](https://sr.ht/~emersion/kanshi/) ([autorandr](https://github.com/phillipberndt/autorandr) for x)
* (2.5) [cosmic-randr](https://github.com/pop-os/cosmic-randr) ([xrandr](https://xorg-team.pages.debian.net/xorg/howto/use-xrandr.html) for x)
(2) [pop-os/cosmic-randr at 88c570cf8b88beae1cf4f3e2d412cc64ec49cd7c](https://github.com/pop-os/cosmic-randr/tree/88c570cf8b88beae1cf4f3e2d412cc64ec49cd7c)

#### X11-Only

* (6) [xbanish](https://github.com/jcs/xbanish)
* (6) [unclutter-xfixes](https://github.com/Airblader/unclutter-xfixes)

### Brightness

* (2.5) [dim](https://github.com/marcelohdez/dim)
* (2.5) brightnessctl

### Clipboard

* (2) [wl-clipboard](https://github.com/bugaevc/wl-clipboard)

### Drag and Drop

* (2) [nik012003/ripdrag: Drag and Drop utilty written in Rust and GTK4](https://github.com/nik012003/ripdrag)

### Openers (like xdg-open)

* (5) [mimi](https://github.com/BachoSeven/mimi) $$$
* (5) [open-in-editor](https://github.com/dandavison/open-in-editor)
* (2.5) [gof](https://github.com/mattn/gof)

### Theme Switcher

* (5N) [nChain](https://github.com/Nocxium/nChain) theme switcher

## Comparison

* (R) [Comparison of extensible window managers | Sawfish | Fandom](https://sawfish.fandom.com/wiki/Comparison_of_extensible_window_managers)
* (R) [My Tier List For Tiling Window Managers - YouTube](https://www.youtube.com/watch?v=xysISs0mcj8)
* (R) [Qtile Versus i3 Window Manager](https://www.youtube.com/watch?v=vXFuhNbGgZg)
* compare i3/sway vs qtile
* (R) [video](https://www.youtube.com/watch?v=pY9HPm1N16Y)
* (R) [481 - ¿PROBAR UN TILING WINDOW MANAGER?¿REGOLITH, I3 O CUAL?](https://atareao.es/podcast/probar-un-tiling-window-managerregolith-i3-o-cual/)
* (R) [tecmint.com/best-tiling-window-managers-for-linux/](https://www.tecmint.com/best-tiling-window-managers-for-linux/)
* (R) [Reddit - Best WM to start with](https://www.reddit.com/r/unixporn/comments/11m9ggz/best_wm_to_start_with/)

## Screenshot

* -> [debian wayland screenshot tool discussion](https://forums.debian.net/viewtopic.php?p%3D794502) CLI screenshot tool
* (4.5) [flameshot](https://flameshot.org/) - Powerful yet simple to use screenshot software.
* (2.5) [grimblast](https://github.com/hyprwm/contrib/tree/main/grimblast)
* (2.5) [shutter on wayland](https://www.omgubuntu.co.uk/2024/01/shutter-on-wayland)
* (6) [flameshot](https://flameshot.org/)
* (2.5) [grimcap](https://ithub.com/wick3dr0se/grimcap)
* (2.5) [watershot](https://github.com/Kirottu/watershot) - A simple wayland native screenshot tool
* (2.5) [pyscreenshot 3.1 on PyPI - Libraries.io](https://libraries.io/pypi/pyscreenshot)
* (2.5) [screenshot-to-code](https://github.com/abi/screenshot-to-code)
* (2.5) [sss](https://github.com/SergioRibera/sss) - SSS (Super ScreenShot) is a WIP: CLI/Lib to take amazing screenshot of code or screen $$$
* (2.5) [swappy](https://github.com/jtheoof/swappy)
* (2.5) [grim](https://sr.ht/~emersion/grim/)

### Screenshot Annotation

* (2.5) [satty](https://github.com/gabm/Satty) - Satty - Modern Screenshot Annotation. A tool inspired by Swappy and Flameshot.
   | (2.5) [swappy](https://github.com/jtheoof/swappy) - A Wayland native snapshot editing tool, inspired by Snappy on macOS

## Old, X11 etc

### X11 Compositor

* Picom
  | (6) [picom](https://github.com/dccsillag/picom) fork
  | (6) [picom](https://github.com/jonaburg/picom)
  | (6) [picom](https://github.com/yshui/picom) -> [picom](https://github.com/yshui/picom/blob/next/picom.sample.conf)
  | (6) [picom](https://github.com/xealea/picom)
  | (6) [picom-shaders](https://github.com/ikz87/picom-shaders)
* (6) [compton](https://github.com/yshui/compton) - Compton is a standalone composite manager, suitable for use with window managers that do not natively provide compositing functionality.
* (6) [xcompmgr](https://cgit.freedesktop.org/xorg/app/xcompmgr) - Xcompmgr is a simple composite manager capable of rendering drop shadows and, with the use of the transset utility, primitive window transparency.
* (6) [picom-shaders](https://github.com/ikz87/picom-shaders/wiki/Shader-gallery)
* (6) [glassit-linux](https://github.com/Fmstrat/glassit-linux) - not needed due to picom*

## X11 WM Tools

* (6) [xborder](https://github.com/deter0/xborder)

## X11 WMs

* (6) [arch wiki](https://wiki.archlinux.org/title/i3)
* (6) [awesome blog post](https://scaron.info/blog/awesome-with-gnome-on-ubuntu.html)
* (6) [awesome site](https://awesomewm.org/)
* (6) [awesome](https://awesomewm.org/) - A highly configurable, next generation framework window manager for X.
* (6) [awesomewm with dots](https://www.reddit.com/r/unixporn/comments/12tvw7f/awesome_finally_i_got_what_i_want)
* (6) [bedwm](https://github.com/chadcat7/bedwm)
* (6) [blueicewm](https://github.com/ottop/blueicewm)
* (6) [bspwm discussion](https://www.reddit.com/r/unixporn/comments/130h37f/bspwm_how_is_it/)
* (6) [bspwm](https://github.com/baskerville/bspwm)
* (6) [codeberg.org/Oglo12/personal-i3-config/](https://codeberg.org/Oglo12/personal-i3-config/) * - [r/i3wm/](https://www.reddit.com/r/i3wm/)
* (6) [DkWM](https://bitbucket.org/natemaia/dk)
* (6) [dkwm](https://bitbucket.org/natemaia/dk/src/master/)
* (6) [dwm patches](https://dwm.suckless.org/patches/)
* (6) [dwm-flexipatch](https://github.com/bakkeby/dwm-flexipatch)
* (6) [dwm](https://dwm.suckless.org/) - A dynamic window manager for X. It manages windows in tiled, monocle and floating layouts.
* (6) [dwm](https://www.reddit.com/r/unixporn/comments/123ld44/dwm_tugend_oder_ruhm/) - look for source of passage
* (6) [Herbstluftwm](https://herbstluftwm.org/) - Is a Manual tiling window manager for X11 using Xlib and Glib.
* (6) [herbstluftwm Combine The Best of Bspwm and XMonad, You Get Herbstluftwm! - YouTube](https://www.youtube.com/watch?v=eEmOy3qzrcg)
* (6) [herbstluftwm/herbstluftwm: A manual tiling window manager for X11](https://github.com/herbstluftwm/herbstluftwm)
* (6) [Hypr](https://github.com/hyprwm/Hypr)
* (6) [i3 Episode → HPR -> see show notes!](https://hackerpublicradio.org/eps.php?id=3735)
* (6) [i3 mouseless](https://thevaluable.dev/i3-config-mouseless/)
* (6) [i3 vs qtile](https://www.reddit.com/r/unixporn/comments/enshqt/i3_or_qtile/)
* (6) [i3 Windows Manager with XFCE using MX Linux distribution](https://www.youtube.com/watch?v=MMRVG9jk_M0&t=128s)**
* (6) [i3 WM](https://i3wm.org/) - A better tiling and dynamic window manager. It’s completely written from scratch. The target platforms are GNU/Linux and BSD operating systems. [i3wm.org/docs/userguide.html](https://i3wm.org/docs/userguide.html)  [i3wm.org/docs/](https://i3wm.org/docs/) [i3wm](https://i3wm.org/docs/) [dev.to/t/i3wm](https://dev.to/t/i3wm) [i3wm.org/docs/layout-saving.html](https://i3wm.org/docs/layout-saving.html) [itsfoss.com/i3-customization/](https://itsfoss.com/i3-customization/)
* (6) [i3-alternating](https://github.com/nowakf/i3-alternating)
* (6) [i3-autolayout](https://github.com/BiagioFesta/i3-autolayout)
* (6) [i3-gaps](https://github.com/Airblader/i3) - i3-gaps is i3 with more features.
* (6) [i3-layout-manager](https://github.com/klaxalk/i3-layout-manager)
* (6) [i3: i3 User’s Guide](https://i3wm.org/docs/userguide.html%23_default_keybindings)
* (6) [i3](https://opensource.com/article/18/8/getting-started-i3-window-manager)
* (6) [i3](https://vincent.bernat.ch/en/blog/2021-i3-window-manager)
* (6) [i3wm playlist](https://www.youtube.com/playlist?list=PL5ze0DjYv5DbCv9vNEzFmP6sU7ZmkGzcf) (Alex Booker)
* (6) [leftwm](http://leftwm.org/)
* (6) [leftwm](https://github.com/leftwm/leftwm)
* (6) [leftwm](https://github.com/leftwm/leftwm)
* (6) [marswm](https://github.com/jzbor/marswm)
* (6) [marswm](https://www.reddit.com/r/unixporn/comments/13cp71s/marswm_rusty_buisiness/)
* (6) [moonwm](https://github.com/jzbor/moonwm)
* (6) [pypi.org/project/xpywm/](https://pypi.org/project/xpywm/)
* (6) [Qtile on Ubuntu](https://www.youtube.com/watch?v=Y1busy_dDRQ)
* (6) [r/linux/comments/rpzur6/i3_is_the_best_window_manager/](https://www.reddit.com/r/linux/comments/rpzur6/i3_is_the_best_window_manager/)
* (6) [ragnar](https://github.com/cococry/ragnar) X twm
* (6) [ragnarwm](https://www.ragnarwm.org/)
* (6) [sowm](https://github.com/dylanaraps/sowm)
* (6) [spectrwm](https://github.com/conformal/spectrwm) - A small dynamic tiling window manager for X11, largely inspired by xmonad and dwm.
* (6) [stumpwm](https://github.com/stumpwm/stumpwm) [stumpwm.github.io/](http://stumpwm.github.io/) (X11, CL)
* (6) [stumpwm](https://stumpwm.github.io/)
* (6) [ulubis](https://github.com/malcolmstill/ulubis)
* (6) [wiki](https://github.com/baskerville/bspwm/wiki) - Bspwm is a tiling window manager that represents windows as the leaves of a full binary tree. [wiki.archlinux.org/title/bspwm](https://wiki.archlinux.org/title/bspwm)
* (6) [worm](https://github.com/codic12/worm) - A dynamic, tag-based window manager written in Nim.
* (6) [xmonad config](https://github.com/NeshHari/XMonad) [xmonad.org/gnome.html](https://xmonad.org/gnome.html)
* (6) [xmonad Configuration Tutorial | xmonad - the tiling window manager that rocks](https://xmonad.org/TUTORIAL.html)
* (6) [xmonad demo](https://www.youtube.com/watch?v=5oBT0a25FyA) [XMonad Demo - YouTube](https://www.youtube.com/watch?v=70IxjLEmomg)
* (6) [xmonad guide](https://beginners-guide-to-xmonad.readthedocs.io/index.html)
* (6) [xmonad install](https://xmonad.org/INSTALL.html)
* (6) [xmonad thread hn](https://news.ycombinator.com/item?id=28794901)
* (6) [xmonad](https://xmonad.org/) - A dynamically tiling X11 window manager that is written and configured in Haskell.
* (6) [xmonad](https://xmonad.org/documentation.html) → remove dock and remove bar, also remove [window bars](https://stackoverflow.com/questions/71204126/how-to-remove-the-title-bar-of-gnome-applications)?
* (6) [xtermwm](https://xtermwm.sourceforge.io/)

## Internals, Low-Level

### Wayland Libraries

* (R) [smithay](https://github.com/Smithay/smithay)
* (R) [wlroots](https://gitlab.freedesktop.org/wlroots/wlroots/)
* weston*
* (5) [wayflan: From-scratch Wayland client for Common Lisp](https://sr.ht/~shunter/wayflan/)

### Graphics and System Libraries

* (5) [nixGL](https://github.com/cfhammill/nixGL)
* (2) [dbus](https://www.freedesktop.org/wiki/Software/dbus/)
* (2) [ibus](https://github.com/ibus/ibus)
* (R) [learnopengl](https://learnopengl.com/)

### Wayland, X11, WM Information

* -> guake for wayland?
* (R)  [wayland.app/protocols/](https://wayland.app/protocols/)
* (R)  [wayland.freedesktop.org/docs/html/](https://wayland.freedesktop.org/docs/html/)
* (R)  [cbtnuggets.com/blog/technology/networking/why-use-wayland-versus-x11](https://www.cbtnuggets.com/blog/technology/networking/why-use-wayland-versus-x11)
* (R)  [Thesis](https://www.cs.ru.nl/bachelors-theses/2019/Max_van_Deurzen___4581903___The_anatomy_of_the_modern_window_manager_-_a_case_study_for_X_in_an_Agile_manner.pdf)
* Wayland vs X*
* (R)  [bbs.archlinux.org/viewtopic.php?id=238376](https://bbs.archlinux.org/viewtopic.php?id=238376)
* (R)  [Wayland vs X11](https://youtu.be/nPz5TAGYgzA)
* (R)  [en.wikipedia.org/wiki/Wayland_(protocol)](https://en.wikipedia.org/wiki/Wayland_(protocol)) vs X11?*
  * Wayland Apps
* (R)  [wtype](https://github.com/atx/wtype)
* (R)  [ydotool](https://github.com/ReimuNotMoe/ydotool)
* (R)  [LeftWM - A Fast and Simple Xmonad Alternative - YouTube](https://www.youtube.com/watch?v=jvfk380Pses)
* (R)  [askubuntu.com/questions/956640/equivalent-to-xdotool-for-wayland#977801*](https://askubuntu.com/questions/956640/equivalent-to-xdotool-for-wayland#977801*)
* (R)  [unix.stackexchange.com/questions/309580/does-wayland-use-xkb-for-keyboard-layouts](https://unix.stackexchange.com/questions/309580/does-wayland-use-xkb-for-keyboard-layouts)
* (R)  [I wonder what will happen to XMonad as the Wayland future actually seems to be a... | Hacker News](https://news.ycombinator.com/item?id=28794901)
* (R)  [A Comprehensive Guide To Tiling Window Managers](https://www.youtube.com/watch?v=Obzf9ppODJU&t=717s) 
* (R)  [xwinman.org/](http://www.xwinman.org/)
* (R)  X Protocol Reference Manual for X11, Release 6 (Definitive Guide to X Window System, Vol. 0) (Definitive Guides to the X Window System)
* (R)  [The anatomy of the modern window manager](http://library.lol/main/C392F948ADD053F40ABE01AACE37ED57)
* (R)  [eirenicon.org/implementing-linux-window-managers-tutorial/](https://eirenicon.org/implementing-linux-window-managers-tutorial/)
* (R)  [xwinman.org/others.php](http://www.xwinman.org/others.php)
* (R)  [userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma)
* → Xorg vs Wayland vs Arcan
* How to set up dropdown windows with a tiling window manager?
* (R)  [A Look Inside Mutter / GNOME Shell](https://lpc.events/event/7/contributions/834/attachments/684/1263/A_Look_Inside_Mutter.pdf)
* (R)  [x.org/releases/X11R7.5/doc/man/man1/xprop.1.html](https://www.x.org/releases/X11R7.5/doc/man/man1/xprop.1.html)
* (R)  [wiki.archlinux.org/title/Xorg#Composite](https://wiki.archlinux.org/title/Xorg#Composite)
* (R)  [How to build a window manager in Python](https://monroeclinton.com/build-your-own-window-manager/)
* (R)  [xorg documentation](https://www.x.org/wiki/Documentation/)
* (R)  [wiki.archlinux.org/title/Window_manager](https://wiki.archlinux.org/title/Window_manager)
* (R)  [Why I Use Tiling Window Managers - And Why You Should Too - YouTube](https://www.youtube.com/watch?v=K_W0ia2QjU8)
* (R)  [wayland](https://wayland.freedesktop.org/)
* (R)  [wayland protocols](https://wayland.app/protocols/)
