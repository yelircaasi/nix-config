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

* (2) [popsicle](https://github.com/pop-os/popsicle)
   | (6) [etcher](https://www.balena.io/etcher/)
   | (6) [ventoy](https://www.ventoy.net/en/index.html)
   | (6) [unetbootin](https://unetbootin.github.io/)
   | (6) [multibootusb](https://github.com/Death259/multibootusb)

### Modprobe

* (3) [modprobed-db](https://github.com/graysky2/modprobed-db)

### Bluetooth

* (2) [bluetui](https://github.com/pythops/bluetui)

### Non-Nix Config Management

* (4.5) [ansible](https://github.com/j0giwa/ansible)

### Key Utils, Mouse, Touch

* (2) [showmethekey](https://github.com/AlynxZhou/showmethekey) - Show keys you typed on screen.
   | (6) [screenkey](https://github.com/larsbrinkhoff/screenkey) - screencast tool
* (R) [libxkbcommon/blob/master/include/xkbcommon/xkbcommon-keysyms.h](https://github.com/xkbcommon/libxkbcommon/blob/master/include/xkbcommon/xkbcommon-keysyms.h)
* (4.5) [fusuma](https://github.com/iberianpig/fusuma) - multitouch gestures
* (2) [rvaiya/warpd: A modal keyboard-driven virtual pointer](https://github.com/rvaiya/warpd)
* (2) [emote](https://github.com/tom-james-watson/emote) | (5) [emoji-keyboard](https://github.com/OzymandiasTheGreat/emoji-keyboard) - Virtual keyboard-like emoji picker for Linux.
* (1) [kanata](https://github.com/jtroo/kanata)
   | (2.5) [kmonad](https://github.com/kmonad/kmonad)
   | (2.5) [keyd](https://github.com/rvaiya/keyd)
   | (2.5) [keymapper](https://github.com/houmain/keymapper)
   | (2.5) [hawck](https://github.com/snyball/Hawck)
   | (2.5) [xremap](https://github.com/k0kubun/xremap)
   | (2.5) [swhkd](https://git.sr.ht/~shinyzenith/swhkd)
   | (2.5) [ktrl](https://github.com/ItayGarin/ktrl) (?)
* (2) [input-remapper](https://github.com/sezanzeb/input-remapper)
* (2) [espanso](https://espanso.org/docs/get-started/)

#### Chinese Input

* (2) [fcitx/fcitx5: maybe a new fcitx.](https://github.com/fcitx/fcitx5) (R) [fcitx-im](https://fcitx-im.org/) - Chinese input method

### App Running, User Management, Permissions

* (2) [ego](https://github.com/intgr/ego) - Alter Ego: run Linux desktop applications under a different local user

### SystemD

* (2) [System and Service Manager](https://systemd.io/)
   | (R) [Using systemd unit files to customize and optimize your system Red Hat Enterprise Linux 8 | Red Hat Customer Portal](https://access.redhat.com/documentation/enus/red_hat_enterprise_linux/8/html-single/using_systemd_unit_files_to_customize_and_optimize_your_system/index)
   | (R) [How to run systemd in a container | Red Hat Developer](https://developers.redhat.com/blog/2019/04/24/how-to-run-systemd-in-a-container%23enter_podman)
   | (R) [systemd_in_suse_linux_enterprise_12_white_paper.pdf](https://documentation.suse.com/external-tree/en-us/sles/12-SP4/systemd_in_suse_linux_enterprise_12_white_paper.pdf)
   | (R) [NixOS 78: Systemd User Services - YouTube](https://www.youtube.com/watch?v%3DmFgxtWx5W0w)

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
* (2) [zenith](https://github.com/bvaisvil/zenith) - Zenith - sort of like top or htop but with zoom-able charts, CPU, GPU, network, and disk usage
* (2.5) [htop](https://github.com/htop-dev/htop)
   | (2.5) [glances](https://github.com/nicolargo/glances)
   | (2.5) [bottom](https://clementtsang.github.io/bottom/nightly/)
   | (2.5) [tiptop](https://github.com/nschloe/tiptop)
   | (2.5) [gtop](https://github.com/aksakalli/gtop)
   | (2.5) [btop](https://github.com/aristocratos/btop)
   | (2.5) [yvers](https://github.com/TokieSan/yvers)
   | (2.5) [zfxtop](https://github.com/ssleert/zfxtop)
   | (2.5) [below](https://github.com/facebookincubator/below)
   | (2.5) [atop](https://www.atoptool.nl/)
   | (2.5) [gotop](https://github.com/xxxserxxx/gotop)
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
* (2.5) [dust](https://github.com/bootandy/dust)
   | (2.5) [dua-cli](https://github.com/Byron/dua-cli/)
   | (2.5) [duc](http://duc.zevv.nl/)
   | (2.5) [pdu](https://github.com/KSXGitHub/parallel-disk-usage)
   | (2.5) [duf](https://github.com/muesli/duf)
   | (2.5) [vizex](https://github.com/bexxmodd/vizex)
   | (2.5) [ncdu](...)
   | (2.5) [tin-summer](https://github.com/vmchale/tin-summer)
   | (2.5) [gdu](https://github.com/dundee/gdu)
   | (6) [cdu](https://sourceforge.net/projects/cdu/)
   | (2.5) [tdu](https://github.com/josephpaul0/tdu)
   | (2.5) [diskus](https://github.com/sharkdp/diskus)
   | (2.5) [dutree](https://github.com/nachoparker/dutree)
   | (2.5) [dfc](https://github.com/rolinh/dfc)
* (2) [diskonaut](https://github.com/imsnif/diskonaut)
* (2.5) [QDirStat](https://github.com/shundhammer/qdirstat)
   | (2.5) [Filelight](https://apps.kde.org/filelight/)
   | (2.5) [Baobab](https://wiki.gnome.org/Apps/DiskUsageAnalyzer)
   | (2.5) [JDisReport](http://www.jgoodies.com/freeware/jdiskreport/)
   | (2.5) [gdmap](https://gdmap.sourceforge.net/)
* (3) [udisks](https://github.com/storaged-/nnn)
* project/udisks)
* (3) [udiskie](https://github.com/coldfix/udiskie)
* (2.5) [gparted](https://gparted.org/)
   | (2.5) [GNU Parted](https://www.gnu.org/software/parted/)
   | (2.5) [clonezilla](https://clonezilla.org/)
* (2.5)
* (4) [supervisor](http://supervisord.org/)
* (2) [fileschanged](https://www.nongnu.org/fileschanged)

### Security, Cryptography, Authentication, Passwords

* (2) [gnupg](https://www.gnupg.org/) (frontend [seahorse](https://wiki.gnome.org/Apps/Seahorse))
   | (2) [enc](https://github.com/life4/enc)
* (2) [openssl](https://github.com/openssl/openssl)
* (2) [oauth2c](https://github.com/cloudentity/oauth2c)
* (2.5) [pass](https://git.zx2c4.com/password-store/) (frontend [cpass](https://github.com/xlucn/cpass), tool [passfzf](https://git.sr.ht/~mlaparie/passfzf))
   | (2.5) [1password](https://developer.1password.com/docs/ssh/)
   | (2.5) [AuthPass](https://authpass.app/)
   | (2.5) [Bitwarden](https://bitwarden.com/) + [clients](https://github.com/bitwarden/clients), alternative server [vaultwarden](https://github.com/dani-garcia/vaultwarden)
   | (2.5) [keepassxc](https://github.com/keepassxreboot/keepassxc)
   | (2.5) [buttercup](https://buttercup.pw/)
   | (2.5) [gopass](https://github.com/gopasspw/gopass)
   | (2.5) [keeweb](https://keeweb.info/)
   | (2.5) [pa](https://github.com/biox/pa)
   | (2.5) [keydex](https://github.com/shikaan/keydex)
   | (2.5) [Secrets](https://apps.gnome.org/Secrets/)
   | (2.5) [SpicyPass](https://github.com/JFreegman/SpicyPass)
* (2) [ots](https://github.com/sniptt-official/ots)
* (2) [minisign](https://jedisct1.github.io/minisign/)
* (2) [trufflehog](https://github.com/trufflesecurity/trufflehog)
* (2) [clamAV](https://www.clamav.net/)
* (2) [obfuscate](https://apps.gnome.org/app/com.belmoussaoui.Obfuscate/)
* (2) [authenticator](https://gitlab.gnome.org/World/Authenticator)
* (2) [hashcat](https://github.com/hashcat/hashcat)
* (2) [collision](https://collision.geopjr.dev/)
* (2) [paper-age](https://github.com/matiaskorhonen/paper-age)
* (R) [age](https://github.com/FiloSottile/age)
   | (2) [rage](https://github.com/str4d/rage)
* (3) [kestrel](https://github.com/finfet/kestrel)
* (2) [sops](https://github.com/getsops/sops) + [sops-nix](https://github.com/Mic92/sops-nix)

## Tuxedo-only

* (2) [tuxedo-rs](https://github.com/AaronErhardt/tuxedo-rs)
* (2) [tailor-gui](https://search.nixos.org/packages?channel=23.11&show=tailor-gui&from=0&size=50&sort=relevance&type=packages&query=tuxedo+control)
* (4.5) [TUXEDO Control Center - GNU/Linux.ch](https://gnulinux.ch/tuxedo-control-center)

## Debian-based-only

* (6) [uktools](https://github.com/usbkey9/uktools)
* (1) [nala](https://github.com/volitank/nala)
* (2) [deb-get](https://github.com/wimpysworld/deb-get)
* (2) [pacstall](https://pacstall.dev/)

## Non-NixOS-only

* (2) [mkdesk](https://gitlab.com/mr-draxs/mkdesk)

## NixOS-only

* (2) [comma](https://github.com/nix-community/comma)

## Nvidia-only

* (2) [zenith-nvidia](https://github.com/bvaisvil/zenith) (for devices with Nvidia)
* (2) [nvitop](https://github.com/XuehaiPan/nvitop)
   | (2) [nvtop](https://github.com/Syllo/nvtop) [NixOS Search - Packages - nvtop](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dnvtop)
* (2) [gpustat](https://github.com/wookayin/gpustat)
