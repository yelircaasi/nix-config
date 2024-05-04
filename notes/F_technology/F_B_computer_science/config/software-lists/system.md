# System Software

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

### Boot Tools

* (4.5) [libreboot](https://libreboot.org/docs/) [libreboot article](https://9to5linux.com/libreboot-open-source-bios-uefi-firmware-adds-more-hardware-support) libreboot
* (4) [tow-boot](https://tow-boot.org/)
* (5) [GrubCustomizer](https://launchpad.net/grub-customizer) - Grub Customizer is a graphical interface to configure the GRUB2/BURG settings and menuentries. [tutorial](https://www.linuxfordevices.com/tutorials/linux/grub-customizer-tutorial)
* (N) [bsol](https://github.com/harishnkr/bsol)
* (N) [rEFInd](https://www.rodsbooks.com/refind/) - rEFInd is a fork of the rEFIt boot manager. Like rEFIt, rEFInd can auto-detect your installed EFI boot loaders and it presents a pretty GUI menu of boot options. → tools boot - great resource [rodsbooks.com/refind/](https://www.rodsbooks.com/refind/)
* (R) [bootloader / kernel hardening](https://www.reddit.com/r/NixOS/s/UhoOeQnx6T), see also [first post](https://www.reddit.com/r/NixOS/comments/1aqck9l/systemd_hardening_some_preconfigured_options_d/)

### ISO Creation

* (3) [popsicle](https://github.com/pop-os/popsicle)
   | ( ) [etcher](https://www.balena.io/etcher/)
   | ( ) [ventoy](https://www.ventoy.net/en/index.html)
   | ( ) [unetbootin](https://unetbootin.github.io/)
   | ( ) [multibootusb](https://github.com/Death259/multibootusb)

### Modprobe

* (3) [modprobed-db](https://github.com/graysky2/modprobed-db)

### Bluetooth

* ( ) [bluetui](https://github.com/pythops/bluetui)

### Non-Nix Config Management

* ( ) [ansible](https://github.com/j0giwa/ansible)

### Key Utils, Mouse, Touch

* (2) [kanata](https://github.com/jtroo/kanata) | ( ) [kmonad](https://github.com/kmonad/kmonad)
* ( ) [showmethekey](https://github.com/AlynxZhou/showmethekey) - Show keys you typed on screen.
* ( ) [~shinyzenith/swhkd - Sxhkd clone for Wayland (works on TTY and X11 too) - sourcehut git](https://git.sr.ht/~shinyzenith/swhkd)
* ( ) [libxkbcommon/blob/master/include/xkbcommon/xkbcommon-keysyms.h](https://github.com/xkbcommon/libxkbcommon/blob/master/include/xkbcommon/xkbcommon-keysyms.h)
* ( ) [screenkey](https://github.com/larsbrinkhoff/screenkey) - screencast tool
* ( ) [fusuma](https://github.com/iberianpig/fusuma) - multitouch gestures
* ( ) [rvaiya/warpd: A modal keyboard-driven virtual pointer](https://github.com/rvaiya/warpd)
* (2) [emote](https://github.com/tom-james-watson/emote) | (5) [emoji-keyboard](https://github.com/OzymandiasTheGreat/emoji-keyboard) - Virtual keyboard-like emoji picker for Linux.

#### Chinese Input

* ( ) [fcitx-im](https://fcitx-im.org/) - Chinese input method
* ( ) [fcitx/fcitx5: maybe a new fcitx.](https://github.com/fcitx/fcitx5)
* ( ) [fcitx5](https://github.com/fcitx/fcitx5)

### App Running, User Management, Permissions

* (2) [ego](https://github.com/intgr/ego) - Alter Ego: run Linux desktop applications under a different local user

### SystemD

* ( ) [Using systemd unit files to customize and optimize your system Red Hat Enterprise Linux 8 | Red Hat Customer Portal](https://access.redhat.com/documentation/enus/red_hat_enterprise_linux/8/html-single/using_systemd_unit_files_to_customize_and_optimize_your_system/index)
* ( ) [How to run systemd in a container | Red Hat Developer](https://developers.redhat.com/blog/2019/04/24/how-to-run-systemd-in-a-container%23enter_podman)
* ( ) [System and Service Manager](https://systemd.io/)
* ( ) [systemd_in_suse_linux_enterprise_12_white_paper.pdf](https://documentation.suse.com/external-tree/en-us/sles/12-SP4/systemd_in_suse_linux_enterprise_12_white_paper.pdf)
* ( ) [NixOS 78: Systemd User Services - YouTube](https://www.youtube.com/watch?v%3DmFgxtWx5W0w)

### System Management

* (6) [SysMonTask](https://github.com/KrispyCamel4u/SysMonTask/)
* (2) [osquery](https://github.com/osquery/osquery)
* (2) [firejail](https://github.com/netblue30/firejail)
* (2) [CoreCtrl](https://gitlab.com/corectrl/corectrl)
* (2) [dysk](https://github.com/Canop/dysk)
* (2) [auto-cpufreq](https://github.com/AdnanHodzic/auto-cpufreq)
* (4) [cpu-x](https://thetumultuousunicornofdarkness.github.io/CPU-X/)
* (2) [systeroid](https://github.com/orhun/systeroid)
* (2) [tlp](https://linrunner.de/tlp/)
* ( ) [bvaisvil/zenith](https://github.com/bvaisvil/zenith) - Zenith - sort of like top or htop but with zoom-able charts, CPU, GPU, network, and disk usage
* (2) [htop](https://github.com/htop-dev/htop)
   | ( ) [glances](https://github.com/nicolargo/glances)
   | ( ) [bottom](https://clementtsang.github.io/bottom/nightly/)
   | ( ) [tiptop](https://github.com/nschloe/tiptop)
   | ( ) [gtop](https://github.com/aksakalli/gtop)
   | ( ) [btop](https://github.com/aristocratos/btop)
   | ( ) [yvers](https://github.com/TokieSan/yvers)
   | ( ) [zfxtop](https://github.com/ssleert/zfxtop)
   | ( ) [below](https://github.com/facebookincubator/below)
   | ( ) [atop](https://www.atoptool.nl/)
   | ( ) [gotop](https://github.com/xxxserxxx/gotop)
* (2) [iotop](http://guichaz.free.fr/iotop/)
* (2) [ttop](https://github.com/inv2004/ttop) (written in Nim)
* (2) [rtop](http://www.rtop-monitor.org/)
* (2) [kmon](https://github.com/orhun/kmon)
* (2) [conky](https://github.com/brndnmtthws/conky)
* (2) [sysdig](https://github.com/draios/sysdig)
* (2) [inxi](https://github.com/smxi/inxi)
* (2) [s-tui](https://amanusk.github.io/s-tui/)
* (2) [hwinfo](https://github.com/openSUSE/hwinfo)
   | (2) [lshw](https://ezix.org/src/pkg/lshw)
   | (2) [dmidecode](http://git.savannah.gnu.org/cgit/dmidecode.git/tree/README)
* (2.5)
* ( ) [bupstash](https://github.com/andrewchambers/bupstash)
   | ( ) [duplicity](https://gitlab.com/duplicity/duplicity) + [duply](https://github.com/Oefenweb/duply)
   | ( ) [bup](https://github.com/bup/bup)
   | ( ) [borg](https://github.com/borgbackup) + (optionally)
* ( ) [vorta](https://vorta.borgbase.com/)
   | ( ) [rsnapshot](https://github.com/rsnapshot/rsnapshot)
   | ( ) [restic](https://github.com/restic/restic)
   | ( ) [kopia](https://kopia.io/)
* (5) [batstat](https://github.com/Juve45/batstat)
   | (3) [powertop](https://github.com/fenrus75/powertop)
* (2) [brightnessctl](https://github.com/Hummer12007/brightnessctl)
* (5) [shallow-backup](https://github.com/alichtman/shallow-backup)
* (2.5)
* ( ) [dust](https://github.com/bootandy/dust)
   | ( ) [dua-cli](https://github.com/Byron/dua-cli/)
   | ( ) [duc](...)
   | ( ) [pda](...)
   | ( ) [diskonaut](...)
   | ( ) [duf](...)
   | ( ) [vizex](...)
   | ( ) [ncdu](...)
   | ( ) [tin-summer](https://github.com/vmchale/tin-summer)
   | ( ) [gdu](...)
   | ( ) [cdu](...)
   | ( ) [diskus](...)
   | ( ) [dutree](...)
   | ( ) [dfc](...)
* ( ) [QDirStat](https://github.com/shundhammer/qdirstat)
   | ( ) [Filelight](https://apps.kde.org/filelight/)
   | ( ) [Baobab](https://wiki.gnome.org/Apps/DiskUsageAnalyzer)
   | ( ) [JDisReport](http://www.jgoodies.com/freeware/jdiskreport/)
   | ( ) [gdmap](https://gdmap.sourceforge.net/)
* (3) [udisks](https://github.com/storaged-/nnn)
* project/udisks)
* (3) [udiskie](https://github.com/coldfix/udiskie)
* (4) [gparted](...)
   | ( ) [clonezilla](...)
* (2.5)
* ( ) [macchina](https://github.com/Macchina-CLI/macchina)
   | ( ) [bfetch](https://github.com/nnbnh/bfetch)
   | ( ) [nerdfetch](https://codeberg.org/thatonecalculator/nerdfetch)
   | ( ) [fastfetch](https://github.com/fastfetch-cli/fastfetch)
   | ( ) [sfetch](https://codeberg.org/DoutorJP/sfetch)
   | ( ) [archey4](https://github.com/HorlogeSkynet/archey4) (alternatives: [neofetch](https://github.com/dylanaraps/neofetch), [pfetch](https://github.com/dylanaraps/pfetch))
* (4) [supervisor](http://supervisord.org/)
* (2) [fileschanged](https://www.nongnu.org/fileschanged)

### Security, Cryptography, Authentication, Passwords

* (3) [gnupg](https://www.gnupg.org/) (frontend [seahorse](https://wiki.gnome.org/Apps/Seahorse))
   | ( ) [enc](https://github.com/life4/enc)
* (3) [openssl](https://github.com/openssl/openssl)
* ( ) [oauth2c](https://github.com/cloudentity/oauth2c)
* ( ) [pass](https://git.zx2c4.com/password-store/) (frontend [cpass](https://github.com/xlucn/cpass), tool [passfzf](https://git.sr.ht/~mlaparie/passfzf))
   | ( ) [1password](https://developer.1password.com/docs/ssh/)
   | ( ) [AuthPass](https://authpass.app/)
   | ( ) [Bitwarden](https://bitwarden.com/) + [clients](https://github.com/bitwarden/clients), alternative server [vaultwarden](https://github.com/dani-garcia/vaultwarden)
   | ( ) [keepassxc](https://github.com/keepassxreboot/keepassxc)
   | ( ) [buttercup](https://buttercup.pw/)
   | ( ) [gopass](https://github.com/gopasspw/gopass)
   | ( ) [keeweb](https://keeweb.info/)
   | ( ) [pa](https://github.com/biox/pa)
   | ( ) [keydex](https://github.com/shikaan/keydex)
* ( ) [keepmenu](https://github.com/firecat53/keepmenu)
* ( ) [ots](https://github.com/sniptt-official/ots)
   | ( ) [Secrets](https://apps.gnome.org/Secrets/)
   | ( ) [SpicyPass](https://github.com/JFreegman/SpicyPass)
* ( ) [minisign](https://jedisct1.github.io/minisign/)
* ( ) [trufflehog](https://github.com/trufflesecurity/trufflehog)
* ( ) [clamAV](https://www.clamav.net/)
* ( ) [obfuscate](https://apps.gnome.org/app/com.belmoussaoui.Obfuscate/)
* ( ) [authenticator](https://gitlab.gnome.org/World/Authenticator)
* ( ) [hashcat](https://github.com/hashcat/hashcat)
* ( ) [collision](https://collision.geopjr.dev/)
* ( ) [paper-age](https://github.com/matiaskorhonen/paper-age)
* (4) [age](https://github.com/FiloSottile/age)
   | ( ) [rage](https://github.com/str4d/rage)
* (3) [kestrel](https://github.com/finfet/kestrel)

## Tuxedo-only

* (3) [tuxedo-rs](https://github.com/AaronErhardt/tuxedo-rs)
* (2) [tailor-gui](https://search.nixos.org/packages?channel=23.11&show=tailor-gui&from=0&size=50&sort=relevance&type=packages&query=tuxedo+control)
* ( ) [TUXEDO Control Center - GNU/Linux.ch](https://gnulinux.ch/tuxedo-control-center)

## Debian-based-only

* ( ) [uktools](https://github.com/usbkey9/uktools)
* ( ) [nala](https://github.com/volitank/nala)
* ( ) [deb-get](https://github.com/wimpysworld/deb-get)
* ( ) [pacstall](https://pacstall.dev/)
* ( ) [lxroot](try out and potentially package for NixOS)

## Non-NixOS-only

* ( ) [mkdesk](https://gitlab.com/mr-draxs/mkdesk)

## NixOS-only

* (2) [comma](https://github.com/nix-community/comma)

## Nvidia-only

* (2) [zenith-nvidia](https://github.com/bvaisvil/zenith) (for devices with Nvidia)
* (2.5)
* ( ) [nvitop](https://github.com/XuehaiPan/nvitop)
   | ( ) [nvtop](https://github.com/Syllo/nvtop) [NixOS Search - Packages - nvtop](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dnvtop)
* (2) [gpustat](...)
