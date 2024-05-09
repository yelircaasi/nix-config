# Media

## Miscellaneous

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

## Editing and Creation

### Video Editing, Conversion, etc

* (2) [editly](https://github.com/mifi/editly) - Declarative command-line video editing.
* (2) [FFmpeg](https://github.com/FFmpeg/FFmpeg) - The Swiss knife of video editing from the command line. - multimedia, including audio, video, subtitles, metadata
* (2.5) [Vidcutter](https://github.com/ozmartian/vidcutter) - Cross-platform Qt5 based app for quick and easy video trimming/splitting and merging/joining for simple quick edits.
* (2.5) [Olive](https://www.olivevideoeditor.org/) - Olive is a free non-linear video editor aiming to provide a fully-featured alternative to high-end professional video editing software.
* (2.5) [Kdenlive](https://kdenlive.org/) - Kdenlive is a Non-Linear Video Editor, which is much more powerful than beginners’ (linear) editors.
* (2.5) [plumber](https://github.com/keshavbhatt/plumber) - video editor
* (2.5) [Shotcut](https://www.shotcut.org/) - Shotcut is a free, open source, cross-platform video editor with support for hundreds of audio and video formats and codecs and a sleek, intuitive interface.
* (2.5) [Pitivi](http://www.pitivi.org/) - A free video editor with a beautiful and intuitive user interface, a clean codebase and a fantastic community.
* (2.5) [OpenShot](https://www.openshot.org/) - OpenShot is a free, simple-to-use, feature-rich video editor for Linux.

### Audio Editing, conversion, etc

#### Powerful Audio Editors

-> see ffmpeg for CLI

* (2.5) [Ardour](https://ardour.org/) - Digital Audio Workstation (DAW). ([GNU GPLv2](https://ardour.org/copying.html))
* (2.5) [Audacity](http://www.audacityteam.org/) - Sound recording and post-processing. ([GNU GPLv2+](http://www.audacityteam.org/about/license/))
* (2.5) [REAPER | Audio Production Without Limits](https://www.reaper.fm/)
* (2.5) [Soundux](https://soundux.rocks/) - A cross-platform soundboard.
* (2.5) [Ocenaudio](https://www.ocenaudio.com/whatis) - A cross-platform, easy to use, fast and functional audio editor. It is the ideal software for people who need to edit and analyze audio files.
* (2.5) [LMMS](https://lmms.io/) - Complete digital audio workstation. ([GNU GPLv2+](https://github.com/LMMS/lmms/blob/master/LICENSE.txt))

#### Audio Conversion

* (2.5) [Soundconverter](http://soundconverter.org/) - Leading audio file converter. Aims to be simple to use, and very fast.
* (2) [freac](https://github.com/enzo1982/freac) - fre:ac is a free audio converter and CD ripper with support for various popular formats and encoders. It currently converts between MP3, MP4/M4A, WMA, Ogg Vorbis, FLAC, AAC, WAV and Bonk formats. (GUI)

#### Audio File Tagging

* (2.5) [Kid3](https://kid3.kde.org/) - Edit tags of multiple files, e.g. the artist, album, year and genre of all mp3 files of an album.
   | (2.5) [MusicBrainz Picard](https://picard.musicbrainz.org/) - Picard is a cross-platform music tagger written in Python.

### Gif Creation

* (2) [gifgen](https://github.com/lukechilds/gifgen) - Simple high quality GIF encoding (2-passcolor palette enhancement approach)
* (2) [gifsicle](https://github.com/kohler/gifsicle) - Create, manipulate, and optimize GIF images and animations. -> (5) - change gifview to work under Wayland
* (5) [ttygif](https://github.com/icholy/ttygif) - Convert terminal recordings to animated gifs.
* (5) [ttystudio](https://github.com/chjj/ttystudio) - A terminal-to-gif recorder minus the headaches.
* (5) [givegif](https://github.com/passy/givegif) - GIFs on the command line - in Haskell!
* (2) [vhs](https://github.com/charmbracelet/vhs) - Write terminal GIFs as code for integration testing and demoing your CLI tools.
* (2) [gifcurry](https://github.com/lettier/gifcurry) - [Gifcurry](https://lettier.github.io/gifcurry/) - Your open source video to GIF maker built with Haskell. -> (5) needs maintenance
* (2) [gifcast](https://github.com/dstein64/gifcast) - [gifcast](https://dstein64.github.io/gifcast/): Converts an asciinema cast to an animated GIF.
* (6) [gifex](https://github.com/keshavbhatt/gifex) - GIF recorder - appears to be X11-only

### Drawing

* (2) [diagrams.net](https://app.diagrams.net/), [source](https://github.com/jgraph/drawio)
* (2) [draw](https://github.com/maaslalani/draw) - draw is an simple drawing tool in the terminal. Hold your mouse down and move it across the screen to draw anything you want!
* (2) [flyde](https://github.com/flydelabs/flyde) -> [see also trigg](https://www.trigg.dev)
* (2) [knotter](https://gitlab.com/mattbas/Knotter) - A Program designed solely to help design and create Celtic Knots. -> RosettaProjects
* (2) [lorien](https://github.com/mbrlabs/Lorien)
* (2) [openboard](https://github.com/OpenBoard-org/OpenBoard) [site](https://openboard.ch/)
* (2) [tldraw](https://tldraw.com/), [source](https://github.com/tldraw/tldraw)
* (4) [vectr](https://vectr.com/)
* (2) [Inkscape](https://inkscape.org/en/) - A powerful, free design tool for you , whether you are an illustrator, designer, web designer or just someone who needs to create some vector imagery.
* (2) [Ipe](http://ipe.otfried.org/) - Ipe is a LaTeX powered drawing editor for creating figures and presentations in PDF format. - [ipe.otfried.org/](https://ipe.otfried.org/)
* (2) [rnote](https://github.com/flxzt/rnote) -> even better if I get a USB stylus pad such as [this](https://www.amazon.de/-/en/Deco-Fun-Graphics-Learning-Distance/dp/B093TC1XCZ)

#### Boards

* (2) [excalidraw](https://excalidraw.com/) ([read](https://offbyone.us/posts/why-is-excalidraw-so-good/))
* (2) [wbo](https://wbo.ophir.dev/) $$$

#### Cool Software - Needs Theming Fixes

* (5) [vym](https://github.com/insilmaril/vym) $$$
* (5) [freeplane](https://github.com/freeplane/freeplane) - [docs.freeplane.org/](https://docs.freeplane.org/) $$$
* (5) [heimer](https://github.com/juzzlin/Heimer) $$$

#### Ascii Art

* (2) [ASCII_Art_Paint](https://github.com/Kirilllive/ASCII_Art_Paint)
* (5) [asciieditor](https://github.com/akirbaes/asciieditor)
* (5) [aewam](https://aewan.sourceforge.net/)

#### Text-to-Graphic

* (2) [D2](https://d2lang.com/) [d2](https://github.com/terrastruct/d2) - D2 is a modern diagram scripting language that turns text to diagrams.
* (2) [typograms](https://github.com/google/typograms)
* (2) [js-sequence-diagrams](https://bramp.github.io/js-sequence-diagrams/)

#### Vector Drawing

* (2) [Graphite](https://github.com/GraphiteEditor/Graphite) 2D vector
   | (2.5) [Karbon](https://www.calligra.org/karbon/) - An open source vector drawing program.

#### Visualization

* (2) [motion-canvas](https://github.com/motion-canvas/motion-canvas)

##### Visualization Libraries

* (2) [manim](https://github.com/ManimCommunity/manim)
* (2) [lets-plot](https://lets-plot.org/)
* (2) [echarts](https://github.com/apache/echarts)
* (2) [observable](https://observablehq.com/plot/)
* (2) [mermaidjs](https://mermaid.js.org/)
* (2) [d3js](https://d3js.org/)
* (2) [roughjs](https://roughjs.com/)

### Image Editing

* (2) [nomacs](https://github.com/nomacs/nomacs) - [nomacs](https://nomacs.org/) - nomacs is an image viewer that is able to view nearly any image format, and has powerful renaming and sorting tools.
* (2) [Blender](https://www.blender.org/) - A free and open source complete 3D creation pipeline for artists and small teams.
* (2) [imgp](https://github.com/jarun/imgp) - A command line image resizer and rotator for JPEG and PNG images. It can resize (or thumbnail) and rotate thousands of images in a go, at lightning speed, while saving significantly on storage.
* (5) [inpaint-web](https://github.com/lxfater/inpaint-web) - active development; cool project
* (2.5) [Darktable](https://www.darktable.org/) - Darktable is an open source photography workflow application and RAW developer.
   | (2.5) [RawTherapee](https://rawtherapee.com/) - A good looking but lesser known photo editing app.
* (2.5) [GraphicsMagick](http://www.graphicsmagick.org/) - GraphicsMagick is the swiss army knife of image processing.
   | (2.5) [ImageMagick](https://imagemagick.org/) [imagemagick.org/index.php](https://imagemagick.org/index.php) - Gold standard for anything images
* (6) [PhotoGIMP](https://github.com/Diolinux/PhotoGIMP) - A patch for optimizing GIMP 2.10+ for Adobe Photoshop users.
* (5) [scantailor](https://github.com/scantailor/scantailor) - Scan Tailor is an interactive post-processing tool for scanned pages. For a tutorial on how to use it, consult its [User Guide](https://github.com/scantailor/scantailor/wiki/User-Guide).
* (2) [GIMP - Your GIMP Profile and You](https://www.gimp.org/tutorials/GIMPProfile/) [GIMP - Documentation](https://www.gimp.org/docs/) [gimp](https://www.gimp.org/)
* (N) [PixelFx](https://github.com/keshavbhatt/PixelFx)

#### Special

* (2) [Hugin - Panorama photo stitcher](https://hugin.sourceforge.io/)

### Image Conversion / Cleaning / Compression / Optimization / Upscaling / Simple Editing

* (2) [imgp](https://github.com/jarun/imgp) - Blazing fast batch image resizer and rotator.
* (5) [korkut](https://github.com/oguzhaninan/korkut) - Quick and simple image processing.
* (5) [Trimage](https://trimage.org/) - A cross-platform tool for losslessly optimizing PNG and JPG files.
* (2) [upscayl](https://github.com/upscayl/upscayl) - [Upscayl](https://upscayl.github.io/) - Free and Open Source AI Image Upscaler.
* (2) [Handbrake](https://handbrake.fr/) - HandBrake is a tool for converting video from nearly any format to a selection of modern, widely supported codecs.
* (2) [Potrace](http://potrace.sourceforge.net/) - Potrace is a tool for tracing a bitmap, which means, transforming a bitmap into a smooth, scalable image.
* (5) [md2png](https://github.com/weaming/md2png) - Convert markdown to PNG image
* (2) [pngquant](https://pngquant.org/)

#### SVG-Specific

* (2) [svg2pdf](https://github.com/typst/svg2pdf)
* (5) [svgcleaner](https://github.com/RazrFalcon/svgcleaner)
* (2) [svgo](https://github.com/svg/svgo) - Optimize SVG files.
* (5) [scour](https://github.com/scour-project/scour) - An SVG Optimizer / Cleaner

## Consumption - Viewing, Listening ###########################################################################################################################################################3

### System Audio Tools / Software

* (5) [PipeWire](https://pipewire.org/) - PipeWire is a project that aims to greatly improve handling of audio and video under Linux. [mikeroyal/PipeWire-Guide](https://github.com/mikeroyal/PipeWire-Guide)
* (2) [Alsamixer](https://github.com/alsa-project) - ALSA mixer with curses interfaces - found in [alsa-project/alsa-utils](https://github.com/alsa-project/alsa-utils)
* (2) [Pulse Audio](https://wiki.ubuntu.com/PulseAudio) - Improve Linux Audio with customized Profiles.
* (6) [pulsemixer](https://github.com/GeorgeFilipkin/pulsemixer) - CLI and curses mixer for PulseAudio.

### Television

* (2) [termv](https://github.com/Roshan-R/termv) A terminal iptv player written in bash. <- [iptv](https://github.com/iptv-org/iptv), [site](https://iptv-org.github.io/)
* (5) [Miro](https://www.getmiro.com/) - Free, and open video, music and internet TV application; it brings video channels from thousands of sources and has more free HD than any other platform.

### Podcast / Audiobook

* (2.5) [Gpodder](https://gpodder.github.io/) - Media aggregator and podcast client.
   | (3) [Vocal](https://vocalproject.net/) - Podcast client for the modern desktop. (currently being re-written)
   | (2.5) [Kasts](https://apps.kde.org/kasts/) - Feature-rich, convergent podcast client for Linux Desktop and Mobile.
* (3) [PodFetch](https://github.com/SamTV12345/PodFetch)
* (N) [castero](https://github.com/xgi/castero) - A TUI podcast client for the terminal.
   | (2.5) [castget](https://castget.johndal.com/) cli podcast downloader
* (2) [BadaBoomBooks](https://github.com/WirlyWirly/BadaBoomBooks) - Quickly organize audiobooks using a terminal and web-browser. -> scope for contribution

### Specific Platforms

* (3) [tidal-hifi](https://github.com/Mastermindzh/tidal-hifi) - The web version of Tidal running in electron with hifi support thanks to widevine.
* (4) [ieaseMusic](https://github.com/trazyn/ieaseMusic) - iEaseMusic is a multiplatform program built in electron for listening to NetEase Music.
* (4) [Netease Music](http://music.163.com/#/download) - A music player of Netease - a cloud music service in China.
* (2) [Soundnode](https://soundnode.github.io/soundnode-website/) - An open source SoundCloud app for desktop.
* (6) [orange](https://github.com/keshavbhatt/orange) - Soundcloud desktop

#### Library / List Management

* (2) [trackma](https://github.com/z411/trackma) [z411.github.io/trackma/](https://z411.github.io/trackma/)

#### Radio

* (2) [radion](https://gitlab.com/christosangel/radion) Radion, internet radio client in Bash [radion](https://www.reddit.com/r/commandline/s/q7nN51fBVY) Radion, an internet radio TUI client, written in Bash.
* (5) [somafm-cli](https://github.com/rockymadden/somafm-cli) - Listen to SomaFM in your terminal. - old, but SomaFM is interesting
* (2) [mopidy-somafm](https://search.nixos.org/packages?channel=23.11&show=mopidy-somafm&from=0&size=50&sort=relevance&type=packages&query=somafm)
* (2) [pyradio](https://github.com/coderholic/pyradio) - Curses based internet radio player. - looks pretty good
* (2) [Tera](https://github.com/shinokada/tera) - Terminal Radio: an easy-to-use CLI music player to play favorite music, radio stations and explore various radio stations from the terminal only.
* (2) [cTune](https://github.com/An7ar35/ctune) - A ncurses based internet radio player written in C for Linux.
* (5) [RadioTray-NG](https://github.com/ebruck/radiotray-ng) - An Internet radio player for Linux. -> integrate with ags/eww/etc
* (2) [Shortwave](https://apps.gnome.org/app/de.haeckerfelix.Shortwave/) - Shortwave is an internet radio player that provides access to a station database with over 25,000 stations. (GUI)

#### Volume Stuff

* (5) [volumeicon](https://github.com/Maato/volumeicon)
* (2.5) [helper scripts for avizo](https://github.com/misterdanb/avizo)

### Spotify

#### Spotify GUI

* (2) [Spotube](https://spotube.netlify.app/) - Spotube is a Flutter based lightweight spotify client. It utilizes the power of Spotify & Youtube’s public API & creates a hazardless, performant & resource friendly User Experience.
* (2.5) [Spot](https://github.com/xou816/spot) - Native Spotify client for the GNOME desktop.

#### Spotify TUI

* (2.5) [spotify-tui](https://github.com/Rigellute/spotify-tui) - A Spotify client for the terminal written in Rust. - [Rigellute/spotify-tui/blob/master/README.md](https://github.com/Rigellute/spotify-tui/blob/master/README.md)
   | (2.5) [spotify-player](https://github.com/aome510/spotify-player) - spotify-player is a fast, easy to use, and configurable terminal music player having feature parity with the official Spotify application.
   | (2.5) [gspt](https://github.com/aditya-K2/gspt) - looks great, certainly worth trying
   | (2.5) [ncspot](https://github.com/hrkfdn/ncspot)

#### Spotify CLI

* (2.5) [spotify-cli](https://github.com/brianstrauch/spotify-cli)

#### Spotify Other

-> see SwagLyricsForSpotify

* (2) [spotxtract-t](https://github.com/lnn0q/spotxtract-t)
* (2) [spotxtract](https://github.com/lnn0q/spotxtract)
* (2) [spotifyd](https://github.com/Spotifyd/spotifyd)
* (2) [zspotify](https://github.com/jsavargas/zspotify)
* (2) [Spicetify](https://spicetify.app/) - Command-line tool to customize the official Spotify client - [spicetify-cli](https://github.com/spicetify/spicetify-cli)

### Players / CLI Controllers

#### Everything

* (2) [mpv](https://github.com/mpv-player/mpv) - [mpv.io/](https://mpv.io/) [mpv](https://mpv.io/) - Lets you play most audio and video formats (using ASCII characters) in the shell as well as in a GUI.
      + [mpv-script-directory](https://github.com/Nudin/mpv-script-directory) + [site](https://nudin.github.io/mpv-script-directory/)

#### GUI Audio Player

* (N) [MusicPlayerPlus](https://github.com/doctorfree/MusicPlayerPlus) - [musicplayerplus.dev/](https://musicplayerplus.dev/) + (N) [mpcplus](https://github.com/doctorfree/mpcplus)
* (2) [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp) - NCurses Music Player Client (Plus Plus) - featureful ncurses based MPD client inspired by ncmpc. Relevant features: tag editor, playlist editor, easy to use search engine, media library, music visualizer, ability to fetch artist info from [last.fm](https://www.last.fm/), new display mode, alternative user interface, ability to browse and add files from outside of MPD music directory.
   | (2.5) [musikcube](https://github.com/clangen/musikcube) - Cross-platform, terminal-based music player, audio engine, metadata indexer, and server.
* → see also Quark Player and Electron Player
* (5) [Bomi Player](https://bomi-player.github.io/) - A powerful and easy-to-use multimedia player.
* (5) [cantata](https://github.com/CDrummond/cantata) - Qt5 Graphical MPD (Music Player Daemon) Client for Linux, Windows, MacOS.
* (2.5) [Celluloid](https://celluloid-player.github.io/) [celluloid](https://github.com/celluloid-player/celluloid) - Simple GTK+ frontend for mpv.
* (2.5) [Clapper](https://rafostar.github.io/clapper/) - A GNOME media player built using GJS with GTK4 toolkit and powered by GStreamer with OpenGL rendering.
* (2.5) [Clementine](https://www.clementine-player.org/) - Play numerous lossy and lossless audio formats.
* (2.5) [DeaDBeeF](https://deadbeef.sourceforge.io/) - DeaDBeeF is a modular audio player for GNU/Linux, BSD, OpenSolaris, macOS, and other UNIX-like systems. $$$
* (2.5) [Deepin Music](https://www.deepin.org/en/original/deepin-music/) - An application, developed by Deepin Technology Team, which focused on local music playing.
* (6) [ElectronPlayer](https://github.com/oscartbeaumont/ElectronPlayer)
* (2.5) [MPlayer](http://www.mplayerhq.hu/design7/news.html) - MPlayer is a movie player which runs on many systems, play any kind of videos.
* (2.5) [Museeks](https://museeks.io/) - A simple, clean and cross-platform music player.
* (2) [Nuclear Music Player](https://nuclear.js.org/) - Streaming music player that finds music from free sources automatically. ([GNU AGPLv3](https://github.com/nukeop/nuclear/blob/master/LICENSE))
* (N) [olivia](https://github.com/keshavbhatt/olivia) - music player
* (2.5) [Quod Libet](https://quodlibet.readthedocs.io/) - GTK+ music player written with huge libraries in mind. Supports search-based dynamic playlists, regular expressions, tagging, Replay Gain, podcasts & Internet radio.
* (2.5) [Rhythmbox](https://wiki.gnome.org/Apps/Rhythmbox) - Music player from GNOME.
* (2.5) [Sayonara Player](https://sayonara-player.com/downloads.php) - A small, clear and fast audio player for Linux written in C++, supported by the Qt framework.
* (2.5) [sonata](https://github.com/multani/sonata) - A Music player that is designed to be an elegant and intuitive interface for your music collection via the Music Player Daemon (MPD).
* (2.5) [Strawberry](https://www.strawberrymusicplayer.org/) - Strawberry is a fork of Clementine aimed at music collectors and audiophiles. It’s written in C++ using the Qt toolkit.
* (2.5) [swingmusic](https://github.com/swing-opensource/swingmusic)
* (2.5) [Harmonoid](https://harmonoid.com/) - Plays & manages your music library. Looks beautiful & juicy. Playlists, visuals, synced lyrics, pitch shift, volume boost & more. $$$$$$$$$
* (2.5) [tauon](https://tauonmusicbox.rocks/)
* (6) [JuK](https://juk.kde.org/) - Jukebox music player for managing audio and editing metadata.
* (2.5) [?](https://www.reddit.com/r/unixporn/s/CUbkAsCxR2) music player in C
* (2.5) [amberol](https://gitlab.gnome.org/World/amberol) A small and simple sound and music player that is well integrated with GNOME.
* (2.5) [Audacious](https://audacious-media-player.org/) - An open source audio player that plays your music how you want it, without stealing away your computer’s resources from other tasks.
* (2.5) [Elisa](https://elisa.kde.org/) - Elisa is a music player developed by the KDE community that strives to be simple and nice to use. - full color theming possible
* (2.5) [G4Music](https://gitlab.gnome.org/neithern/g4music) - A fast, fluent, light weight music player written in GTK4. $$$
* (2.5) [Jellyfin Media Player](https://github.com/jellyfin/jellyfin-media-player) - Jellyfin Desktop Client based on Plex Media Player.
* (3.5) [Lollypop](https://wiki.gnome.org/Apps/Lollypop) - A GNOME music playing application.
* (N) [lyssa](https://github.com/cococry/lyssa) $$$
* (2.5) [Mellow Player](https://colinduquesnoy.gitlab.io/MellowPlayer/) - Cloud music integration for your desktop. $$$ - all the services!

#### TUI/CLI Audio Player

* (2.5) [cmus](https://github.com/cmus/cmus) - Cross-platform cli audio player.
* (2.5) [gomu](https://github.com/issadarkthing/gomu) - probably strictly inferior to termusic, but worth trying
* (2.5) [mocp](https://github.com/bartekbrak/mocp)
* (2.5) [MOC](https://github.com/toolleeo/cli-apps/blob/master) - (music on console) is a powerful and easy to use console audio player; user interface a la Midnight Commander; plenty of features; fully controllable from the keyboard.
* (6) [mp3blaster](https://sourceforge.net/projects/mp3blaster/) - Audio player for the text console.
* (2.5) [mpg123](https://sourceforge.net/projects/mpg123/) - [mpg123.de/](https://mpg123.de/) - Quick `mp3` sound file player; no visual interface, just a command-line audio file player for  files.

#### Video Player

* (2) [quark-player](https://github.com/Alex313031/quark-player) - An Electron based Web Video Services Player, supporting Netflix, Youtube, Twitch, Floatplane, Hulu and More!
* (2.5) [SVP](https://www.svp-team.com/w/index.php?title=Main_Page) - SVP allows you to watch any video on your desktop computer using frame interpolation as it is available on high-end TVs and projectors.
* (2.5) [Haruna](https://haruna.kde.org/) - Open source video player built with Qt/QML and libmpv.
* (5) [Movie Monad](https://lettier.github.io/movie-monad) - A free and simple to use video player made with Haskell [movie-monad](https://github.com/lettier/movie-monad)
* (2.5) [Popcorn Time](https://github.com/popcorn-official/popcorn-desktop) - Watch torrent movies instantly.
* (2.5) [Emby Theater](https://emby.media/emby-theater-linux.html) - Emby Server’s official media player.

#### Audio and Video Player

* (2.5) [VLC](https://www.videolan.org/vlc/index.html) - VLC is a free and open source cross-platform multimedia player and framework that plays most multimedia files as well as DVDs, Audio CDs, VCDs, and various streaming protocols.
* (2.5) [smplayer](https://github.com/smplayer-dev/smplayer) [site](https://www.smplayer.info/) - Free Media Player with built-in codecs. Play all audio and video formats.

#### Player Controller

* (2) [playerctl](https://github.com/altdesktop/playerctl) - looks good, slightly abandoned, but worth trying -> (5)
   |  (5.1) [mediactl](https://github.com/aaaaaaaalex/mediactl) RosettaProjects

#### Terminal Music Player

* (2.5) [tizonia-openmax-il](https://github.com/tizonia/tizonia-openmax-il) - Command-line cloud music player for Linux with support for Spotify, Google Play Music, YouTube, SoundCloud, TuneIn, iHeartRadio, Plex servers and Chromecast devices.
* (N) [siren](https://www.kariliq.nl/git/siren/) - Siren is a text-based audio player for UNIX-like operating systems.
* (2.5) [termusic](https://github.com/tramhao/termusic) - Terminal Music Player written in Rust.
* (2.5) [vorbis-tools](https://github.com/xiph/vorbis-tools) - includes ogg123 - Quick `ogg` sound file player; no visual interface, just a command-line audio file player for the free and open  file format.

#### MPV Controllers

* (2.5) [mpvc](https://github.com/gmt4/mpvc/) - A minimal mpc-like CLI and TUI for controlling mpv from the shell.
* (2.5) [mpc](https://github.com/MusicPlayerDaemon/mpc)

### Media Server / Daemon

* (2) [Funkwhale](https://www.funkwhale.audio/)
* (2) [Mopidy](https://www.mopidy.com/) - An extensible music server written in Python.
* (2) [streamlink](https://github.com/streamlink/streamlink) - CLI for extracting streams from various websites to a video player of your choosing.
* (2) [mpd](https://github.com/MusicPlayerDaemon/MPD) - Music Player Daemon.
* (2.5) [jellyfin](https://github.com/jellyfin/jellyfin)
* (2.5) [navidrome](https://www.navidrome.org/)
* (2.5) [Plex](https://www.plex.tv/) - Plex is a media server and streaming platform that organizes, streams, and shares your digital media content. (proprietary)
* (2.5) [Stremio](https://www.stremio.com/) - Stremio is a modern media center that’s a one-stop solution for your video entertainment.
* (2.5) [Kodi](https://kodi.tv/about/) - An award-winning free and open source (GPL) software media center for playing videos, music, pictures, games, and more.
* (2.5) [mpDris2](https://github.com/eonpatapon/mpDris2) - MPRIS V2.1 support for mpd

### Terminal Image/Video Viewing

* (2) [chafa](https://github.com/hpjansson/chafa) - Terminal graphics for the 21st century.
* (2) [imgcat](https://github.com/trashhalo/imgcat) - Tool to output images in the terminal. Built with bubbletea.
* (2) [imgcatr](https://github.com/SilinMeng0510/imgcatr)
* (2) [libsixel](https://saitoha.github.io/libsixel/) [source](https://github.com/saitoha/libsixel)
* (2) [TerminalImageViewer](https://github.com/stefanhaustein/TerminalImageViewer) - Text mode terminal image viewer.
* (2) [viu](https://github.com/atanunq/viu)
* (3) [viuer](https://github.com/atanunq/viuer) Rust library
* (5.1) [libcaca](https://github.com/cacalabs/libcaca) - A library and a program to display JPG, PNG, GIF or BMP images in the terminal using ASCII characters.
* (5.1) [tiv](https://github.com/radare/tiv) - great for RosettaCode - [site](https://github.com/radare/tiv)
* (5) [catimg](https://github.com/posva/catimg)
* (6) [feh](https://git.finalrewind.org/feh) - "X11 image viewer aimed mostly at console users" (cit.); with no fancy GUI, it is controlled via commandline arguments and configurable key/mouse actions.

### Image Viewing

* (2.5) [imv](https://git.sr.ht/~exec64/imv)
* (6) [sxiv](https://github.com/xyb3rt/sxiv)
* (6) [nsxiv](https://github.com/nsxiv/nsxiv)
* (2.5) [vimiv-qt](https://github.com/karlch/vimiv-qt)
* (2.5) [geeqie](http://www.geeqie.org/) - Image viewer / photo collection browser. Successor of GQview.
* (2) [napari](https://napari.org/stable/index.html)
* (6) [feh](https://feh.finalrewind.org/)
* (2.5) [ojo](https://github.com/peterlevi/ojo) - A fast and pretty image viewer.
* (2.5) [qView](https://github.com/jurplel/qView) - Practical and minimal image viewer $$$
* (2.5) [qimgv](https://github.com/easymodo/qimgv) $$$
* (2) [ueberzugpp](https://github.com/jstkdng/ueberzugpp)
* (2) [resvg](https://github.com/RazrFalcon/resvg)

### YouTube

* (2.5) [clipgrab](https://clipgrab.org/) - A friendly downloader for YouTube and other sites.
* (2.5) [video-downloader](https://github.com/Unrud/video-downloader) - Download videos from websites like YouTube and many others (based on yt-dlp) (GUI)
   | (2.5) [youtube-dl-gui](https://jely2002.github.io/youtube-dl-gui/) - A cross-platform GUI for youtube-dl made in Electron and node.js
* (2) [ytDownloader](https://ytdn.netlify.app/) - A cross-platform GUI for yt-dlp with advanced options and a modern UI.
* (R) [Watch YouTube videos using MPV player - An Easy Guide - LinuxForDevices](https://www.linuxfordevices.com/tutorials/linux/watch-youtube-videos-on-mpv-player)
* (2) [invidtui](https://github.com/darkhz/invidtui) - Invidious TUI client, which fetches data from invidious instances and displays a user interface in the terminal, and allows for selecting and playing Youtube audio and video.
* (2.5) [mps-youtube](https://github.com/mps-youtube/mps-youtube) - This implementation uses YouTube as a source of content and can play and download video as well as audio.
* (2) [pipe-viewer](https://github.com/trizen/pipe-viewer) - yt client
* (2) [yark](https://github.com/Owez/yark) - YouTube archiving made simple.
* (2.5) [yewtube](https://github.com/mps-youtube/yewtube)
* (2.5) [youtube-dl](https://github.com/rg3/youtube-dl/blob/master/LICENSE) [youtube-dl](https://rg3.github.io/youtube-dl/) - download videos from YouTube
   | (2.5) [yt-dlp](https://github.com/yt-dlp/yt-dlp) - A youtube-dl fork with additional features and fixes.
* (2.5) [TubiTui](https://codeberg.org/777/TubiTui) - A lightweight, libre, TUI-based YouTube client
   | (2.5) [youtube-tui](https://github.com/Siriusmart/youtube-tui)
* (N) [youtube-viewer](https://github.com/trizen/youtube-viewer)
* (2.5) [youtubedownloader](https://github.com/Tyrrrz/YoutubeDownloader)
* (5) [yt-audio](https://github.com/pseudoroot/yt-audio) - A simple, configurable youtube-dl wrapper to download and manage youtube audio. [youtube-dl](https://github.com/ytdl-org/youtube-dl) - Download videos from YouTube.com and many other video sites.
* (2) [yt-splitter](https://github.com/redsolver/yt-splitter) - Downloads and splits audio tracks from a YouTube video according to the chapters/tracks. Useful for compilations or full album uploads.
* (5) [ytcc](https://github.com/woefe/ytcc) Command line tool to keep track of your favorite playlists on YouTube and many other places
* (2) [ytfzf](https://github.com/pystardust/ytfzf)
* (2.5) [ytgo](https://github.com/cybardev/ytgo)
* (2) [ytmdl](https://github.com/deepjyoti30/ytmdl) - Get songs from Youtube in mp3 format.
* (5) [ytpy](https://github.com/cybardev/ytpy)
* (2) [invidtui](https://github.com/darkhz/invidtui)

#### YouTube Music

* (2.5) [ytui-music](https://github.com/sudipghimire533/ytui-music)
* (2) [mps-youtube](https://github.com/mps-youtube/mps-youtube) - A curses player for music tracks from Youtube; it allows to search for songs and playlists; it downloads the video, extracts the audio track and plays it; handles local playlists and many configuration parameters.
* (5) [youtube-music](https://github.com/th-ch/youtube-music) - YouTube Music Desktop App bundled with custom plugins (and built-in ad blocker / downloader) -> need to fix Electron issues
* (5) [Kaku](https://kaku.rocks/) - An open source youtube music player for Ubuntu. - not in nixpkgs
* (2.5) [AudioTube](https://apps.kde.org/audiotube/) - Feature-rich YouTube Music client for KDE, built with Kirigami.
* (5) [muCLIar](https://github.com/aayush1205/muCLIar) - YouTube automator bringing you your music right on your CLI. - YouTube in CLI via Selenium and Chromedriver

#### YouTube GUI Frontend

* (5) [FreeTube](https://github.com/FreeTubeApp/FreeTube) →[FreeTube/issues/1864](https://github.com/FreeTubeApp/FreeTube/issues/1864) [->](https://github.com/FreeTubeApp/FreeTube/issues/1864), [docs.freetubeapp.io/usage/keyboard-shortcuts/](https://docs.freetubeapp.io/usage/keyboard-shortcuts/) -> need to get working on hyprland
* (5) [PlasmaTube](https://apps.kde.org/plasmatube/) - Kirigami-based YouTube client for Linux Desktop and Mobile with built-in ad-blocking and privacy features. -> server issues; apparently some work needed to get working on NixOS - [plasmatube](https://invent.kde.org/multimedia/plasmatube)
* (6) [red](https://github.com/keshavbhatt/red) - YouTube desktop client; apparently not open-source
* (5) [minitube](https://github.com/flaviotordini/minitube) - youtube client, quite a nice app; needs themeability work
* (6) [youtube-viewer](https://github.com/trizen/youtube-viewer) (GTK+) in Perl; requires an API key and a video player (MPV, VLC); prefer apps that do not require an API key
* (6) [smtube](https://github.com/smplayer-dev/smtube) - for smplayer - insecure in nixpkgs
* (2) [installation](https://docs.invidious.io/installation/)

## Mixed / Miscellaneous ###########################################################################################################################################################3

* (U ← X11) [nikp123/xava](https://github.com/nikp123/xava)

### Audio Visualization

* (2) [cava](https://github.com/karlstav/cava) - Cava is a Cross-platform Audio Visualizer.
* (5) [glava](https://github.com/jarcode-foss/glava) - OpenGL audio spectrum visualizer - also X11

### Photo Search

* (2) [rclip](https://github.com/yurijmikhalevich/rclip) - AI-Powered Command-Line Photo Search Tool. -> create something more lightweight using VGG16?

### Screenshot and Screen Recording / Screencasting / Streaming / etc

* (2) [to-html](https://github.com/Aloso/to-html) -> do I need to hack this for WezTerm etc.?
* (2) [screenkey](https://gitlab.com/screenkey/screenkey)
* (5) [pageres-cli](https://github.com/sindresorhus/pageres-cli) - Capture website screenshots.
* (2) [shot-scraper](https://github.com/simonw/shot-scraper)
* (2) [asciinema](https://github.com/asciinema/asciinema) - Terminal session recorder. [asciinema.org/](https://asciinema.org/)
* (2.5) [carbon-now-cli](https://github.com/mixn/carbon-now-cli) images of your code — from right inside your terminal.
   |  (2.5) [freeze](https://github.com/charmbracelet/freeze) Generate images of code and terminal output
* (2) [streamlink](https://github.com/streamlink/streamlink) - Extract streams from various websites to a video player of your choosing.
* (5) [ffscreencast](https://github.com/cytopia/ffscreencast) - A ffmpeg screencast with video overlay and multi monitor support.
* (2) [swordfish-rs](https://github.com/vim-zz/swordfish-rs) - Mimics real person behavior with realtime typing into terminal; uses a screenplay where text and timings are specified.
* (5) [menyoki](https://menyoki.cli.rs/) - Screen{shot,cast} and perform ImageOps on the command line.

### Camera Apps

* (2.5) [Kamoso](https://apps.kde.org/kamoso/) - Kamoso is a simple and friendly program to use your camera. Use it to take pictures and make videos to share.
* (2.5) [Cheese](https://wiki.gnome.org/Apps/Cheese) - Cheese uses your webcam to take photos and videos, applies fancy special effects and lets you share the fun with others.

### Recording / Broadcasting / Streaming

* (5) [shutter-on-wayland](https://github.com/mvivarelli/shutter-on-wayland) - downstream of [Shutter](https://shutter-project.org/) - written in Perl
* (5) [Flameshot](https://flameshot.org/) - Powerful yet simple to use screenshot software.
* (5) [pypeek](https://github.com/firatkiral/pypeek) → help for Wayland support
* (2) [obs-studio](https://github.com/obsproject/obs-studio) [obsproject.com/](https://obsproject.com/) - Free and open source software for video recording and live streaming. Download and start streaming quickly and easily on Windows, Mac or Linux. Share your gaming, art and entertainment with the world. - [linux-installation](https://obsproject.com/kb/linux-installation)
* (2) [gstreamer](https://gstreamer.freedesktop.org/)
* (2.5) [kasmweb](https://www.kasmweb.com/community-edition)
* (3) [Streamlink Twitch GUI](https://streamlink.github.io/streamlink-twitch-gui/) - A multi platform Twitch.tv browser for [Streamlink](https://streamlink.github.io/).

## Finding / Search / Download / Library Management / Metadata, Album Art / etc

* (5) [kunst](https://github.com/sdushantha/kunst) - rewrite for wayland (wayland stack dependencies)
* (2) [lotc](https://github.com/ranelpadon/lord-of-the-clips/) - (Lord Of The Clips) Video downloader, trimmer, and merger using the terminal. Supports YouTube, Facebook, Reddit, Twitter, etc. Downloads/trims at multiple points. Merges multiple clips. - excellent interface, written in Python
* (2) [Instant-Music-Downloader](https://github.com/yask123/Instant-Music-Downloader) - Instant music downloader.
* (2) [beets](https://github.com/beetbox/beets) - Beets is the media library management system for obsessive music geeks: catalogs your collection, automatically improving its metadata as it goes.

### Image Management

* (2.5) [Digikam](https://www.digikam.org/) - DigiKam is an advanced digital photo management application for Linux.

### Song ID

* (2) [mousai](https://github.com/SeaDve/Mousai) - Identify songs in seconds -> note to self: get Shazam for my mobile
* (6) [music-radar](https://github.com/keshavbhatt/music-radar) - like shazam

### Streaming and Broadcasting

* (2) [gstreamer](https://github.com/GStreamer/gstreamer)
* (2) [obs-studio](https://github.com/obsproject/obs-studio) [obsproject.com/welcome](https://obsproject.com/welcome)
* (3) [Libretime](https://libretime.org/) - The open broadcast software for scheduling and remote station management; forked from Airtime - for radio broadcasting and automation
* (2) [mStream](http://mstream.io/) - Suite of software for syncing and streaming music across multiple devices. ([GNU GPLv3](https://github.com/IrosTheBeggar/mStream/blob/master/LICENSE))
   | (2.5) [forte](https://github.com/kaangiray26/forte)

### Library / API

* (3) [audioFlux](https://github.com/libAudioFlux/audioFlux) - A library for audio and music analysis, feature extraction.
* (3) [kord](https://github.com/synestematic/kord) - A python framework that provides programmers with a simple api for the creation of music-based applications. $$$

### TTS / ASR

* (2) [espeak-ng](https://github.com/espeak-ng/espeak-ng) ([espeak](https://sourceforge.net/p/espeak/code/HEAD/tree/)) - A compact open source software speech synthesizer for English and other languages.

### Lyrics

* (2.5) [MusixMatch](https://snapcraft.io/musixmatch) - A Capable lyrics app with synchronized lyrics function.
* (2.5) [osdlyrics](https://github.com/osdlyrics/osdlyrics) - Show lyrics with your favorite media player.
* (2.5) [SwagLyrics-For-Spotify](https://github.com/SwagLyrics/SwagLyrics-For-Spotify)
* (2.5) [lyricpad](https://github.com/keshavbhatt/lyricpad) - lyrics from the web

### Transcription

* (2) [Parlatype](https://gkarsay.github.io/parlatype/) - GNOME audio player for transcription.
* (5) [moviesquare](https://github.com/keshavbhatt/moviesquare) - tmdb frontend
* (2) [Subtitld](https://subtitld.org/) - Subtitld is an open source software to edit, transcribe and create subtitles.
