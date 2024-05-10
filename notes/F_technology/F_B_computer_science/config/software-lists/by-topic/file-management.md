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

* (2) $$$ [MHNightCat/superfile](https://github.com/MHNightCat/superfile)
* (1) [xplr](https://github.com/sayanarijit/xplr)
* (1) [yazi](https://github.com/sxyazi/yazi) [yazi-rs.github](https://yazi-rs.github.io/)
* (1) [nnn](https://github.com/jarun/nnn)
* (2) [projectable](https://github.com/dzfrias/projectable)
* (2.5) [TUIFIManager](https://github.com/GiorgosXou/TUIFIManager)
* (2.5) [felix](https://github.com/kyoheiu/felix)
* (2.5) [vifm](https://github.com/vifm/vifm)
* (2.5) [fm](https://github.com/mistakenelf/fm)
* (2.5) [twf](https://github.com/wvanlint/twf)
* (2.5) [mc](https://www.midnight-commander.org/)
* (2.5) [lf](https://github.com/gokcehan/lf)
* (2.5) [fman](https://github.com/nore-dev/fman)
* (2.5) [fff](https://github.com/dylanaraps/fff)
* (2.5) [ranger](https://github.com/ranger/ranger)
* (2.5) [joshuto](https://github.com/kamiyaa/joshuto)
* (2.5) [hunter](https://github.com/rabite0/hunter)
* (2.5) [rnr](https://github.com/bugnano/rnr)
* (2.5) [goful](https://github.com/anmitsu/goful)
* (6) [dmenufm](https://github.com/huijunchen9260/dmenufm)
* (6) [cfiles](https://github.com/mananapr/cfiles)
* (2.5) [basht](https://gitlab.com/christosangel/basht)
* (2.5) [dzfrias/projectable: :dizzy: A TUI file manager built for projects](https://github.com/dzfrias/projectable)
* (2.5) [nimmm](https://github.com/joachimschmidt557/nimmm) [nixos](https://github.com/NixOS/nixpkgs/blob/nixos-23.11/pkgs/applications/file-managers/nimmm/default.nix)

## CLI File Manager

* (2) [clifm](https://github.com/leo-arch/clifm)
* (2) [walk](https://github.com/antonmedv/walk)

## Oil and Vinegar

* (2) [edir](https://github.com/bulletmark/edir)
* (6) [vidir](https://linux.die.net/man/1/vidir)
* (2.5) [mmv-c](https://github.com/mcauley-penney/mmv-c)
* (2.5) [mmv](https://github.com/itchyny/mmv)
* (2.5) [massren](https://github.com/laurent22/massren)

## Launche-Based

* (2) [marvinkreis/rofi-file-browser-extended: Use rofi to quickly open files](https://github.com/marvinkreis/rofi-file-browser-extended) -> use with rofi-wayland -> re-write for other launcher?

## GUI File Managers

* (R) [Linux File Managers](https://www.tecmint.com/linux-file-managers/)
* (5) [pop-os/cosmic-files](https://github.com/pop-os/cosmic-files)
* (5) [xplorer](https://github.com/kimlimjustin/xplorer)
* (5) [filetree](https://github.com/Wervice/Codelink?tab=readme-ov-file#filetree)
* (4) [mucommander](https://github.com/mucommander/mucommander)
* (2) [thunar](https://docs.xfce.org/xfce/thunar/start)
* (4) [doublecmd](https://github.com/doublecmd/doublecmd) - interesting because written in Pascal, but unclear whether I can even customize the gui colors (bar, sides, etc)
* (2) [nemo](https://github.com/linuxmint/nemo)
* (2) [nautilus](https://apps.gnome.org/Nautilus/)
* (2) [spacefm](https://github.com/thermitegod/spacefm) - need to package for Nix and include plugins, but looks quite promising [site](http://ignorantguru.github.io/spacefm/spacefm-manual-en.html) [SpaceFM User's Manual](http://ignorantguru.github.io/spacefm/spacefm-manual-en.html%23programfiles-home)
  | (6) [IgnorantGuru/spacefm: SpaceFM File Manager](https://github.com/IgnorantGuru/spacefm)
* (2) [dolphin](https://apps.kde.org/dolphin/)
* (2) [pcmanfm](https://github.com/lxde/pcmanfm)
* (2) [pcmanfm-qt](https://github.com/lxqt/pcmanfm-qt) [site](https://lxqt-project.org/) File manager and desktop icon manager (Qt port of PCManFM and libfm
* (6) [elementary](https://github.com/elementary/files/) - [Why I use the Enlightenment file manager on Linux | Opensource.com](https://opensource.com/article/22/12/linux-file-manager-enlightenment)
* (5) [flitz](https://github.com/MartinThoma/flitz)
* (5) [Home | DFileManager](https://sourceforge.net/projects/dfilemanager/) [probonopd/dfilemanager: File manager written in Qt/C++ for a Mac-like experience](https://github.com/probonopd/dfilemanager?tab%3Dreadme-ov-file)

## Other

* (2) [filebrowser](https://github.com/filebrowser/filebrowser) (web-based) [Welcome - File Browser](https://filebrowser.org/)
* (4) [CloudCommander](https://cloudcmd.io/)
* (2) [catcli](https://github.com/deadc0de6/catcli)

## Compression and Extraction

* (2) [archiver](https://github.com/mholt/archiver)
* (2) [Curtail](https://apps.gnome.org/app/com.github.huluti.Curtail/)
* (2) [dtrx](https://github.com/dtrx-py/dtrx)
* (2) [tuiarchiver](https://codeberg.org/dnalor/tuiarchiver/)
* (2?) [7zip](https://www.7-zip.org/download.html)
* (2?) [bzip3](https://github.com/kspalaiologos/bzip3)
* (2?) [peazip](https://github.com/peazip/PeaZip) [site](https://peazip.github.io/) (written in Pascal! -> read!)
* (2?) [snappy | A fast compressor/decompressor](https://google.github.io/snappy/)
* (2?) [unrar](https://github.com/pmachapman/unrar)

## File Hooks and Daemons

* (2.5) [watchexec](https://github.com/watchexec/watchexec)
   | (2.5) [entr](https://github.com/eradman/entr) [entr site](https://eradman.com/entrproject/)
   | (2.5) [watchman](https://github.com/facebook/watchman) - [site](https://facebook.github.io/watchman/) $$$$$$$$$
   | (5) [watch](https://github.com/tj/watch)
   | (2.5) [chokidar-cli](https://github.com/JoseGoncalves/chokidar-cli)
   | (2.5) [gaze](https://github.com/wtetsu/gaze)
   | (2.5) [guard](https://github.com/guard/guard) - see amazing [plugins](https://github.com/guard/guard/wiki/Guard-Plugins) $$$$$$$
* (2) [inotify-tools](https://github.com/inotify-tools/inotify-tools)
* (2) [viddy](https://github.com/sachaos/viddy)
* (5) [bacon](https://github.com/troykinsella/bacon)
* (5) [fswatch](https://github.com/alandipert/fswatch)
* (5) [watcher](https://github.com/sethigeet/watcher)
* (5) [wfh](https://github.com/kzys/wfh) $$$

### Synchronization

* (2.5) [foldersync](https://foldersync.io/) - seems like a good mobile solution
* (2) [rclone](https://rclone.org/)
       + (2) [rclone-tui](https://github.com/darkhz/rclone-tui)
* (2) [celeste](https://github.com/hwittenborn/celeste)
* (2) [syncthing](https://syncthing.net/) $$$
* (2.5) [Zaloha2.sh](https://github.com/Fitus/Zaloha2.sh)
* (2) [rsync](https://github.com/WayneD/rsync) $$$
       + [rsync-tui](https://gitlab.com/KKlochko/tui-rsync)
* (2.5) [bitpocket](https://github.com/sickill/bitpocket)

### Backup

* (2.5) [bupstash](https://github.com/andrewchambers/bupstash)
   | (2.5) [duplicity](https://gitlab.com/duplicity/duplicity) + [duply](https://github.com/Oefenweb/duply)
   | (2.5) [bup](https://github.com/bup/bup)
   | (2.5) [borg](https://github.com/borgbackup)
   | (2.5) [restic](https://github.com/restic/restic)
   | (2.5) [vorta](https://vorta.borgbase.com/) - GUI for Borg
   | (2.5) [rsnapshot](https://github.com/rsnapshot/rsnapshot) - GUI for rsync
   | (2.5) [kopia](https://kopia.io/) - GUI and CLI
* (5) [batstat](https://github.com/Juve45/batstat)
   | (3) [powertop](https://github.com/fenrus75/powertop)
* (2) [brightnessctl](https://github.com/Hummer12007/brightnessctl)
* (5) [shallow-backup](https://github.com/alichtman/shallow-backup)

## Cloud Drive

* (2) Proton Drive
* (2) [NextCloud](https://nextcloud.com/)
* (2.5) [OwnCloud](https://owncloud.com/client/)
* (6) [Dropbox](https://www.dropbox.com/install?os=lnx)
* (2) [Mega](https://mega.io/desktop)
* (2.5) [Seafile](https://www.seafile.com/en/home/)
* (5) [google-drive-upload](https://github.com/labbots/google-drive-upload)
* (5) [gdrive-downloader](https://github.com/Akianonymus/gdrive-downloader)
* (2) [nextcloud_share_url_downloader](https://github.com/aertslab/nextcloud_share_url_downloader)
* (2.5) [Murena Cloud](https://murena.com/cloud-subscriptions/?wcpbc-manual-country=DE)

## Download Management

* (6) [flareget](https://flareget.com/)
* (6) [freedownloadmanager](https://www.freedownloadmanager.org/)
* (6) [jdownloader](https://jdownloader.org/)
* (2.5) [ugetdm](https://ugetdm.com/) $$$
   | (2.5) [motrix](https://motrix.app/)
   | (2.5) [aria2](https://aria2.github.io/) $$$
   | (2.5) [xdm](https://github.com/subhra74/xdm) ([xtremedownloadmanager](https://xtremedownloadmanager.com/))
   | (2.5) [ArrowDL](https://github.com/setvisible/ArrowDL)
   | (2.5) [kget](https://apps.kde.org/kget/)

## File Transfer, Up- and Download

* (2) [curl](https://github.com/curl/curl)
* (2) [Warp](https://apps.gnome.org/app/app.drey.Warp/)
* (2) [unison](https://github.com/bcpierce00/unison) in OCaml!
* (2.5) [airpaste](https://github.com/mafintosh/airpaste)
   | (2.5) [croc](https://github.com/schollz/croc)
   | (2.5) [croc6](https://schollz.com/blog/croc6/)
   | (2.5) [crossftp](https://www.crossftp.com/ftp-client.htm)
   | (2.5) [d-lan](http://www.d-lan.net/)
   | (2.5) [feuille](https://basedwa.re/tmtt/feuille)
   | (2.5) [ffsend](https://github.com/timvisee/ffsend)
   | (2.5) [filestash](http://www.filestash.app/)
   | (2.5) [filezilla](https://filezilla-project.org/)
   | (2.5) [jitter](https://github.com/sharpcdf/jitter)
   | (2.5) [lftp](https://github.com/lavv17/lftp)
   | (2.5) [magic-wormhole](https://github.com/warner/magic-wormhole)
   | (2.5) [nitroshare](https://nitroshare.net/)
   | (2.5) [onionshare](https://github.com/onionshare/onionshare) [onionshare](https://onionshare.org/)
   | (2.5) [PB for Desktop](https://sidneys.github.io/pb-for-desktop/)
   | (2.5) [portal](https://github.com/SpatiumPortae/portal)
   | (2.5) [portal](https://github.com/ZinoKader/portal)
   | (2.5) [quazaa](https://sourceforge.net/projects/quazaa/)
   | (2.5) [share-cli](https://github.com/marionebl/share-cli)
   | (2.5) [sharing](https://github.com/parvardegr/sharing)
   | (2.5) [sitecopy](http://www.manyfish.co.uk/sitecopy/)
   | (2.5) [spideroak](https://spideroak.com/)
   | (2.5) [sshfs](https://github.com/libfuse/sshfs)
   | (2.5) [stftp](https://sourceforge.net/projects/stftp/)
   | (2.5) [tran](https://github.com/abdfnx/tran)
   | (2.5) [transfer.sh](https://transfer.sh/)
   | (2.5) [warpinator](https://github.com/linuxmint/warpinator)
   | (2.5) [woof/](https://github.com/simon-budig/woof/)
   | (2.5) [xh](https://github.com/ducaale/xh)

### QR

* (5) [qr-filetransfer](https://github.com/sdushantha/qr-filetransfer)
* (2) [qrcp](https://github.com/claudiodangelis/qrcp)
* (2) [Gnome Decoder](https://apps.gnome.org/app/com.belmoussaoui.Decoder/) - Fancy yet simple QR Codes scanner and generator.

## Libraries

* (R) [LibFM + PCManFM 1.3.2 released! – LXDE Blog](https://blog.lxde.org/2021/02/19/libfm-pcmanfm-1-3-2-released/)
* (R) [libfm-1.3.2](https://www.linuxfromscratch.org/blfs/view/12.0//lxde/libfm.html)

## Remote Desktop

* (6) [anydesk](https://anydesk.com/en)
* (2) [barrier](https://github.com/debauchee/barrier/)
* (2) [Connections](https://apps.gnome.org/app/org.gnome.Connections/)
* (2) [Pushbullet](https://www.pushbullet.com/)
* (2) [Rustdesk](https://rustdesk.com/)
* (6) [TeamViewer](https://www.teamviewer.com/)
* (2) [Guacamole](https://guacamole.apache.org/)

## Torrent

* (2.5) [stig](https://github.com/rndusr/stig)
* (2.5) [aria2](https://github.com/tatsuhiro-t/aria2)
* (2.5) [Deluge](https://git.deluge-torrent.org/deluge)
* (2.5) [mabel](https://github.com/smmr-software/mabel)
* (2.5) [rtorrent](https://github.com/rakshasa/rtorrent)
* (2.5) [torrentCLI](https://github.com/amogusussy/torrentCLI)
* (2.5) [transg-tui](https://github.com/PanAeon/transg-tui)
* (2.5) [transmission](https://github.com/transmission/transmission)
* (2.5) [transgui](https://sourceforge.net/projects/transgui/)
* (2.5) [transmission-cli](https://github.com/popstas/transmission-cli)
* (2.5) [transmission-remote-cli](https://github.com/fagga/transmission-remote-cli)
* (2.5) [Fragments](https://apps.gnome.org/app/de.haeckerfelix.Fragments/)
* (2.5) [ktorrent](https://www.kde.org/applications/internet/ktorrent/)
* (2.5) [qbittorrent](https://www.qbittorrent.org/)
* (2.5) [qBittorrent-Enhanced-Edition](https://github.com/c0re100/qBittorrent-Enhanced-Edition)
* (2.5) [tixati](https://www.tixati.com/)
* (2.5) [vuze](https://www.vuze.com/)
* (2.5) [webtorrent](https://webtorrent.io/desktop/)
* (2.5) [webtorrent-cli](https://github.com/feross/webtorrent-cli)

## Clipboard Sharing

* (5) [pbproxy](https://github.com/nikvdp/pbproxy)
* (2) [clipsync](https://github.com/marcopaganini/clipsync)
* (2) [shcopy](https://github.com/aymanbagabas/shcopy)
* (5) [pbgopy](https://github.com/nakabonne/pbgopy)

## App-Internal

* (2) [bodil/vscode-file-browser](https://github.com/bodil/vscode-file-browser)

## Remote

* (2) [mickael-kerjean/filestash](https://github.com/mickael-kerjean/filestash)

## Linux Mobile

* (2) [tchx84/Portfolio: A minimalist file manager for those who want to use Linux mobile devices.](https://github.com/tchx84/Portfolio)
