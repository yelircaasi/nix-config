# File Management

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

## TUI File Managers

* ( ) $$$ [MHNightCat/superfile](https://github.com/MHNightCat/superfile)
* (1) [xplr](https://github.com/sayanarijit/xplr)
* (1) [yazi](https://github.com/sxyazi/yazi) [yazi-rs.github](https://yazi-rs.github.io/)
* (1) [nnn](https://github.com/jarun/nnn)
* (2) [projectable](https://github.com/dzfrias/projectable)
* ( ) [TUIFIManager](https://github.com/GiorgosXou/TUIFIManager)
* ( ) [felix](https://github.com/kyoheiu/felix)
* ( ) [vifm](https://github.com/vifm/vifm)
* ( ) [fm](https://github.com/mistakenelf/fm)
* ( ) [twf](https://github.com/wvanlint/twf)
* ( ) [mc](https://www.midnight-commander.org/)
* ( ) [lf](https://github.com/gokcehan/lf)
* ( ) [fman](https://github.com/nore-dev/fman)
* ( ) [fff](https://github.com/dylanaraps/fff)
* ( ) [ranger](https://github.com/ranger/ranger)
* ( ) [joshuto](https://github.com/kamiyaa/joshuto)
* ( ) [hunter](https://github.com/rabite0/hunter)
* ( ) [rnr](https://github.com/bugnano/rnr)
* ( ) [goful](https://github.com/anmitsu/goful)
* ( ) [dmenufm](https://github.com/huijunchen9260/dmenufm)
* (6) [cfiles](https://github.com/mananapr/cfiles)
* ( ) [basht](https://gitlab.com/christosangel/basht)
* ( ) [dzfrias/projectable: :dizzy: A TUI file manager built for projects](https://github.com/dzfrias/projectable)
* ( ) [nimmm](https://github.com/joachimschmidt557/nimmm) [nixos](https://github.com/NixOS/nixpkgs/blob/nixos-23.11/pkgs/applications/file-managers/nimmm/default.nix)

## CLI File Manager

* (2) [clifm](https://github.com/leo-arch/clifm)
   | ( ) [walk](https://github.com/antonmedv/walk)

## Oil and Vinegar

* () ) [edir](https://github.com/bulletmark/edir)
* ( ) [vidir](https://linux.die.net/man/1/vidir)

## Launche-Based

* ( ) [marvinkreis/rofi-file-browser-extended: Use rofi to quickly open files](https://github.com/marvinkreis/rofi-file-browser-extended)

## GUI File Managers

* -> ( ) [Linux File Managers](https://www.tecmint.com/linux-file-managers/)
* ( ) [pop-os/cosmic-files](https://github.com/pop-os/cosmic-files)
* (6) [xplorer](https://github.com/kimlimjustin/xplorer)
* (4) [mucommander](https://github.com/mucommander/mucommander)
* (2) [thunar](https://docs.xfce.org/xfce/thunar/start)
* (4) [doublecmd](https://github.com/doublecmd/doublecmd) - interesting because written in Pascal, but unclear whether I can even customize the gui colors (bar, sides, etc)
* (2) [nemo](https://github.com/linuxmint/nemo)
* (2) [nautilus](...)
* (2) [spacefm](https://github.com/thermitegod/spacefm) - need to package for Nix and include plugins, but looks quite promising [site](http://ignorantguru.github.io/spacefm/spacefm-manual-en.html) [SpaceFM User's Manual](http://ignorantguru.github.io/spacefm/spacefm-manual-en.html%23programfiles-home)
  | ( ) [IgnorantGuru/spacefm: SpaceFM File Manager](https://github.com/IgnorantGuru/spacefm)
* (2) [dolphin](https://apps.kde.org/dolphin/)
* (2) [pcmanfm](https://github.com/lxde/pcmanfm)
* (2) [pcmanfm-qt](https://github.com/lxqt/pcmanfm-qt) [site](https://lxqt-project.org/) File manager and desktop icon manager (Qt port of PCManFM and libfm
* ( ) [elementary](https://github.com/elementary/files/) - [Why I use the Enlightenment file manager on Linux | Opensource.com](https://opensource.com/article/22/12/linux-file-manager-enlightenment)
* ( ) [flitz](https://github.com/MartinThoma/flitz)
* ( ) [Home | DFileManager](https://sourceforge.net/projects/dfilemanager/) [probonopd/dfilemanager: File manager written in Qt/C++ for a Mac-like experience](https://github.com/probonopd/dfilemanager?tab%3Dreadme-ov-file)

## Other

* (2) [filebrowser](https://github.com/filebrowser/filebrowser) (web-based) [Welcome - File Browser](https://filebrowser.org/)
* (4) [CloudCommander](https://cloudcmd.io/)
* (2) [catcli](https://github.com/deadc0de6/catcli)

## Compression and Extraction

* ( ) [snappy | A fast compressor/decompressor](https://google.github.io/snappy/)
* ( ) [bzip3](https://github.com/kspalaiologos/bzip3)
* ( ) [Curtail](https://apps.gnome.org/app/com.github.huluti.Curtail/)
* ( ) [dtrx](https://github.com/dtrx-py/dtrx)
* ( ) [tuiarchiver](https://codeberg.org/dnalor/tuiarchiver/)
* ( ) [archiver](https://github.com/mholt/archiver)
* ( ) [7zip](https://www.7-zip.org/download.html)
* ( ) [unrar](https://github.com/pmachapman/unrar)
* ( ) [peazip](https://peazip.github.io/) (written in Pascal!)

## File Hooks and Daemons

* ( ) [watchexec](https://github.com/watchexec/watchexec)
* ( ) [entr](https://github.com/eradman/entr) [entr site](https://eradman.com/entrproject/)
* ( ) [inotify-tools](https://github.com/inotify-tools/inotify-tools)
* ( ) [watchman](https://github.com/facebook/watchman) | ( ) [viddy](https://github.com/sachaos/viddy) | ( ) [watch](https://github.com/tj/watch)
* ( ) [watchexec](https://github.com/watchexec/watchexec)
* ( ) [gaze](https://github.com/wtetsu/gaze)
* ( ) [entr](https://github.com/eradman/entr)
* ( ) [fswatch](https://github.com/alandipert/fswatch)
* ( ) [wfh](https://github.com/kzys/wfh)
* ( ) [guard](https://github.com/guard/guard)
* ( ) [chokidar-cli](https://github.com/JoseGoncalves/chokidar-cli)
* ( ) [watcher](https://github.com/sethigeet/watcher)
* ( ) [bacon](https://github.com/troykinsella/bacon)

### Synchronization

* ( ) [foldersync](https://foldersync.io/) - seems like a good mobile solution
* ( ) [rclone](https://rclone.org/) + (optionally)
* ( ) [celeste](https://github.com/hwittenborn/celeste) | ( ) [syncthing](https://syncthing.net/) | ( ) [Zaloha2.sh](https://github.com/Fitus/Zaloha2.sh)
* ( ) [rclone-tui](https://github.com/darkhz/rclone-tui)
* ( ) [rsync](https://github.com/WayneD/rsync)
* ( ) [bitpocket](https://github.com/sickill/bitpocket)

## Cloud Drive

* (2) Proton Drive
* ( ) [NextCloud](https://nextcloud.com/)
* ( ) [OwnCloud](https://owncloud.com/client/)
* ( ) [Dropbox](https://www.dropbox.com/install?os=lnx)
* ( ) [Mega](https://mega.io/desktop)
* ( ) [Seafile](https://www.seafile.com/en/home/)
* ( ) [google-drive-upload](https://github.com/labbots/google-drive-upload)
* ( ) [gdrive-downloader](https://github.com/Akianonymus/gdrive-downloader)
* ( ) [nextcloud_share_url_downloader](https://github.com/aertslab/nextcloud_share_url_downloader)
* ( ) [Murena Cloud](https://murena.com/cloud-subscriptions/?wcpbc-manual-country=DE)

## Download Management

* ( ) [aria2](https://aria2.github.io/)
* ( ) [ArrowDL](https://github.com/setvisible/ArrowDL)
* ( ) [flareget](https://flareget.com/)
* ( ) [freedownloadmanager](https://www.freedownloadmanager.org/)
* ( ) [jdownloader](https://jdownloader.org/)
* ( ) [kget](https://apps.kde.org/kget/)
* ( ) [motrix](https://motrix.app/)
* ( ) [ugetdm](https://ugetdm.com/)
* ( ) [xtremedownloadmanager](https://xtremedownloadmanager.com/)

## File Transfer, Up- and Download

* ( ) [airpaste](https://github.com/mafintosh/airpaste)
* ( ) [croc6](https://schollz.com/blog/croc6/)
* ( ) [crossftp](https://www.crossftp.com/ftp-client.htm)
* ( ) [d-lan](http://www.d-lan.net/)
* ( ) [filezilla](https://filezilla-project.org/)
* ( ) [nitroshare](https://nitroshare.net/)
* ( ) [onionshare](https://onionshare.org/)
* ( ) [PB for Desktop](https://sidneys.github.io/pb-for-desktop/)
* ( ) [quazaa](https://sourceforge.net/projects/quazaa/)
* ( ) [spideroak](https://spideroak.com/)
* ( ) [Warp](https://apps.gnome.org/app/app.drey.Warp/)
* ( ) [warpinator](https://github.com/linuxmint/warpinator)
* ( ) [magic-wormhole](https://github.com/warner/magic-wormhole)
* ( ) [croc](https://github.com/schollz/croc)
* ( ) [transfer.sh](https://transfer.sh/)
* ( ) [filestash](http://www.filestash.app/)
* ( ) [sshfs](https://github.com/libfuse/sshfs)
* ( ) [curl](https://github.com/curl/curl)
* ( ) [feuille](https://basedwa.re/tmtt/feuille)
* ( ) [ffsend](https://github.com/timvisee/ffsend)
* ( ) [ffsend](https://github.com/timvisee/ffsend)
* ( ) [jitter](https://github.com/sharpcdf/jitter)
* ( ) [lftp](https://github.com/lavv17/lftp)
* ( ) [magic-wormhole](https://github.com/warner/magic-wormhole)
* ( ) [onionshare](https://github.com/onionshare/onionshare)
* ( ) [portal](https://github.com/SpatiumPortae/portal)
* ( ) [sharing](https://github.com/parvardegr/sharing)
* ( ) [sitecopy](http://www.manyfish.co.uk/sitecopy/)
* ( ) [stftp](https://sourceforge.net/projects/stftp/)
* ( ) [tran](https://github.com/abdfnx/tran)
* ( ) [unison](https://github.com/bcpierce00/unison)
* ( ) [woof/](https://github.com/simon-budig/woof/)
* ( ) [xh](https://github.com/ducaale/xh)
* ( ) [ffsend](https://github.com/timvisee/ffsend)
* ( ) [share-cli](https://github.com/marionebl/share-cli)
* ( ) [portal](https://github.com/ZinoKader/portal)

### QR

* ( ) [qr-filetransfer](https://github.com/sdushantha/qr-filetransfer)
* ( ) [qrcp](https://github.com/claudiodangelis/qrcp)
* ( ) [Gnome Decoder](https://apps.gnome.org/app/com.belmoussaoui.Decoder/) - Fancy yet simple QR Codes scanner and generator.

## Libraries

* ( ) [LibFM + PCManFM 1.3.2 released! – LXDE Blog](https://blog.lxde.org/2021/02/19/libfm-pcmanfm-1-3-2-released/)
* ( ) [libfm-1.3.2](https://www.linuxfromscratch.org/blfs/view/12.0//lxde/libfm.html)

## Remote Desktop

* ( ) [anydesk](https://anydesk.com/en)
* ( ) [barrier/](https://github.com/debauchee/barrier/)
* ( ) [Connections](https://apps.gnome.org/app/org.gnome.Connections/)
* ( ) [Pushbullet](https://www.pushbullet.com/)
* ( ) [Rustdesk](https://rustdesk.com/)
* ( ) [TeamViewer](https://www.teamviewer.com/)

## Torrent

* ( ) [stig](https://github.com/rndusr/stig)
* ( ) [aria2](https://github.com/tatsuhiro-t/aria2)
* ( ) [Deluge](https://git.deluge-torrent.org/deluge)
* ( ) [mabel](https://github.com/smmr-software/mabel)
* ( ) [rtorrent](https://github.com/rakshasa/rtorrent)
* ( ) [torrentCLI](https://github.com/amogusussy/torrentCLI)
* ( ) [transg-tui](https://github.com/PanAeon/transg-tui)
* ( ) [transmission](https://github.com/transmission/transmission)
* ( ) [transgui](https://sourceforge.net/projects/transgui/)
* ( ) [transmission-cli](https://github.com/popstas/transmission-cli)
* ( ) [transmission-remote-cli](https://github.com/fagga/transmission-remote-cli)
* ( ) [Fragments](https://apps.gnome.org/app/de.haeckerfelix.Fragments/)
* ( ) [ktorrent](https://www.kde.org/applications/internet/ktorrent/)
* ( ) [qbittorrent](https://www.qbittorrent.org/)
* ( ) [qBittorrent-Enhanced-Edition](https://github.com/c0re100/qBittorrent-Enhanced-Edition)
* ( ) [tixati](https://www.tixati.com/)
* ( ) [vuze](https://www.vuze.com/)
* ( ) [webtorrent](https://webtorrent.io/desktop/)
* ( ) [webtorrent-cli](https://github.com/feross/webtorrent-cli)

## Clipboard Sharing

* ( ) [pbproxy](https://github.com/nikvdp/pbproxy)
* ( ) [clipsync](https://github.com/marcopaganini/clipsync)
* ( ) [shcopy](https://github.com/aymanbagabas/shcopy)
* ( ) [pbgopy](https://github.com/nakabonne/pbgopy)

## App-Internal

* ( ) [bodil/vscode-file-browser](https://github.com/bodil/vscode-file-browser)

## Remote

* ( ) [mickael-kerjean/filestash](https://github.com/mickael-kerjean/filestash)

## Linux Mobile

* ( ) [tchx84/Portfolio: A minimalist file manager for those who want to use Linux mobile devices.](https://github.com/tchx84/Portfolio)
