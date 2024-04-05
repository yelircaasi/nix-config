# Software List

## Legend

(0) - already installed and configured in nix-config

(1) - already added to nix-config, but some work is needed

(2) - to be added next

(2.5 / 3.5) - to be added, but first decide between alternatives

(3) - also to be added, but lower priority

(4) - not decided yet / maybe later

(5) - some rewriting or packaging necessary (but to be added)


## By Layer
### Minimalist Set

* GUI Editors
  - (2) [emacs](https://www.gnu.org/software/emacs/)
  - (3) [qtconsole](https://github.com/jupyter/qtconsole)
  - (4) [zettlr]() 
   | [remarkable](https://github.com/jamiemcg/Remarkable)
  - (3) [nano]()
  - (6) [vim]() -> decided to always use nvim with different configs -> https://michaeluloth.com/neovim-switch-configs/
  - (4) [cosmic-editor]()
  - (4) [zed](https://zed.dev/)
  - (4) [lem](https://github.com/lem-project/lem)

* Terminal Development Environment
  - (1) [neovim](https://neovim.io/)
  - (1) [wezterm](https://github.com/wez/wezterm) 
   | (1) [kitty]() 
   | (1) [alacritty]() 
   | (5) [waveterm]() - need to package for [nix](https://jvns.ca/blog/2023/03/03/how-do-nix-builds-work-/)) 
   | (4) [hyper](https://hyper.is/) 
   | (4) [tabby](https://github.com/eugeny/tabby) 
   | (4) [extraterm](https://github.com/sedwards2009/extraterm) 
   | (4) [contour](https://github.com/contour-terminal/contour) 
   | (4) [blackbox](https://gitlab.gnome.org/raggesilver/blackbox) 
   | (4) [terminology](https://www.enlightenment.org/about-terminology) 
   | (4) [tym](https://github.com/endaaman/tym) 
   | (2) [termonad](https://github.com/cdepillabout/termonad) 
   | (4) [rxvt-unicode-unwrapped-emoji](https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=urxvt) 
   | (4) [commas](https://github.com/CyanSalt/commas) 
   | (4) [kermit-terminal](https://github.com/orhun/kermit) 
   | (3) [foot](https://codeberg.org/dnkl/foot/) (wayland-only) 
   | (4) [wayst](https://github.com/91861/wayst) (wayland-only)

  - (4) [tdrop](https://github.com/noctuid/tdrop) 
   | (4) [dropterm](https://github.com/Subbeh/dropterm)
  - (3) [electerm](https://electerm.html5beta.com/)

  - (1) [starship]() 
   | (2) [oh-my-posh](https://ohmyposh.dev/)
  - (2) [xdg-utils](https://search.nixos.org/packages?channel=unstable&show=xdg-utils&from=0&size=50&sort=relevance&type=packages&query=xdg-open)

  - (2) [handlr-regex](https://github.com/Anomalocaridid/handlr-regex)
  - (2) [nix-prefetch-github](https://search.nixos.org/packages?channel=23.11&show=nix-prefetch-github&from=0&size=50&sort=relevance&type=packages&query=nix-prefetch-github)
  
## Core Set
* (2) [renovate](https://github.com/renovatebot/renovate)
* (2) [gzip-size-cli](https://github.com/sindresorhus/gzip-size-cli)
* (6) [checksum.sh](https://github.com/gavinuhma/checksum.sh)


## Extended Set
* (2) [appflowy](https://www.appflowy.io/)
* (2) [compiler-explorer](https://github.com/compiler-explorer/compiler-explorer)
* (4) [rstudio](https://www.rstudio.com/products/RStudio)
* (3) [FeatherEditor](https://github.com/0xBaca/FeatherEditor)
* (6) [SysMonTask](https://github.com/KrispyCamel4u/SysMonTask/)
* (5) [pipe_exec](https://github.com/koraa/pipe_exec)
* (3) [popsicle](https://github.com/pop-os/popsicle) 
   | [etcher](https://www.balena.io/etcher/) 
   | [ventoy](https://www.ventoy.net/en/index.html) 
   | [unetbootin](https://unetbootin.github.io/) 
   | [multiboousb](https://github.com/Death259/multibootusb)
* (3) [modprobed-db](https://github.com/graysky2/modprobed-db)

## Maximalist Set
* (3) [paperbackup](https://github.com/intra2net/paperbackup)
* (5) [pcopy](https://github.com/binwiederhier/pcopy) 
   | (5) [gocatgo](https://github.com/vaaleyard/gocatgo)
* (3) [stegcloak](https://github.com/kurolabs/stegcloak)
* (3) [steganography](https://github.com/7thSamurai/steganography)

---

## Multiplexer
* (2) [zellij](https://github.com/zellij-org/zellij) 
   | (2) [tmux](https://github.com/tmux/tmux)
* (4) [tmate -](https://github.com/tmate-io/tmate -)A fork of tmux that allows to share the terminal with other users. AFAIK, it connects to a centralized server to establish the connection. Someone may see this inconvenient for privacy issues. - https://manpages.org/tmate
* (5) [procmux -](https://github.com/napisani/procmux -)A TUI utility for running multiple commands in parallel in easily switchable terminals.
* (2) [mprocs](https://github.com/pvolok/mprocs)- similar to procmux
* (6) [dtach -](https://github.com/crigler/dtach -)A program written in C that emulates the detach feature of screen.
* (5) [warp -](https://github.com/spolu/warp -)Secure and simple terminal sharing. - fork and update?
* (4) [screen](https://www.gnu.org/software/screen/) - GNU terminal multiplexer - Terminal multiplexer that split a physical terminal between several processes, typically interactive shells. - just use a bit to have used it
* (4) [mtm -](https://github.com/deadpixi/mtm -)Micro Terminal Multiplexer - Simple but usable, stable and minimalistic terminal multiplexer. - just try

* (2.5) Shell: (2) [bash](https://www.gnu.org/software/bash/)
| (6) [zsh]() 
| (2) [fish]() 
| (2) [nushell]() 
| (2) [xonsh]() 
| (2)[elvish]() 
| (2) [hilbish]() 
| (2) [dash]() 
| (4) [ion](https://doc.redox-os.org/ion-manual/) 
| (4) [cosh](https://github.com/tomhrr/cosh) 
| (4) [oil](https://www.oilshell.org/) 
| (4) [yash](https://github.com/magicant/yash) 
| (4) [es](https://github.com/wryun/es-shell) 
| (4) [shell-plus-plus](https://github.com/alexst07/shell-plus-plus) 
| (4) [oh](https://github.com/michaelmacinnis/oh)

* (2.5) [devshell](https://github.com/numtide/devshell) 
   | [devenv](https://devenv.sh/) 
   | [devbox](https://github.com/jetpack-io/devbox) 
   | [lorri](https://github.com/nix-community/lorri) 
   | [lorelei](https://github.com/shajra/direnv-nix-lorelei) 
   | [mise](https://github.com/jdx/mise)
* (2.5) [nix-direnv](https://github.com/nix-community/nix-direnv) 
   | [direnv](https://direnv.net/) - see also [direnv standard library](https://direnv.net/man/direnv-stdlib.1.html#codeuse-nix-code)
* (5) [nixify](https://github.com/kampka/nixify)
* (2) [wget]()
* (2) [curl]()
* (1) [kanata](https://github.com/jtroo/kanata) 
   | [kmonad](https://github.com/kmonad/kmonad) 
   | [keyd](https://github.com/rvaiya/keyd) 
   | [hawck](https://github.com/snyball/Hawck) 
   | [xremap](https://github.com/k0kubun/xremap) 
   | [ktrl](https://github.com/ItayGarin/ktrl) (?)
* (2) [ ] [input-remapper](https://github.com/sezanzeb/input-remapper)
* (2) [espanso](https://espanso.org/docs/get-started/)
* (0) [nix](https://github.com/NixOS/nix)
* (1) [home-manager](https://github.com/nix-community/home-manager)
* (1) [hyprland](https://github.com/hyprwm/Hyprland) - nvidia info [here](https://wiki.hyprland.org/Nvidia/) 
   | [sway]() - nvidia info [here](https://github.com/swaywm/sway/wiki) 
   | [riverwm]()
* (2) [waybar]() 
   | [eww]() 
   | [polybar]()
* (2) [rofi-wayland]() 
   | [wofi]()
* (2) [swww]()
* (2) [mako]() 
   | [dunst]()
* (2) [libnotify]()
* (2) [networkmanagerapplet]()
* (2) [et](https://github.com/oxzi/et)
* (2) [caffeine-ng](https://codeberg.org/WhyNotHugo/caffeine-ng)
* (2.5) [greenclip](https://github.com/erebe/greenclip) 
   | [Clipboard](https://github.com/Slackadays/Clipboard) 
   | [CopyQ](https://github.com/hluk/CopyQ) 
   | [wl-clipboard](https://github.com/bugaevc/wl-clipboard) 
   | [yank](https://github.com/mptre/yank)
* (2.5) [kanshi](https://sr.ht/~emersion/kanshi/) ([autorandr]() for x)
* (6) [?]() ([xrandr]() for x)



## Tools

###Misc  Desktop Tools
- (5) [open-in-editor](https://github.com/dandavison/open-in-editor)
- (2?) [Metadata Cleaner](https://metadatacleaner.romainvigier.fr/) - This tool allows you to view metadata in your files and to get rid of it, as much as possible.
- (2) [azuredatastudio](https://github.com/Microsoft/azuredatastudio): A data management tool that enables working with SQL Server, Azure SQL DB and SQL DW from Windows, macOS and Linux.
- (5) [GrubCustomizer](https://launchpad.net/grub-customizer) - Grub Customizer is a graphical interface to configure the GRUB2/BURG settings and menuentries. [tutorial](https://www.linuxfordevices.com/tutorials/linux/grub-customizer-tutorial)
- (2) [gramps](https://github.com/gramps-project/gramps) [Gramps](https://gramps-project.org/blog/) - Research, organize and share your family tree with Gramps.
- (2) [emote](https://github.com/tom-james-watson/emote)
   | (5) [emoji-keyboard](https://github.com/OzymandiasTheGreat/emoji-keyboard) - Virtual keyboard-like emoji picker for Linux.
- (5) [Daily Reddit Wallpaper](https://federicotorrielli.github.io/Daily-Reddit-Wallpaper/) - Change your wallpaper to the most upvoted image of the day from /r/wallpapers or any other subreddit on system startup.

### Core Command-Line Tools

* (2)  [uutils-coreutils-noprefix]() ([source](https://github.com/uutils/coreutils))
* (2)  [moreutils](https://joeyh.name/code/moreutils/)
* (2)  [util-linux]()
* (4) [toybox]()
* (2) [xc](https://github.com/joerdav/xc)
* (2)  [make]()
* (1)   [eza](https://github.com/eza-community/eza) 
   | [lsd](https://github.com/lsd-rs/lsd) 
   | [colorls](https://github.com/athityakumar/colorls) 
   | [nat](https://github.com/willdoescode/nat)
* (2.5)  [tre](https://github.com/dduan/tre) 
   |  [tree](https://gitlab.com/OldManProgrammer/unix-tree) 
   | [termtree](https://github.com/rust-cli/termtree)
* (2) [as-tree](https://github.com/jez/as-tree)
* (2) [ictree](https://github.com/NikitaIvanovV/ictree)
* (5) [ckit](https://github.com/fpgmaas/ckit)
* (5) [runner](https://github.com/sudoerp/runner)
* (2) [ea](https://github.com/dduan/ea)
* (2)  [topalias](https://github.com/meteoritt/topalias)
* (2) [nap](https://github.com/maaslalani/nap) 
   | (5) [boom](https://github.com/holman/boom)
* (5) [ad](https://github.com/tanrax/terminal-AdvancedNewFile)
* (2.5) [rm-improved](https://github.com/nivekuil/rip) (rip) 
   | [trashy](https://github.com/oberblastmeister/trashy) 
   | [trash-cli](https://github.com/andreafrancia/trash-cli) 
   | [t](https://github.com/adamheins/t) (wraps trash-cli) 
   | [safe-rm](https://code.launchpad.net/safe-rm) 
   | [brash](https://github.com/zakariagatter/brash) 
   | 
* (5)[RecoverPy](https://github.com/PabloLec/RecoverPy)
* (2) [rmw](https://github.com/theimpossibleastronaut/rmw/)
* (5) [unix-permissions](https://github.com/ehmicky/unix-permissions)
* (5) [progress](https://github.com/Xfennec/progress) 
   | (2) [pv](https://codeberg.org/a-j-wood/pv)
* (2) [ov](https://github.com/noborus/ov) 
   | (2) [most](https://linux.die.net/man/1/most)
* (3) [hhighlighter](https://github.com/paoloantinori/hhighlighter) 
   | (2) [tailspin](https://github.com/bensadeh/tailspin)
   | (5) [cope](https://github.com/lotrfan/cope)
* (1) 󰄬 [broot](https://github.com/Canop/broot)
* (1) 󰄬 [zoxide](https://github.com/ajeetdsouza/zoxide) 
   | [z.lua](https://github.com/skywind3000/z.lua) 
   | [z](https://github.com/rupa/z)
* (2) [jump](https://github.com/gsamokovarov/jump)
* (5) [commacd](https://github.com/shyiko/commacd)
* (5) [up](https://github.com/shannonmoeller/up) 
   | [bd](https://github.com/vigneshwaranr/bd)
* ( ) [enhancd](https://github.com/babarot/enhancd)
* ( ) [PathPicker](https://github.com/Jasha10/PathPicker)
* ( ) [walk](https://github.com/antonmedv/walk)
* (2) [chase](https://code.tools/man/1/chase)
* (2) [has](https://github.com/kdabir/has)
* ( ) [teetail](https://github.com/sl236/teetail)
* (2) [hr](https://github.com/LuRsT/hr)
* ( ) [rebound](https://github.com/shobrook/rebound)
* (2) [exiftool](https://github.com/exiftool/exiftool)
* (5) [mimetype](https://github.com/gabriel-vasile/mimetype)
* ( ) [chars](https://github.com/boinkor-net/chars)
* ( ) [hyperfine](https://github.com/sharkdp/hyperfine) 
   | [temci](https://github.com/parttimenerd/temci)
* ( ) [procs](https://github.com/dalance/procs)
* (2) [topgrade](https://github.com/topgrade-rs/topgrade)
* (2) [ramfetch](https://codeberg.org/jahway603/ramfetch)
* ( ) [guesswidth](https://github.com/noborus/guesswidth)
* ( ) [erdtree](https://github.com/solidiquis/erdtree)
* ( ) [rng](https://github.com/nickolasburr/rng)
* (2) [xcp](https://github.com/tarka/xcp) 
   | [pycp](https://github.com/your-tools/pycp)
* (2) [procs](https://github.com/dalance/procs)
* (2) [parallel](https://git.savannah.gnu.org/cgit/parallel.git) 
* (4) [ts](http://vicerveza.homeunix.net/~viric/soft/ts/)
* (4) [ts](https://github.com/justanhduc/task-spooler) (for GPU also)
* (2) [await](https://github.com/slavaGanzin/await)
* (2.5) [ikill (could use updating)](https://github.com/pombadev/ikill) 
   | [fkill-cli](https://github.com/sindresorhus/fkill-cli) 
   | 
* ( )  [pazi](https://github.com/euank/pazi) 
   | [ff](https://github.com/akymos/ff) 
   | [smartcd](https://github.com/CodesOfRishi/smartcd) 
   | [lazy-cd](https://github.com/pedramamini/lazy-cd) 
   | [pm](https://github.com/Angelmmiguel/pm) 
   | [fastdiract](https://github.com/dp12/fastdiract) 
   | [goto](https://github.com/iridakos/goto) 
   | [h](https://github.com/zimbatm/h)
* ( ) [peco](https://github.com/peco/peco)
* (2) [conan](https://github.com/mirage/conan)

#### Navigation and Exploration


#### Viewing

* (2) [bat](https://github.com/sharkdp/bat) + [bat-extras](https://github.com/eth-p/bat-extras)
* (5) [nbcat](https://github.com/yelircaasi/nbcat) 
   | (5) [nbbat]() (yet to come)
* (2) [catdoc](https://search.nixos.org/packages?channel=unstable&show=catdoc&from=0&size=50&sort=relevance&type=packages&query=catdoc)
* (2) [xls2csv](https://search.nixos.org/packages?channel=unstable&show=catdoc&from=0&size=50&sort=relevance&type=packages&query=catdoc)
* (2) [catppt](https://search.nixos.org/packages?channel=unstable&show=catdoc&from=0&size=50&sort=relevance&type=packages&query=catdoc)
* (2) [catdocx](https://github.com/jncraton/catdocx)

#### Search

* (2) [fzf](https://github.com/junegunn/fzf) 
   | (2) [zf](https://github.com/natecraddock/zf) 
   | (2) [skim](https://github.com/lotabout/skim) 
   | [fzy](https://github.com/jhawthorn/fzy)
   | [luneta](https://github.com/fbeline/luneta) (written in D!)
* (6) [fz.sh](https://github.com/mrjohannchang/fz.sh) (for zsh)
* (2) [ack](https://beyondgrep.com/) 
   | (2) [ugrep](https://github.com/Genivia/ugrep)
   | (2) [frawk](https://github.com/ezrosent/frawk) 
   | (6) [sift](https://github.com/svent/sift) 
* (2) [vgrep](https://github.com/vrothberg/vgrep)
* (2) [fd](https://github.com/sharkdp/fd) 
   | [lf.sh](https://github.com/suewonjp/lf.sh)
* (2) [ag](https://github.com/ggreer/the_silver_searcher)
* (2) [rg](https://github.com/BurntSushi/ripgrep)
* (2) [rga](https://github.com/phiresky/ripgrep-all)
* (2) [fselect](https://github.com/jhspetersson/fselect)
* (5) [find-up-cli](https://github.com/sindresorhus/find-up-cli) (shouldn't be too hard to implement in a faster and lighter language)
* (4) [paragrep](https://github.com/bmc/paragrep)
* (5) [spot](https://github.com/rauchg/spot)

#### Data Wrangling

* (2) [pandoc](https://pandoc.org/) 
   | [ebook-converter](https://github.com/gryf/ebook-converter)
* (2) [teip](https://github.com/greymd/teip)
* (2) [grex](https://github.com/pemistahl/grex)
* (2) [exrex](https://github.com/asciimoo/exrex) 
   | [randexp.js](https://github.com/fent/randexp.js)
* (2) [difftastic](https://github.com/Wilfred/difftastic)
* ( ) [huniq](https://github.com/koraa/huniq)
* ( ) [jid](https://github.com/simeji/jid)
* ( ) [jiq](https://search.nixos.org/packages?channel=23.11&show=jiq&from=0&size=50&sort=relevance&type=packages&query=jiq)
* ( ) [gzip-size-cli](https://github.com/sindresorhus/gzip-size-cli)
* (2) [sd](https://github.com/chmln/sd) 
   | (2) [sad](https://github.com/ms-jpq/sad) 
   | [ruplacer](https://github.com/your-tools/ruplacer) 
   | [amber](https://github.com/dalance/amber)
* ( ) [tuc](https://github.com/riquito/tuc) 
   | [choose](https://github.com/theryangeary/choose) 
   | [hck](https://github.com/sstadick/hck)
* ( ) [ramda-cli](https://github.com/raine/ramda-cli)
* ( ) [datasetG_](https://github.com/radi-cho/datasetGPT)
* ( ) [roapi](https://github.com/roapi/roapi)
* ( ) [nodice](https://github.com/avnigo/nodice-cli)
* ( ) [up](https://github.com/akavel/up) (UltimatePlumber)
* ( ) [dt](https://github.com/so-dang-cool/dt)
* ( ) [tokenize-output](https://github.com/anki-code/tokenize-output)
* ( ) [unindenter](https://github.com/BiasedRiot/Unindenter)
* ( ) [dasel](https://github.com/tomwright/dasel)
* ( ) [sq](https://github.com/neilotoole/sq)
* ( ) [bafi](https://github.com/mmalcek/bafi)
* ( ) [squeeze](https://github.com/aymericbeaumet/squeeze)
* ( ) [rq](https://github.com/dflemstr/rq)
* ( ) [miller](https://github.com/johnkerl/miller)
* ( ) [graphtage](https://github.com/trailofbits/graphtage)
* ( ) [xidel](https://github.com/benibela/xidel/)
* ( ) [zed](https://zed.brimdata.io/)
* ( ) [zq](https://search.nixos.org/packages?channel=unstable&show=zed&from=0&size=50&sort=relevance&type=packages&query=zed)
* ( ) [data-tools](https://github.com/clarkgrubb/data-tools)

##### Markdown
- (5) [frogmouth](https://github.com/Textualize/frogmouth) 
   | (2) [glow](https://github.com/charmbracelet/glow) 
   | [mdcat](https://github.com/swsnr/mdcat) 
   | [tmv](https://github.com/axiros/terminal_markdown_viewer)
- (5) [mdt](https://github.com/robolab-pavia/mdt)
- ( ) [grip](https://github.com/joeyespo/grip) - Preview markdown files as GitHub would render them.
- ( ) [lowdown](https://github.com/kristapsdz/lowdown) - Markdown translator (HTML5, roff, LaTeX, gemini, OpenDocument, and terminal output)
- ( ) [doctoc](https://github.com/thlorenz/doctoc) - Generates table of contents for markdown files.

##### CSV, TSV
- (2.5) [csvtk](https://github.com/shenwei356/csvtk/) (go) 
   | (2.5) [csvkit](https://github.com/wireservice/csvkit) (python) 
   | (5) [xsv](https://github.com/medialab/xsv) (rust) 
   | (4) [tsv-utils](https://github.com/eBay/tsv-utils) (dlang) 
   | 
- (2) [csvq](https://github.com/mithrandie/csvq) 
   | (4) [q](https://github.com/harelba/q) 
##### JSON
- (2) [jq](https://github.com/stedolan/jq) 
   | (3) [zed](https://github.com/brimdata/zed) 
   | (2) [gojq](https://github.com/itchyny/gojq) 
   | (4) [jtc](https://github.com/ldn-softdev/jtc)
- (2) [groq-cli](https://github.com/sanity-io/groq-cli)
- (4) [jq.node](https://github.com/FGRibreau/jq.node) 
   | 
- ( ) [jd](https://github.com/josephburnett/jd)
- ( ) [jql](https://github.com/yamafaktory/jql)
- ( ) [jqp](https://github.com/noahgorstein/jqp)
- (2) [jc](https://github.com/kellyjonbrazil/jc) 
   | [jo](https://github.com/jpmens/jo)
- ( ) [crosshash](https://github.com/httpie/crosshash)
- (2) [fx](https://github.com/antonmedv/fx) 
   | [jless](https://github.com/PaulJuliusMartinez/jless)
- (2) [gron](https://github.com/tomnomnom/gron)
- (2) [jj](https://github.com/anki-code/jj)
- (5) [strip-json-comments-cli](https://github.com/sindresorhus/strip-json-comments-cli)
##### PDF
- (2) [xpdfreader](https://www.xpdfreader.com/download.html)
- (->) [pdf-writer](https://github.com/typst/pdf-writer) (rust library)
- (5) [pdftty](https://github.com/kpj/pdftty) [site](https://kpj.github.io/my_projects/pdftty.html)
- (->) [stackoverflow cli pdf viewer](https://stackoverflow.com/questions/3570591/cli-pdf-viewer-for-linux)
- (3) [K2pdfopt](https://www.willus.com/k2pdfopt)
- (4) [sejda](https://github.com/torakiki/sejda/)
##### YAML
- (2) [yq](https://github.com/mikefarah/yq)
- (2) [dyff](https://github.com/homeport/dyff)
- (2) [yamllint](https://github.com/adrienverge/yamllint)
##### TOML
- (2) [taplo](https://taplo.tamasfe.dev/)
- (5) [toml-cl  ](https://github.com/gnprice/toml-cli) [current fork](https://github.com/chevdor/toml-cli) (Rust) 
   | [toml-cli](https://github.com/mrijken/toml-cli) (Python)
- (2) [toml2nix](https://crates.io/crates/toml2nix)
- (2) [toml2json](https://github.com/woodruffw/toml2json)
##### HTML
- (2) [htmlq](https://github.com/mgdm/htmlq) 
   | (4.5) [pup](https://github.com/gromgit/pup)
- (5) [hget](https://github.com/bevacqua/hget)
#####  Database
- (2) [usql](https://github.com/xo/usql)
- (2) [termdbms](https://github.com/mathaou/termdbms)
- (2) [pgcli](https://github.com/dbcli/pgcli)
- (3) [soul](https://github.com/thevahidal/soul)
- (2) [sqlite3](https://sqlite.org/cli.html)
- (3) [redis-viewer](https://github.com/SaltFishPr/redis-viewer)
- (3) [iredis](https://github.com/laixintao/iredis)
##### Other Formats
- (3) [recutils](https://www.gnu.org/software/recutils/)
- (3) [hcledit](https://github.com/minamijoyo/hcledit)
- (3) [hcl2json](https://github.com/tmccombs/hcl2json)
- (3) [hclfmt](https://github.com/hashicorp/hcl/tree/main/cmd/hclfmt)
- (3) [dhall](https://hackage.haskell.org/package/dhall)
- (3) [crudini](https://github.com/pixelb/crudini)
- (3) [NestedText](https://nestedtext.org/en/latest/)

##### Multiple Formats / Conversion
- (2) [zet](https://github.com/yarrow/zet)
- (2.5) [ansi2html](https://github.com/pycontribs/ansi2html) 
   | (2.5) [ansi2html](https://hackage.haskell.org/package/Ansi2Html) 
   | (2.5) [HTML-FromANSI](https://metacpan.org/dist/HTML-FromANSI) 
   | (6) [aha](https://github.com/theZiz/aha)
- (2) [coloried-logs](https://github.com/kilobyte/colorized-logs)
- (3) [nestedtextto](https://github.com/AndydeCleyre/nestedtextto)
- (2) [yamlpath](https://github.com/wwkimball/yamlpath)
- (6) [gitbook](https://blog.gitbook.com/product-updates/gitbook-3.0-document-everything-from-start-to-ship)
- (2) [html2svg](https://github.com/fathyb/html2svg)

### Coding Utils

* (2) [anewer](https://github.com/ysf/anewer) 
   | (6) [anew](https://github.com/tomnomnom/anew)
* (2) [pre-commit-hooks.nix](https://github.com/cachix/pre-commit-hooks.nix)

#### Miscellaneous

* (5) [zui](https://github.com/brimdata/zui)

#### Help

* (2) [halp](https://github.com/orhun/halp)
* (5) [eg](https://github.com/srsudar/eg)
* (2) [navi](https://github.com/denisidoro/navi)
* (2) [thefuck](https://github.com/nvbn/thefuck)
* (2) [tealdeer](https://github.com/dbrgn/tealdeer) 
   | [tlrc](https://github.com/tldr-pages/tlrc) 
   | [tldr-node-client](https://github.com/tldr-pages/tldr-node-client) 
   | [tinytldr](https://github.com/kovmir/tinytldr)
* (2) [hors](https://github.com/WindSoilder/hors) 
   | (6) [howdoi](https://github.com/gleitz/howdoi) 
   | (6) [how2](https://github.com/santinic/how2)
* (2) [so](https://github.com/samtay/so)
* (2) [cheat](https://github.com/cheat/cheat)
* (4.5) [ehh](https://github.com/lennardv2/ehh)
* (2) [cod](https://github.com/dim-an/cod)
* (2) [explainshell](https://github.com/idank/explainshell)
* (2) [dasht](https://github.com/sunaku/dasht)

#### Cleanup and Organizing

* (2.5) [bleachbit](https://www.bleachbit.org/) 
   | [czkawka](https://qarmin.github.io/czkawka/)
* (2) [xdg-ninja]() (Haskell!) 
   | [rmlint](https://rmlint.readthedocs.io/)
* (2) [organize-rt](https://gitlab.com/simonsan/organize-rt) 
   | [organize-cli](https://github.com/ManrajGrover/organize-cli) 
   | (5.5) [classifier](https://github.com/bhrigu123/classifier) 
   | (5.5) [organizer](https://gitlab.gnome.org/aviwad/organizer)
* (2) [backdown](https://github.com/Canop/backdown) 
   | (4) [fdupes](https://github.com/adrianlopezroche/fdupes)
* (4) [detox](https://github.com/dharple/detox)
* (2) [mat2](https://0xacab.org/jvoisin/mat2)
* (5) [wutag](https://github.com/vv9k/wutag)
* (2) [tmsu](https://tmsu.org/)
* (3) [musort](https://github.com/tdeerenberg/Musort)
* (3) [yyyymmdd](https://github.com/kaihendry/yyyymmdd)
* (2) [symlinks](https://github.com/brandt/symlinks)
* (2) [fclones](https://github.com/pkolaczk/fclones)

#### Moving and Renaming

* ( ) [rnr](https://github.com/ismaelgv/rnr) 
   | [f2](https://github.com/ayoisaiah/f2) 
   | [nomino](https://github.com/yaa110/nomino) 
   | [tempren](https://github.com/idle-code/tempren) 
   | [node-rename-cli](https://github.com/jhotmann/node-rename-cli) 
   | [repren](https://github.com/jlevy/repren) 
   | [rename](https://github.com/pstray/rename)
* ( ) [moove](https://github.com/urin/moove) 
   | [mmv-c](https://github.com/mcauley-penney/mmv-c) 
   | [mmv](https://github.com/itchyny/mmv) 
   | [massren](https://github.com/laurent22/massren)

### Other Command-Line Tools

* (2) [vale](https://vale.sh/) - use as an LSP for prose in nvim
* (2) [alex](https://github.com/wooorm/alex)
* (4) [pick](https://github.com/mptre/pick) 
   | [choose](https://github.com/jagprog5/choose) 
   | (6) [shmenu](https://github.com/duclos-cavalcanti/shmenu)
* (2.5) [atuin](https://github.com/atuinsh/atuin) 
   | [hishtory](https://github.com/ddworken/hishtory) 
   | [muc](https://github.com/nate-sys/muc) 
   | [bevel](https://github.com/NorfairKing/bevel) (Haskell!) 
   | [resh](https://github.com/curusarn/resh) 
   | [bashhub-client](https://github.com/rcaloras/bashhub-client) 
   | [mcfly](https://github.com/cantino/mcfly) + [mcfly-fzf](https://github.com/bnprks/mcfly-fzf) 
   | [hstr](https://github.com/dvorka/hstr)
* ( ) [file](https://search.nixos.org/packages?channel=23.11&show=file&from=0&size=50&sort=relevance&type=packages&query=file+type) 
   | [filetype](https://search.nixos.org/packages?channel=23.11&show=python311Packages.filetype&from=0&size=50&sort=relevance&type=packages&query=file+type)

## Miscellaneous Coding Utils
*  [autocomplete](https://github.com/withfig/autocomplete)
*  [todocheck](https://github.com/preslavmihaylov/todocheck) - Static code analyzer for annotated TODO comments.
*  [detect-indent-cli](https://github.com/sindresorhus/detect-indent-cli) - Detect the indentation of code. - but necessary?

## AI Assistants ([video](https://www.youtube.com/watch?v=7h732qLxtAk),[masterclass](https://www.youtube.com/watch?v=iO1mwxPNP5A))
* [Cody](https://sourcegraph.com/cody/chat)
* [Tabnine](https://www.tabnine.com/?ref=blog.pragmaticengineer.com) (2019)
* [GitHub Copilot](https://github.com/features/copilot?ref=blog.pragmaticengineer.com) (2021)
* [DevGPT](https://www.devgpt.com/)
* [CodeLlama](https://about.fb.com/news/2023/08/code-llama-ai-for-coding/)
* [Falcoder](https://huggingface.co/mrm8488/falcoder-7b)
* [Replit Ghostwriter](https://replit.com/site/ghostwriter?ref=blog.pragmaticengineer.com) (2022)
* [Amazon CodeWhisperer](https://aws.amazon.com/codewhisperer/?ref=blog.pragmaticengineer.com) (2022)
* [Codeium](https://codeium.com/?ref=blog.pragmaticengineer.com) (2022)
* [SourceGraph Cody](https://about.sourcegraph.com/cody?ref=blog.pragmaticengineer.com) (2023)
* [CodeComplete](https://codecomplete.ai/?ref=blog.pragmaticengineer.com) (2023)
* [FauxPilot](https://github.com/fauxpilot/fauxpilot?ref=blog.pragmaticengineer.com) (2023)
* [Tabby](https://github.com/TabbyML/tabby?ref=blog.pragmaticengineer.com) (2023)
* [Bard]()
* CLI / UI
  - [AI](https://github.com/nitefood/ai-bash-gpt) - A commandline ChatGPT client in BASH with conversation/completion support.
  - [Commandpilot](https://github.com/barthr/commandpilot) - An assistant which uses ChatGPT to aid in constructing commands for bash.
  - [chatgpt](https://github.com/mglantz/chatgpt) - Simple command line integration to Chat GPT.
  - [cligpt](https://github.com/paij0se/cligpt) - ChatGPT but in the terminal.
  - [gpt-do](https://github.com/yasyf/gpt-do) - This is a handy-dandy CLI for when you don't know wtf to do; instead of furiously grepping through man pages, simply use do (or ddo if on bash/zsh), and have GPT-3 do all the magic for you.
  - [aido-cli](https://github.com/kris7ian/aido-cli) - Looks another interface to online GPT models to execute command through natural language. Very poor   documentation and readme, though.
  - [chatbot-ui](https://github.com/mckaywrigley/chatbot-ui)
* Companies / Online Interfaces
  - [OpenAI APIs](https://openai.com/blog/openai-api?ref=blog.pragmaticengineer.com). Curiously, ChatGPT uses data entered via its web interface for training, but [not when using its APIs](https://openai.com/policies/api-data-usage-policies?ref=blog.pragmaticengineer.com). So an obvious workaround is to use the APIs with a wrapper, like the open source [Chatbot UI](https://github.com/mckaywrigley/chatbot-ui?ref=blog.pragmaticengineer.com).
  - [Azure OpenAI Service](https://azure.microsoft.com/en-us/products/cognitive-services/openai-service/?ref=blog.pragmaticengineer.com). Fine-tune custom AI models with your company data and hyperparameters.
  - [MosaicML](https://www.mosaicml.com/?ref=blog.pragmaticengineer.com). Train large AI models with your company data in a secure environment. Point to an AWS S3 bucket, and that’s it!
  - [Glean.](https://www.glean.com/?ref=blog.pragmaticengineer.com) AI-powered workplace search across the company’s apps, powered by deep learning-based large language models (LLM.)
  - [Aleph Alpha](https://aleph-alpha.com/). A company emphasizing that it’s a European AI technology company, which has open sourced its code codebase and doesn’t use customer data to
train models.
  - [Cohere](https://cohere.ai/). A set of LLMs to generate text, summarize it, classify and retrieve it. → https://dashboard.cohere.com/welcome/register

## Project Templates and Generation
  [copier](https://github.com/copier-org/copier) 
   | 
   [yeoman](https://yeoman.io/) 
   | 
   [kickstart](https://github.com/Keats/kickstart) 
   | 
  [cookiecutter](https://github.com/audreyr/cookiecutter) 
   | 
  [proji](https://github.com/nikoksr/proji) (in Go, old) 
   | 
  [boilr](https://github.com/tmrts/boilr) (in Go, even older) 
   | 
  [nunu](https://github.com/go-nunu/nunu) - CLI for building Go applications

## Build Tools
* [cmake](https://github.com/Kitware/CMake)
* [maven]()
* [gradle]()
* [ninja]()
* [bazel](https://github.com/bazelbuild/bazel)
* [scons](https://github.com/SCons/scons) (even supports LaTeX)
* [xmake](https://github.com/xmake-io/xmake)
* [pants](https://www.pantsbuild.org/)

### Task Scripting
* (2) [makesure](https://github.com/xonixx/makesure)
*  [make](https://www.gnu.org/software/make/)
* (2)  [just](https://github.com/casey/just)
* [fmake](https://github.com/bharatvaj/fmake)
*  [mxflow-cli](https://github.com/metaory/mxflow-cli)
## Command Running and Automation
* (6) [cron](https://opensource.com/article/21/7/cron-linux)
* (2) [fcron](http://fcron.free.fr/)
* (4) [cronutils](https://github.com/google/cronutils)
* (5) [actiona](https://github.com/Jmgr/actiona)
* (2) [sake](https://github.com/alajmo/sake)
* (4) [foy](https://github.com/zaaack/foy)
* (4) [jobber](https://github.com/dshearer/jobber)

## License
* [license-up](https://github.com/nikitavoloboev/license-up) 
   | [mklicense](https://github.com/cezaraugusto/mklicense) 
   | [legit](https://github.com/captainsafia/legit) 
   | [licins](https://github.com/dogoncouch/licins) 
   | [upnup](https://github.com/tomit4/upnup)
* [choosealicense](https://github.com/lord63/choosealicense-cli)

## Readme
* [readme-md-generator](https://github.com/kefranabg/readme-md-generator) 
   | [README-Generator](https://github.com/markmcdnyu/README-Generator) 
   | [readme-generator](https://github.com/jfisher396/readme-generator)
* [profile-readme-generator](https://rahuldkjain.github.io/gh-profile-readme-generator/)

## Formatting
* (2)  [treefmt](https://github.com/numtide/treefmt)
* (2)  [treefmt-nix](https://github.com/numtide/treefmt-nix)
* (4)  [uncrustify](https://github.com/uncrustify/uncrustify/)

## Testing
* (5)  [squ](https://github.com/opensibyl/squ)
* (5)  [pvcheck](https://github.com/claudio-unipv/pvcheck)
* (3)  [cucumber](https://cucumber.io/docs), [gherkin](https://cucumber.io/docs/gherkin/)

## Code Navigation
* [ctags](https://github.com/universal-ctags/ctags) 
   | [cscope](http://cscope.sourceforge.net/)

## Changelog and Realeases
* [semantic-release](https://github.com/semantic-release/semantic-release) 
   | [release-it](https://github.com/webpro/release-it)
* [clog-cli](https://github.com/clog-tool/clog-cli) 
   | [release](https://github.com/vercel/release)
* [unleash](https://github.com/Unleash/unleash)

## Debugging


## Notebooks
* [jupyter]() (entire suite)
* [nteract](https://nteract.io/desktop)
* [Apache Zeppelin](https://zeppelin.apache.org/)
* [polynote/](https://github.com/polynote/polynote/)

## 

## Code Analysis / Refactoring / Formatting Tools
*  [Sourcegraph](https://sourcegraph.com/search) → Cody
*  [tokei](https://github.com/XAMPPRocky/tokei)- code summarizer
  -  → compare [cloc](https://github.com/AlDanial/cloc) - Count Lines of Code  compare with tokei
  -  → compare [scc](https://github.com/boyter/scc) - Sloc, Cloc and Code: scc is a very fast accurate code counter with complexity calculations and COCOMO estimates written in pure Go
*  [ripsecrets](https://github.com/sirwart/ripsecrets) - A command-line tool to prevent committing secret keys into your source code
*  [fastmod](https://github.com/facebookincubator/fastmod) - A tool to assist you with large-scale codebase refactors, and it supports most of codemod's options. It is focused on improving the use case "I want to use interactive mode to make sure my regex is correct, and then I want to apply the regex everywhere". 
    * [Codemod](Codemod - probably not, just compare with fastmod
* 󱐋󱐋󱐋 [tag](https://github.com/aykamko/tag) - Instantly jump to your ag matches. Abandoned; fork and update and package for Nix
*  [Gource](https://github.com/acaudwell/Gource) [on YouTube](https://www.youtube.com/@gourceryt/featured)
* LLL [lexis](https://github.com/k4m4/lexis) - word counting made easy. Retrieve the number of words in a string or stdin.
* [cppcheck](https://github.com/danmar/cppcheck/) - Static analysis tool for C/C++ code providing unique code analysis to detect bugs and focuses on detecting undefined behaviour and dangerous coding constructs.
* [restructor](https://strlen.com/restructor/) - probably not usable, but very interesting conceptually
* [cspell](https://cspell.org/
* [Frama-C](https://git.frama-c.com/pub/frama-c/) - Open-source extensible and collaborative platform dedicated to source-code analysis of C software. Frama-C can assist from the navigation through unfamiliar projects up to the certification of critical software. (OCAML) - experimental C++ support
* Platforms
  - [Codecov](https://codecov.io/) - Continuous Code Coverage
  * [Deepsource](https://deepsource.com/)  - the code health platform
  * [Sonarqube](https://github.com/SonarSource/sonarqube) - Put your technical debt under control

## Debugging
* [Valgrind](http://valgrind.org/) - Valgrind is a GPL’d system for debugging and profiling Linux programs.
* [gdb-dashboard](https://github.com/cyrus-and/gdb-dashboard)- Modular visual interface for GDB.
* [rr -](https://github.com/rr-debugger/rr -)Debug the recording, deterministically, as many times as you want. https://rr-project.org/
* [rebound -](https://github.com/shobrook/rebound -)Command-line debugger that instantly fetches Stack Overflow results when you get a compiler error.  - fork and update?
* https://trunk.io/pricing

## Snippets
* https://espanso.org/
* https://tldr.sh/  → see clients, web apps and tools
* https://github.com/out-of-cheese-error/the-way-
* [snipkit-](https://github.com/lemoony/snipkit-)looks really look, interesting concept  (Go)
* [qc](https://github.com/qownnotes/qc)looks great, need to try
* [pet-](https://github.com/knqyf263/pet-) need to compare with the-way
* [tldr-sh-client -](https://github.com/raylee/tldr-sh-client -)A fully-functional bash client for tldr, simplified and community-driven man pages → move to qol
* [snips -](https://github.com/srijanshetty/snips -)Command line tool to manage snippets of code. Node

## Documentation
* https://github.com/freeCodeCamp/devdocs
* [mdBook](https://github.com/rust-lang/mdBook) - Create book from markdown files.
* [Sphinx](https://www.sphinx-doc.org/en/master/)
    * [Shibuya](https://shibuya.lepture.com/) (theme)
* https://zealdocs.org/ - Zeal is an offline documentation browser for software developers. - GUI
* [Read the Docs](https://readthedocs.org/)
* [Doxygen](https://www.doxygen.nl/index.html)
* https://www.lihaoyi.com/Scalatex/
* [MkDocs](https://www.mkdocs.org/)
* https://github.com/sunaku/dasht
* https://github.com/slatedocs/slate
* [Docusaurus](https://docusaurus.io/)
* [Daux.io](https://dauxio.github.io/) - uses PHP and Composer
* [GitBook](https://www.gitbook.com/)
* [docsify/](https://github.com/docsifyjs/docsify/)- [Docsify](https://docsify.js.org/)
* [zest](https://github.com/zestdocs/zest)- unmaintained, but fork and update?

## Syntax Highlighting
* [Welcome! — Pygments](https://pygments.org/) (Python)
* https://gitlab.com/saalen/highlight  http://www.andre-simon.de/doku/highlight/highlight.php (C++)
* [chroma](https://github.com/alecthomas/chroma)(Go)
* https://highlightjs.org/ (JavaScript)
* [syntect](https://github.com/trishume/syntect)(Rust)

## Logs
* [multitail -](https://github.com/folkertvanheusden/multitail -)A command to open multiple log files in a single terminal window and monitor them in real-time.
* [logdissect/ -](https://github.com/dogoncouch/logdissect/ -)CLI utility and Python API for analyzing log files and other data. ([MIT](https://github.com/dogoncouch/logdissect/blob/master/LICENSE)) - fork, update, and extend!
* [lnav](https://github.com/tstack/lnav)- [The Logfile Navigator](https://github.com/tstack/lnav) - An advanced and colorful log file viewer with TUI interface.

## Code Modeling and Visualization
* [Graphviz](https://graphviz.org/)
* https://www.rawgraphs.io/
* https://github.com/thebjorn/pydeps
* [PlantUML](https://sourceforge.net/p/plantuml/code/HEAD/tree/tags/plantuml-1.2023.2/) https://sourceforge.net/projects/plantuml/
* [mermaid](https://github.com/mermaid-js/mermaid)http://mermaid.js.org/
* https://github.com/umlet/umlet
* https://invent.kde.org/sdk/umbrello  https://apps.kde.org/umbrello/
* [Gaphor](https://gaphor.org/) - A simple and fast software and systems modeling tool. https://gaphor.org/en/
* https://github.com/ModelioOpenSource/Modelio

## Semantic Versioning
* [sh-semver](https://github.com/qzb/sh-semver) - Semver tool for bash - finds versions matching to specified rules
* [semver_bash](https://github.com/cloudflare/semver_bash) - Semantic Versioning in Bash
* [git-semver[git-semver](https://github.com/markchalloner/git-semver](https://github.com/markchalloner/git-semver[git-semver](https://github.com/markchalloner/git-semver)) - A git plugin to make Semantic Versioning 2.0.0 and Change Log management easier.

## SSH Web Interface / Admin Tools
* ** [WebSSH2](https://github.com/billchurch/WebSSH2)**: A web based SSH2 client using xterm.js, socket.io, and ssh2.
* ** [TermPair](https://github.com/cs01/termpair)**: View and control terminals from your browser with end-to-end encryption
* ** [webssh](https://github.com/huashengdun/webssh)**: Web based ssh client.
* ** [Go SSH Web Client](https://github.com/wuchihsu/go-ssh-web-client)**: A simple SSH web client using Go, WebSocket and Xterm.js.
* ** [SSH Web Client](https://github.com/roke22/PHP-SSH2-Web-Client)**: SSH Web Client with PHP.
* ** [Bastillion](https://www.bastillion.io/)**: Bastillion is an open-source web-based SSH console that centrally manages administrative access to systems.
* ** [Selenoid UI](https://github.com/aerokube/selenoid-ui)**: Simple UI for the scalable golang implementation of Selenium Hub named Selenoid. We use XTerm for streaming logs over websockets from docker containers.
* ** [SSHy](https://github.com/stuicey/SSHy)**: HTML5 Based SSHv2 Web Client with E2E encryption utilising xterm.js, SJCL & websockets. - old and unmaintained
* ** [Laravel Ssh Web Client](https://github.com/roke22/Laravel-ssh-client)**: Laravel server inventory with ssh web client to connect at server using xterm.js
* ** [Render](https://render.com/)**: Platform-as-a-service for your apps, websites, and databases using xterm.js to provide a command prompt for user containers and for streaming build and runtime logs. (Freemium)

## ML/AI
→ [The Ultimate Coding Setup for Data Science](https://youtu.be/TdbeymTcYYE) use conda for environments and pip(/poetry) for installation

→ https://github.com/ml-tooling

→ [Datalust](https://github.com/datalust) (mostly logging-related)

* [llm](https://github.com/simonw/llm)
* https://github.com/PrefectHQ/marvin
* [katib](https://github.com/kubeflow/katib)(hyperparameter tuning)
* https://github.com/IllDepence/unarXive
* [einops](https://github.com/arogozhnikov/einops)https://arogozhnikov.github.io/2023/07/13/retrospective-thoughts-on-einops.html
* https://github.com/dmlc/xgboost

## Web and App Development → [What Is JWT and Why Should You Use JWT](https://www.youtube.com/watch?v=7Q17ubqLfaM) - YouTube
* [mint-lang](https://mint-lang.com/) 
### APIs
→ https://github.com/public-apis/public-apis
* [Postman](https://www.getpostman.com/) - Postman, allows a user to develop and test APIs quickly.
### Hosting, Connectivity, Net App Programming
* Azure
  - [untitledgoosetool](https://github.com/cisagov/untitledgoosetool)
* [Disroot](https://disroot.org/) - Hosted versions of many of the services on this list. (Multiple licenses)
* [Apache HTTP Server](https://httpd.apache.org/) - Secure, efficient, and extensible web server. ([Apache License 2.0](http://www.apache.org/licenses/))
* https://uberspace.de/en/ (hosting)
    * [⚛️ Uberlab — UberLab 7 documentation](https://lab.uberspace.de/)
* [linode](https://www.linode.com/), https://github.com/linode/linode-cli
* → nextcloud
* https://github.com/adnanh/webhook
* [proton drive](https://proton.me/drive/download)
* [lighttpd](http://www.lighttpd.net/) - Optimized for speed-critical environments while remaining standards-compliant, secure and flexible. ([Revised BSD license](http://www.lighttpd.net/assets/COPYING)) → try on Inspiron with Alpine
* [nginx](https://nginx.org/) - HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server. ([2-clause BSD-like license](https://nginx.org/LICENSE))
* [shell2http](https://github.com/msoap/shell2http) - HTTP-server to execute shell commands. Designed for development, prototyping or remote control. → try for planager?
* [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/) - KDE Connect implementation for GNOME.
* https://kdeconnect.kde.org/
* [BlueZ](http://www.bluez.org/) - Official Linux Bluetooth protocol stack.
* [Zerotier](https://my.zerotier.com/) - Zerotier is a program that creates a Virtual Network for only your devices with end to end encryption over the internet. By default Zerotier will manage your virtual network but you can switch to a self-managed network if you prefer.
* https://hocus.dev/ - cloud dev environments, pre-built, free for individual use
* [SparkleShare -](https://github.com/hbons/SparkleShare -)An Open Source collaboration and sharing tool https://www.sparkleshare.org/ [Nix](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=sparkleshare)
* [heroku](https://www.heroku.com/)
* https://github.com/hocus-dev/hocus
* https://www.pushbullet.com/   [pushbullet-bash](https://github.com/Red5d/pushbullet-bash) - Bash interface to the PushBullet API - requires Facebook or Google
* [pushblast](https://github.com/alebcay/pushblast) - Get PushBullet notifications when a shell program exits
### Static Site
* [Hugo](https://github.com/gohugoio/hugo) - The world’s fastest framework for building websites.
    * [gohugo.io](https://gohugo.io/)
* [nanoc -](https://github.com/nanoc/nanoc -)Static site generator written in Ruby; extremely powerful and customizable; support many formats to generate HTML content.
* [surge -](https://github.com/sintaxi/surge -)Static web publishing on surge.sh CDN.
* [metalsmith -](https://github.com/metalsmith/metalsmith -)An extremely simple static site generator; all functionalities are provided by plugins that can be combined and chained; written and extendable in Javascript.
* [ipfs-deploy](https://github.com/agentofuser/ipfs-deploy) - Zero-Config CLI to Deploy Static Websites to IPFS [IPFS](https://en.wikipedia.org/wiki/InterPlanetary_File_System).
### Wiki
- ~~☒ Wiki~~
    - [x]  [Mycorrhiza Wiki](https://github.com/bouncepaw/mycorrhiza) - A lightweight file-system wiki engine that uses Git for keeping history.
### HTTP Client / REST Client
* [httpie -](https://github.com/httpie/httpie -)HTTPie is a command line HTTP client, a user-friendly cURL replacement
* [http-prompt](https://github.com/eliangcs/http-prompt)- Interactive HTTP client featuring autocomplete and syntax highlighting.
* [ain](https://github.com/jonaslu/ain)- HTTP client with a simple format to organize API endpoints.
### HTTP Server
* [serve](https://github.com/vercel/serve)- Serve static files (https, CORS, GZIP compression, etc).
* [simplehttp](https://github.com/snwfdhmp/simplehttp)- Easily serve a local directory over HTTP. - try with planager
* [shell2http](https://github.com/msoap/shell2http)- Shell script based HTTP server. - try with planager
* [httplab -](https://github.com/gchaincl/httplab -)The interactive web server, let you inspect HTTP requests and forge responses.
* [hflow -](https://github.com/comradequinn/hflow -)A command-line, debugging http/s proxy server.
* [balls -](https://github.com/jneen/balls -)Bash on Balls
### Socket
* [neoss](https://github.com/PabloLec/neoss)- User-friendly and detailed socket statistics.
* [iola](https://github.com/pvarentsov/iola)- Socket client with REST API.
### Server, Deployment
* [dog [-](https://github.com/ogham/dog [-)DNS lookup client *(better `dig`)](https://dev.to/lissy93/cli-tools-you-cant-live-without-57f6#doghttpsgithubcomoghamdog-dns-lookup-client-_better-dig_)* [dog](https://github.com/vschwaberow/dog)- looks good
* [cowyo -](https://github.com/schollz/cowyo -)Feature rich wiki webserver for minimalists. - planager?
* https://github.com/openresty/lua-nginx-module
* [xh](https://github.com/ducaale/xh) - Friendly and fast tool for sending HTTP requests - like Httpie, but faster
* [fenix](https://github.com/coreybutler/fenix)[Fenix Web Server](https://fenixwebserver.com/) - A multi-host local static web server with push-button sharing (desktop app).
* [vesper - Vesper](https://github.com/chris-rock/vesper - Vesper)is a HTTP framework for Bash/Unix Shell
* [simplehttp Fastest](https://github.com/snwfdhmp/simplehttp Fastest)and simplest way to start serving a local directory over http.
* [serve -](https://github.com/zeit/serve -)Serves a static site, single page application, or just a static file, and provides a neat interface for listing the directory's contents.
* [shipit -](https://github.com/sapegin/shipit -)Minimalistic SSH deployment
### Frameworks
* https://hypermedia.systems/
* https://cordova.apache.org/
* [taipy](https://github.com/Avaiga/taipy)- Turns Data and AI algorithms into full web applications in no time.
* https://trunkrs.dev/
* https://github.com/falconry/falcon
* [Devilbox](https://github.com/cytopia/devilbox) - The devilbox is a modern and highly customisable dockerized PHP stack supporting full LAMP and MEAN and running on all major platforms. The main goal is to easily switch and combine any version required for local development.
* [PonyORM - Python ORM with beautiful query syntax](https://ponyorm.org/)
* https://nuxt.com/blog/introducing-nuxt-devtools
* [typo3](https://github.com/TYPO3/typo3)- [The TYPO3 Project and Community – Open Source CMS](https://typo3.org/)
### Testing / Mocking
* [tsung -](https://github.com/processone/tsung -)A multi-protocol distributed load testing tool that can be used to stress HTTP, WebDAV, SOAP, PostgreSQL, MySQL, LDAP and Jabber/XMPP servers.
* [loadtest](https://github.com/alexfernandez/loadtest)- Run load tests.
* [Mockoon](https://mockoon.com/) - an API / HTTP REST mocking desktop application
### Server Benchmarking
* [apachebench (ab)](http://httpd.apache.org/docs/2.2/programs/ab.html)- server benchmarking tool
* [siege](http://www.joedog.org/siege-home/)
* [phantomas -](https://github.com/macbre/phantomas -)website perf evaluation tool
* https://github.com/rakyll/hey
* https://github.com/httperf/httperf
* [vegeta](https://github.com/tsenart/vegeta)
* [wrk](https://github.com/wg/wrk)
### Misc
* [nativefier -](https://github.com/jiahaog/nativefier -)Make any web page a desktop application.
    * https://sass-lang.com/
* [caniuse-cmd](https://github.com/sgentle/caniuse-cmd)- Search [caniuse.com](https://github.com/Correia-jpv/fucking-awesome-cli-apps/blob/main/caniuse.com) about browser support of features.
* [xpe -](https://github.com/charmparticle/xpe -)A commandline xpath tool that is easy to use.
* [snallygaster -](https://github.com/hannob/snallygaster -)Tool to scan for secret files on HTTP servers.
* [strip-css-comments-cli](https://github.com/sindresorhus/strip-css-comments-cli)- Strip comments from CSS.
* https://github.com/fractarchy/fractarchy-cms
* [urlhunter -](https://github.com/utkusen/urlhunter -)Recon tool that allows searching on URLs that are exposed via shortener services.
* https://todomvc.com/
* [Neocities](https://neocities.org/) - GeoCities for the modern world. ([BSD 2-clause](https://github.com/neocities/neocities/blob/master/LICENSE.txt))
* https://vercel.com/pricing
* [localtunnel](https://github.com/localtunnel/localtunnel)- Expose your localhost to the world for easy testing and sharing.
* [ergo](https://github.com/cristianoliveira/ergo) - The management of multiple local services running over different ports made easy.
* [https://ngrok.com/ -](https://ngrok.com/) https://github.com/ngrok - Secure introspectable tunnels to localhost.
* [Insomnia](https://insomnia.rest/) - A simple, beautiful, and free REST API client. (paid service)
* https://vitepress.dev/ (from  https://wiki.nikiv.dev/, https://wiki.nikiv.dev/free[knowledge](https://github.com/nikitavoloboev/knowledge))

https://jaspervdj.be/hakyll/ - Haskell static site generator

### System Management

* (2) [osquery](https://github.com/osquery/osquery)
* (2) [firejail](https://github.com/netblue30/firejail)
* (2) [CoreCtrl](https://gitlab.com/corectrl/corectrl)
* (2) [dysk](https://github.com/Canop/dysk)
* (2) [auto-cpufreq](https://github.com/AdnanHodzic/auto-cpufreq)
* (4) [cpu-x](https://thetumultuousunicornofdarkness.github.io/CPU-X/)
* (2) [systeroid](https://github.com/orhun/systeroid)
* (2) [tlp](https://linrunner.de/tlp/)
* (2) [htop](https://github.com/htop-dev/htop) 
   | [glances](https://github.com/nicolargo/glances) 
   | [bottom](https://clementtsang.github.io/bottom/nightly/) 
   | [tiptop](https://github.com/nschloe/tiptop) 
   | [gtop](https://github.com/aksakalli/gtop) 
   | [btop](https://github.com/aristocratos/btop) 
   | [yvers](https://github.com/TokieSan/yvers) 
   | [zfxtop](https://github.com/ssleert/zfxtop) 
   | [below](https://github.com/facebookincubator/below) 
   | [atop](https://www.atoptool.nl/) 
   | [gotop](https://github.com/xxxserxxx/gotop)
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
* (2.5) [bupstash](https://github.com/andrewchambers/bupstash) 
   | [duplicity](https://gitlab.com/duplicity/duplicity) + [duply](https://github.com/Oefenweb/duply) 
   | [bup](https://github.com/bup/bup) 
   | [borg](https://github.com/borgbackup) + (optionally) [vorta](https://vorta.borgbase.com/) 
   | [rsnapshot](https://github.com/rsnapshot/rsnapshot) 
   | [restic](https://github.com/restic/restic) 
   | [kopia](https://kopia.io/)
* (5) [batstat](https://github.com/Juve45/batstat) 
   | (3) [powertop](https://github.com/fenrus75/powertop)
* (2) [brightnessctl](https://github.com/Hummer12007/brightnessctl)
* (5) [shallow-backup](https://github.com/alichtman/shallow-backup)
* (2.5) [dust](https://github.com/bootandy/dust) 
   | [dua-cli](https://github.com/Byron/dua-cli/) 
   | [duc]() 
   | [pda]() 
   | [diskonaut]() 
   | [duf]() 
   | [vizex]() 
   | [ncdu]() 
   | [tin-summer](https://github.com/vmchale/tin-summer) 
   | [gdu]() 
   | [cdu]() 
   | [diskus]() 
   | [dutree]() 
   | [dfc]()
* ( ) [QDirStat](https://github.com/shundhammer/qdirstat) 
   | [Filelight](https://apps.kde.org/filelight/) 
   | [Baobab](https://wiki.gnome.org/Apps/DiskUsageAnalyzer) 
   | [JDisReport](http://www.jgoodies.com/freeware/jdiskreport/) 
   | [gdmap](https://gdmap.sourceforge.net/)
* (3) [udisks](https://github.com/storaged-/nnn
* project/udisks)
* (3) [udiskie](https://github.com/coldfix/udiskie)
* (4) [gparted]() 
   | [clonezilla]()
* (2.5) [macchina](https://github.com/Macchina-CLI/macchina) 
   | [bfetch](https://github.com/nnbnh/bfetch) 
   | [nerdfetch](https://codeberg.org/thatonecalculator/nerdfetch) 
   | [fastfetch](https://github.com/fastfetch-cli/fastfetch) 
   | [sfetch](https://codeberg.org/DoutorJP/sfetch) 
   | [archey4](https://github.com/HorlogeSkynet/archey4) (alternatives: [neofetch](https://github.com/dylanaraps/neofetch), [pfetch](https://github.com/dylanaraps/pfetch))
* (4) [supervisor](http://supervisord.org/)
* (2) [fileschanged](https://www.nongnu.org/fileschanged)

### Security, Cryptography, Authentication, Passwords

* (3) [gnupg](https://www.gnupg.org/) (frontend [seahorse](https://wiki.gnome.org/Apps/Seahorse)) 
   | [enc](https://github.com/life4/enc)
* (3) [openssl](https://github.com/openssl/openssl)
* ( ) [oauth2c](https://github.com/cloudentity/oauth2c)
* ( ) [pass](https://git.zx2c4.com/password-store/) (frontend [cpass](https://github.com/xlucn/cpass), tool [passfzf](https://git.sr.ht/~mlaparie/passfzf)) 
   | [1password](https://developer.1password.com/docs/ssh/) 
   | [AuthPass](https://authpass.app/) 
   | [Bitwarden](https://bitwarden.com/) + [clients](https://github.com/bitwarden/clients), alternative server [vaultwarden](https://github.com/dani-garcia/vaultwarden) 
   | [keepassxc](https://github.com/keepassxreboot/keepassxc) 
   | [buttercup](https://buttercup.pw/) 
   | [gopass](https://github.com/gopasspw/gopass) 
   | [keeweb](https://keeweb.info/) 
   | [pa](https://github.com/biox/pa) 
   | [keydex](https://github.com/shikaan/keydex)
* ( ) [keepmenu](https://github.com/firecat53/keepmenu)
* ( ) [ots](https://github.com/sniptt-official/ots) 
   | [Secrets](https://apps.gnome.org/Secrets/) 
   | [SpicyPass](https://github.com/JFreegman/SpicyPass)
* ( ) [minisign](https://jedisct1.github.io/minisign/)
* ( ) [trufflehog](https://github.com/trufflesecurity/trufflehog)
* ( ) [clamAV](https://www.clamav.net/)
* ( ) [obfuscate](https://apps.gnome.org/app/com.belmoussaoui.Obfuscate/)
* ( ) [authenticator](https://gitlab.gnome.org/World/Authenticator)
* ( ) [hashcat](https://github.com/hashcat/hashcat)
* ( ) [collision](https://collision.geopjr.dev/)
* ( ) [paper-age](https://github.com/matiaskorhonen/paper-age)
* (4) [age](https://github.com/FiloSottile/age) 
   | [rage](https://github.com/str4d/rage)
* (3) [kestrel](https://github.com/finfet/kestrel)

### Luxury, Fun
* (2) [display3d](https://github.com/redpenguinyt/display3d)
* (2)  [pipes-rs](https://github.com/lhvy/pipes-rs) 
   | [Pipeseroni](https://pipeseroni.github.io/) 
   | [pipes.sh](http://pipes.sh/) 
   | [pipes.js](https://github.com/Oman395/pipes.js)
* (2)  [dna_bash](https://github.com/clyde80/dna_bash)
* (2)  [cmatrix](https://github.com/abishekvashok/cmatrix)
* (2)  [fetch-master-6000](https://github.com/anhsirk0/fetch-master-6000)
* (6) [LinuxLogo](https://sourceforge.net/projects/linuxlogo/)
* (2)  [cbonsai](https://gitlab.com/jallbrit/cbonsai)
* (2)  [gof-rs](https://github.com/omagdy7/gof-rs)
* (2)  [cool-retro-term](https://github.com/Swordfish90/cool-retro-term)
* (4)  [edex-ui](https://github.com/GitSquared/edex-ui)
* (2) [gambit](https://github.com/maaslalani/gambit)
* (4) [matrix-webcam](https://github.com/joschuck/matrix-webcam) - Take your video conference from within the matrix. * USE FOR TEAMS, CONTRIBUTE TO NEXT STEPS * package for NixOS
    - [v4l2loopback](https://github.com/umlaeute/v4l2loopback)
    - [gstreamer use](https://gstreamer.freedesktop.org/documentation/installing/on-linux.html?gi-language=c)
* (2) [->](https://blog.ghaiklor.com/2020/07/27/high-performant-2d-renderer-in-a-terminal/) * [terminal-canvas](https://github.com/ghaiklor/terminal-canvas)
* (5) [livescore-cli](https://github.com/codeezer/livescore-cli) (python)
* (5) [football-cli](https://github.com/manrajgrover/football-cli) (JS)
* (5) [soccer-cli](https://github.com/architv/soccer-cli) (python)
* (2) [lolcat](https://github.com/busyloop/lolcat)
* (2) [dotacat](https://gitlab.scd31.com/stephen/dotacat)
* (2) [lolcat](https://github.com/IchMageBaume/clolcat)
* (5) [rainbow](https://github.com/raincoats/rainbow)
* Cowsay family
  - (6) [rank-amateur-cowsay](https://github.com/tnalpgge/rank-amateur-cowsay) - A program that generates a ASCII art of a cow with a bubble containing the specified message (I provide the Wikipedia link since at the moment the link to the author's homepage results to be unreachable).
  - (6) [cowsay](https://github.com/piuccio/cowsay)
  - (2) [cowsay](https://github.com/cowsay-org/cowsay)
  - (6) [cowsay](https://github.com/sckott/cowsay) (R)
  - (4) [Neo-cowsay](https://github.com/Code-Hex/Neo-cowsay)
  - (6) [yosay](https://github.com/yeoman/yosay) - Like cowsay, but for yeoman.
  - (6) [ricksay](https://github.com/roma-guru/ricksay) - Quotes from Rick and Morty.
  - (6) [ponysay](https://github.com/erkin/ponysay) - Pony rewrite of cowsay.
* Decoration, Screensavers
  - (5) [cli-fireplace](https://github.com/dolsup/cli-fireplace) - Shows digital fireplace.
  - (3) [ctree](https://github.com/gleich/ctree) - A Christmas tree right from your terminal.
  - (3) [YuleLog](https://github.com/Duroktar/YuleLog) - Christmas Yule Log fireplace.
  - (2) [cmatrix](https://github.com/Treri/cmatrix)
  - (2) [TMatrix](https://github.com/M4444/TMatrix)
  - (6) [pokeget](https://github.com/talwat/pokeget) - A bash script you can use to display cool sprites of pokemon in your terminal.
  - (3) [LundukeHoliday](https://github.com/BryanLunduke/LundukeHoliday) - A simple Bash script that shows some animated, ASCII holiday decorations in your shell.
  - (5) [ternimal](https://github.com/p-e-w/ternimal) - Simulate a lifeform in the terminal.
  - (2) [asciiquarium-transparent](https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=asciiquarium) - Enjoy the mysteries of the sea from the safety of your own terminal!
  - (5) [termsaver](https://github.com/brunobraga/termsaver) - termsaver to enjoy fancy ASCII screensavers like matrix, clock, starwars, and a couple of not-safe-for-work screens.
  - (6) [screensaver](https://github.com/gillstrom/screensaver) - Start the screensaver.
  - (6) [pokeget-rs](https://github.com/talwat/pokeget-rs)[pokeget](https://github.com/talwat/pokeget)- Display sprites of pokemon.
  - (2) [sl](https://github.com/mtoyoda/sl) - A steam locomotive traverses the screen from right to left if `sl` is typed instead of `ls`.
  - (2) [genact](https://github.com/svenstaro/genact): A nonsense activity generator.
* Generation
  - (2) [meme](https://github.com/nomad-software/meme)
  - (5) [text-meme-cli](https://github.com/beatfreaker/text-meme-cli) - Generate text memes.
  - (5) [dankcli](https://github.com/sggts04/dankcli) - Add text to meme image templates.
* Games
  - (5) [maze_solver_rust](https://github.com/Vlamonster/maze_solver_rust) - Generate, display and solve mazes in an animated way in the terminal.
* Quotes, Messages, Welcomes
  - (2) [pyjokes](https://github.com/pyjokes/pyjokes) - One line jokes for programmers (jokes as a service).
  - (5) [quote-cli](https://github.com/riyadhalnur/quote-cli) - Get a random quote or the quote of the day in your CLI.
  - (2) [fortune-mod](https://github.com/shlomif/fortune-mod) - Shows a random fortune.
  - (5) [welcome.sh](https://github.com/G2-Games/welcome.sh) - A nice little script that greets you on every launch, with some helpful (and customizable!) information.
  - (6) [fortune](https://github.com/bmc/fortune) - Generates random messages feched from a quotation database.
* Cool Effects
  - (5) [no-more-secrets](https://github.com/bartobri/no-more-secrets)
* Educational, Nerd Stuff
  - (5) [sha256-animation](https://github.com/in3rsha/sha256-animation)

### Nix Cheats
* (3) [Flatpak](https://flatpak.org/) + [flatseal]()
* (3) [AppImage](https://appimage.org/) + [appimagepool](https://github.com/prateekmedia/appimagepool)?

### Programming Language Specific
* (2) [poetry](https://python-poetry.org/nodejs)
* ( ) [nodejs_21](https://nodejs.org/en)
* ( ) [bun](https://bun.sh/)
* (2) [android-studio](https://search.nixos.org/packages?channel=unstable&show=android-studio&from=0&size=50&sort=relevance&type=packages&query=android+studio)
* ( ) [plumbum](https://github.com/tomerfiliba/plumbum)
* ( ) [ward](https://ward.readthedocs.io/en/latest/)
* ( ) [cattrs](https://catt.rs/en/stable/index.html)
* ( ) [nodemon](https://www.npmjs.com/package/nodemon)
- (4) [marked-terminal](https://github.com/mikaelbr/marked-terminal)

### Other Programming Utilities
* (3) [upx](https://upx.github.io/)


### Development Tools

#### Containers, Orchestration, CI
* (2) [ctop](https://github.com/bcicen/ctop)
* (1) [docker](https://www.docker.com/)
* (2) [slimtoolkit](https://slimtoolkit.org/)
* (2) [dive](https://github.com/wagoodman/dive)
* (2) [lazydocker](https://github.com/jesseduffield/lazydocker) 
   | [dry](https://github.com/moncho/dry) 
   | [dockly](https://github.com/lirantal/dockly)
* (2) [buildx](https://github.com/docker/buildx)
* ( ) [docker-pushrm](https://github.com/christian-korneck/docker-pushrm)
* ( ) [watchtower](https://github.com/containrrr/watchtower)
* (2) [kubernetes](https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=kubernetes) (provides kubectl, among others)
* ( ) [kubebox](https://github.com/astefanutti/kubebox) 
   | [k9s](https://github.com/derailed/k9s) 
   | [kdash](https://github.com/kdash-rs/kdash)
* (2) [kool](https://github.com/kool-dev/kool)
* (3) [cloudtty](https://github.com/cloudtty/cloudtty)
* (2) [updatecli](https://github.com/updatecli/updatecli)
* (2) [renovate](https://docs.renovatebot.com/)
* ( ) [Hercules CI](https://hercules-ci.com/)
* (1) [podman](https://github.com/containers/podman) - read [this](https://blog.while-true-do.io/podman-graphical-interfaces/)
* (2) [chroot](https://github.com/coreutils/coreutils/blob/master/src/chroot.c) 
   | [lxc + lxcfc](https://linuxcontainers.org/) 
   | [conty](https://github.com/Kron4ek/Conty)
* ( ) [ContainerSSH](https://github.com/ContainerSSH/ContainerSSH)
* (2) [ops](https://ops.city)




## To Modify / "Needs work"
* (5) [********* pacgraph](https://github.com/keenerd/pacgraph) - port for Nix
* (5) [dext](https://github.com/AfzGit/dext) - install as a simple script
* (5) [gcp](https://github.com/aelafifi/gcp) - maybe update and extend
* (5) [process-wallpaper](https://github.com/anirudhajith/process-wallpaper) - update and modify, add to crontab using Nix
* (5) [cli-info](https://github.com/Lilja/cli-info) - make native & more easily Nix-compatible
* (5) [terminus](https://github.com/breuleux/terminus) - revive and update (port to TypeScript?)
* (5) [domterm](https://domterm.org/index.html) - just try out to see if it is at all usable
* (5) [shell-history](https://github.com/pawamoy/shell-history) - fork, update, and package
* (5) [q](https://github.com/cal2195/q) - update and maybe port to a new language
* (5) [file-type-cli](https://github.com/sindresorhus/file-type-cli) - update and compile to native / port to another language
* (5) [autojump](https://github.com/wting/autojump) - update & enhance; maybe compile with mypyc?
* (5) [jmp](https://github.com/gholmes829/Jmp) - update & enhance; maybe compile with mypyc?
* (5) [mysql-colorize](https://github.com/zpm-zsh/mysql-colorize) - I don't care about MySQL, but this is a nice aesthetic -> adapt for output in general
* (5) [grc](https://github.com/garabik/grc) - update and maybe compile with mypyc
* (5) [lsp](https://github.com/dborzov/lsp) - nice interface; may be worth forking and updating
* (5) [colorls]([colorls](https://github.com/athityakumar/colorls)) - port to Crystal?
* (5) [up](https://github.com/akavel/up) (golang) - update
* (5) [percol](https://github.com/mooz/percol) - update
* (5) [ad](https://github.com/tanrax/terminal-AdvancedNewFile) - add Poetry, or port to native-compilable language
* (5) [alder](https://github.com/aweary/alder) (JS) - update, make TypeScript, compile to native?
* (5) [organize-cli](https://github.com/ManrajGrover/organize-cli) 
   | [classifier](https://github.com/bhrigu123/classifier) - fork and update both (JS and Python)
* (5) [find-up-cli](https://github.com/sindresorhus/find-up-cli) - update and nativify
* (5) [friendly-find](https://github.com/sjl/friendly-find) - fork, update, poetrify, and modify
* (5) [node-rename-cli](https://github.com/jhotmann/node-rename-cli) - looks great, but needs to be updated
* (5) [nomino](https://github.com/yaa110/nomino) - improve tables with unicode characters
* (5) [repren](https://github.com/jlevy/repren) - update and poetrify
* (5) [mdt](https://github.com/robolab-pavia/mdt) - see if this is worth updating and modifying
* (5) [ramda-cli](https://github.com/raine/ramda-cli) - update?
* (5) [vim-notion](https://github.com/lukeingalls/vim-notion) ([see also](https://www.notion.so/help/keyboard-shortcuts))

## NixOS-only
* (2) [comma](https://github.com/nix-community/comma)

## Nvidia-only
* (2) [zenith-nvidia](https://github.com/bvaisvil/zenith) (for devices with Nvidia)
* (2.5) [nvitop](https://github.com/XuehaiPan/nvitop) 
   | [nvtop](https://github.com/Syllo/nvtop)
* (2) [gpustat]()

## Tuxedo-only
* (3) [tuxedo-rs](https://github.com/AaronErhardt/tuxedo-rs)
* (2) [tailor-gui](https://search.nixos.org/packages?channel=23.11&show=tailor-gui&from=0&size=50&sort=relevance&type=packages&query=tuxedo+control)
* (6) [tuxedo-control-center]()

## Xorg-only



## Debian-based-only
* ( ) [uktools](https://github.com/usbkey9/uktools)
* ( ) [nala](https://github.com/volitank/nala)
* ( ) [deb-get](https://github.com/wimpysworld/deb-get)
* ( ) [pacstall](https://pacstall.dev/)
* [lxroot](try out and potentially package for NixOS)

## Non-NixOS-only
* ( ) [mkdesk](https://gitlab.com/mr-draxs/mkdesk)

*## To Sort

https://github.com/wick3dr0se/grimcap
* -> [hyprland recommendations](https://wiki.hyprland.org/Useful-Utilities/)
* -> [wayland list *********](https://arewewaylandyet.com/)
* -> [Browser Ricing](https://www.notion.so/Browser-Ricing-55d69da80b4543f5979926bd7906f9df?pvs=21)
* -> [Icons, Theming, Fonts](https://www.notion.so/Icons-Theming-Fonts-ced89db4476d422fb67fc9148ab9147e?pvs=21)
* -> [awesome-ricing](https://github.com/fosslife/awesome-ricing)
* ( ) [](https://github.com/nickgerace/gfold)
* ( ) [](https://github.com/alex35mil/NeoHub)
* ( ) [](https://github.com/FlafyDev/combined-manager) ***
* ( ) [](https://github.com/lucc/nvimpager)
* ( ) [](https://github.com/ron-rs/ron)
* ( ) [](https://git-scm.com/docs/gitk)
* ( ) [](https://ghaiklor.github.io/terminal-canvas/)
* ( ) [](https://devicon.dev/ )
* ( ) [](https://github.com/cue-lang)
* ( ) [](https://git.sr.ht/~cdv/scfg-rs )
* ( ) [](https://github.com/projectfluent/fluent)
* ( ) [](https://github.com/ttytm/wthrr-the-weathercrab)
* ( ) [](https://github.com/ulyssa/iamb )
* ( ) [](https://gitlab.com/mildlyparallel/pscircle)
* ( ) [](https://github.com/paul-nameless/tg)
* ( ) [](https://github.com/aandrew-me/tgpt)
* ( ) [](https://github.com/lukesmithxyz/mutt-wizard)
* ( ) [](https://github.com/OpenRC/openrc)
* ( ) [](https://github.com/FlafyDev/flutter_background_bar)
* ( ) [](https://github.com/FlafyDev/epub_reader)
* ( ) [Conky](https://conky.cc/) - Conky is a free, light-weight system monitor for X, that displays any kind of information on your desktop.
* ( ) [](https://acidwords.com/posts/2016-07-26-hacking-mupdf-custom-background-colors.html)
* ( ) [](https://github.com/Lxtharia/minegrub-theme)
* ( ) [](https://github.com/bevry/dorothy)
* ( ) [](https://nwg-piotr.github.io/nwg-shell/) *********
* ( ) [](https://fsd.it/shop/fonts/pragmatapro/)
* ( ) [](https://github.com/lucc/nvimpager)
* ( ) [](https://github.com/Lxtharia/minegrub-theme)
* ( ) [read](https://www.reddit.com/r/unixporn/comments/5o1mic/what_display_manager_do_you_guys_use/)
* ( ) [Git Bare Repository - A Better Way To Manage Dotfiles - YouTube](https://www.youtube.com/watch?v=tBoLDpTWVOM)
* ( ) [FlafyDev/flutter_workspaces_2](https://github.com/FlafyDev/flutter_workspaces_2) - 
