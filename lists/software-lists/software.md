# Software List

## Legend

(0) - already installed and configured in nix-config

(1) - already added to nix-config, but some work is needed

(2) - to be added next

(2.5 / 3.5) - to be added, but first decide between alternatives

(3) - also to be added, but lower priority

(4) - not decided yet / maybe later

(5) - some rewriting or packaging necessary (but to be added)

[read](https://www.reddit.com/r/unixporn/comments/5o1mic/what_display_manager_do_you_guys_use/)
## Minimalist Set

### Development Environment

### Basic Apps

* GUI Editors
  - (2) [emacs](https://www.gnu.org/software/emacs/)
  - (3) [qtconsole](https://github.com/jupyter/qtconsole)
  - (4) [zettlr]() | [remarkable](https://github.com/jamiemcg/Remarkable)
  - (3) [nano]()
  - (6) [vim]() -> decided to always use nvim with different configs -> https://michaeluloth.com/neovim-switch-configs/
  - (4) [cosmic-editor]()
  - (4) [lem](https://github.com/lem-project/lem)

* Terminal Development Environment
  - (1) [neovim](https://neovim.io/)
  - (1) [wezterm](https://github.com/wez/wezterm) | (1) [kitty]() | (1) [alacritty]() | (5) [waveterm]() - need to package for [nix](https://jvns.ca/blog/2023/03/03/how-do-nix-builds-work-/)) | [hyper](https://hyper.is/) | (4) [tabby](https://github.com/eugeny/tabby) | [extraterm](https://github.com/sedwards2009/extraterm) | [contour](https://github.com/contour-terminal/contour) | [blackbox](https://gitlab.gnome.org/raggesilver/blackbox) | [terminology](https://www.enlightenment.org/about-terminology) | [tym](https://github.com/endaaman/tym) | [termonad](https://github.com/cdepillabout/termonad) | [rxvt-unicode-unwrapped-emoji](https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=urxvt) | [commas](https://github.com/CyanSalt/commas) | [kermit-terminal](https://github.com/orhun/kermit) | [foot](https://codeberg.org/dnkl/foot/) (wayland-only) | [wayst](https://github.com/91861/wayst) (wayland-only)
  - (4) [tdrop](https://github.com/noctuid/tdrop) | [dropterm](https://github.com/Subbeh/dropterm)
  - (3) [electerm](https://electerm.html5beta.com/)
  - (1) [starship]() | [oh-my-posh](https://ohmyposh.dev/)
  - (2) [xdg-utils](https://search.nixos.org/packages?channel=unstable&show=xdg-utils&from=0&size=50&sort=relevance&type=packages&query=xdg-open)
  - (2) [handlr-regex](https://github.com/Anomalocaridid/handlr-regex)
  - (2) [nix-prefetch-github](https://search.nixos.org/packages?channel=23.11&show=nix-prefetch-github&from=0&size=50&sort=relevance&type=packages&query=nix-prefetch-github)

## Multiplexer
* (2) [zellij](https://github.com/zellij-org/zellij) | (2) [tmux](https://github.com/tmux/tmux)
* (4) [tmate -](https://github.com/tmate-io/tmate -)A fork of tmux that allows to share the terminal with other users. AFAIK, it connects to a centralized server to establish the connection. Someone may see this inconvenient for privacy issues. - https://manpages.org/tmate
* (5) [procmux -](https://github.com/napisani/procmux -)A TUI utility for running multiple commands in parallel in easily switchable terminals.
* (2) [mprocs](https://github.com/pvolok/mprocs)- similar to procmux
* (6) [dtach -](https://github.com/crigler/dtach -)A program written in C that emulates the detach feature of screen.
* (5) [warp -](https://github.com/spolu/warp -)Secure and simple terminal sharing. - fork and update?
* (4) [screen](https://www.gnu.org/software/screen/) - GNU terminal multiplexer - Terminal multiplexer that split a physical terminal between several processes, typically interactive shells. - just use a bit to have used it
* (4) [mtm -](https://github.com/deadpixi/mtm -)Micro Terminal Multiplexer - Simple but usable, stable and minimalistic terminal multiplexer. - just try

* (2.5) Shell: [bash](https://www.gnu.org/software/bash/) | [zsh]() | [fish]() | [nushell]() | [xonsh]() | [elvish]() | [hilbish]() | [dash]() | [ion](https://doc.redox-os.org/ion-manual/) | [cosh](https://github.com/tomhrr/cosh) | [oil](https://www.oilshell.org/) | [yash](https://github.com/magicant/yash) | [es](https://github.com/wryun/es-shell) | [shell-plus-plus](https://github.com/alexst07/shell-plus-plus) | [oh](https://github.com/michaelmacinnis/oh)
* (2.5) [devshell](https://github.com/numtide/devshell) | [devenv](https://devenv.sh/) | [devbox](https://github.com/jetpack-io/devbox) | [lorri](https://github.com/nix-community/lorri) | [lorelei](https://github.com/shajra/direnv-nix-lorelei) | [mise](https://github.com/jdx/mise)
* (2.5) [nix-direnv](https://github.com/nix-community/nix-direnv) | [direnv](https://direnv.net/) - see also [direnv standard library](https://direnv.net/man/direnv-stdlib.1.html#codeuse-nix-code)
* (5) [nixify](https://github.com/kampka/nixify)
* (2) [wget]()
* (2) [curl]()
* (1) [kanata](https://github.com/jtroo/kanata) | [kmonad](https://github.com/kmonad/kmonad) | [keyd](https://github.com/rvaiya/keyd) | [hawck](https://github.com/snyball/Hawck) | [xremap](https://github.com/k0kubun/xremap) | [ktrl](https://github.com/ItayGarin/ktrl) (?)
* (2) [ ] [input-remapper](https://github.com/sezanzeb/input-remapper)
* (2) [espanso](https://espanso.org/docs/get-started/)
* (0) [nix](https://github.com/NixOS/nix)
* (1) [home-manager](https://github.com/nix-community/home-manager)
* (1) [hyprland](https://github.com/hyprwm/Hyprland) - nvidia info [here](https://wiki.hyprland.org/Nvidia/) | [sway]() - nvidia info [here](https://github.com/swaywm/sway/wiki) | [riverwm]()
* (2) [waybar]() | [eww]() | [polybar]()
* (2) [rofi-wayland]() | [wofi]()
* (2) [swww]()
* (2) [mako]() | [dunst]()
* (2) [libnotify]()
* (2) [networkmanagerapplet]()
* (2) [et](https://github.com/oxzi/et)
* (2) [caffeine-ng](https://codeberg.org/WhyNotHugo/caffeine-ng)
* (2.5) [greenclip](https://github.com/erebe/greenclip) | [Clipboard](https://github.com/Slackadays/Clipboard) | [CopyQ](https://github.com/hluk/CopyQ) | [wl-clipboard](https://github.com/bugaevc/wl-clipboard) | [yank](https://github.com/mptre/yank)
* (2.5) [kanshi](https://sr.ht/~emersion/kanshi/) ([autorandr]() for x)
* (6) [?]() ([xrandr]() for x)

### Desktop



### Custom Scripts and Tools

* ( ) [lspath]() - list all available binaries on \$PATH
* ( ) [nvfetch]() - all relevant GPU information at-a-glance
* ( ) [rlvtree]() - 'relevant tree' - tree command showing only the information I care about; configurable
* ( ) [pysum]() - provide a comparison of all (selected in config file) Python directories
* ( ) [flakesummary]() - at-a-glance info on all (selected in config file) Nix flakes
* ( ) [ggs]() - 'global git status' - view date of last commit of all (selected in config file) local git repositories
* ( ) [ggsr]() - 'global git status remote' - view date of last commit on all 
* ( ) [q2single]() - script version of [to-single-quotes-cli](https://github.com/sindresorhus/to-single-quotes-cli)
* ( ) [q2double]() - script version of [to-double-quotes-cli](https://github.com/sindresorhus/to-double-quotes-cli)
* ( ) [texclean]() - cleanup generated LaTeX-related files which are no longer needed
* ( ) [→](https://gitlab.com/pyratebeard/dotfiles/-/tree/master/bin/bin?ref_type=heads) - excellent scripts
* ( ) [→](https://github.com/trizen/perl-scripts) 
* ( ) ew: command to run command outside of current directory without explicitly changing directory
* ( ) script to get current cuda & cudnn version & retrieve suitable TensorFlow and Pytorch versions, together with suitable Python versions (perl? go?)
* ( ) go script to tree-view a filesystem or folder, showing only what is truly interesting for a given application or area
* ( ) go command to take pipeline output and display it in an attractive table
* ( ) shell script to run apps by name instead of the long flatpak command
* ( ) script to get current cuda & cudnn version & retrieve suitable TensorFlow and Pytorch versions, together with suitable Python versions (perl? go?)
* ( ) go script to tree-view a filesystem or folder, showing only what is truly interesting for a given application or area
* ( ) go command to take pipeline output and display it in an attractive table
* ( ) shell script to run apps by name instead of the long flatpak command
* ( ) to write: Dockertree to find dockerfiles in a hierarchy and view dependencies (https://hub.docker.com/r/alpine/dfimage) keep code in ~/dockerfiles, but link to path

## Tools

###Misc  Desktop Tools
- (5) [open-in-editor](https://github.com/dandavison/open-in-editor)
- ( ) [Metadata Cleaner](https://metadatacleaner.romainvigier.fr/) - This tool allows you to view metadata in your files and to get rid of it, as much as possible.
- (2) [azuredatastudio](https://github.com/Microsoft/azuredatastudio): A data management tool that enables working with SQL Server, Azure SQL DB and SQL DW from Windows, macOS and Linux.
- (5) [GrubCustomizer](https://launchpad.net/grub-customizer) - Grub Customizer is a graphical interface to configure the GRUB2/BURG settings and menuentries. [tutorial](https://www.linuxfordevices.com/tutorials/linux/grub-customizer-tutorial)
- (2) [gramps](https://github.com/gramps-project/gramps) [Gramps](https://gramps-project.org/blog/) - Research, organize and share your family tree with Gramps.
- ( ) [emoji-keyboard](https://github.com/OzymandiasTheGreat/emoji-keyboard) - Virtual keyboard-like emoji picker for Linux.
- ( ) [Daily Reddit Wallpaper](https://federicotorrielli.github.io/Daily-Reddit-Wallpaper/) - Change your wallpaper to the most upvoted image of the day from /r/wallpapers or any other subreddit on system startup.

### Core Command-Line Tools

* (2)  [uutils-coreutils-noprefix]() ([source](https://github.com/uutils/coreutils))
* (2)  [moreutils](https://joeyh.name/code/moreutils/)
* (2)  [util-linux]()
* (4) [toybox]()
* (2) [xc](https://github.com/joerdav/xc)
* (2)  [make]()
* (1)   [eza](https://github.com/eza-community/eza) | [lsd](https://github.com/lsd-rs/lsd) | [colorls](https://github.com/athityakumar/colorls) | [nat](https://github.com/willdoescode/nat)
* (2.5)  [tre](https://github.com/dduan/tre) |  [tree](https://gitlab.com/OldManProgrammer/unix-tree) | [termtree](https://github.com/rust-cli/termtree)
* (2) [as-tree](https://github.com/jez/as-tree)
* (2) [ictree](https://github.com/NikitaIvanovV/ictree)
* (5) [ckit](https://github.com/fpgmaas/ckit)
* (5) [runner](https://github.com/sudoerp/runner)
* (2) [ea](https://github.com/dduan/ea)
* (2)  [topalias](https://github.com/meteoritt/topalias)
* (2) [nap](https://github.com/maaslalani/nap) | (5) [boom](https://github.com/holman/boom)
* (5) [ad](https://github.com/tanrax/terminal-AdvancedNewFile)
* (2.5) [rm-improved](https://github.com/nivekuil/rip) (rip) | [trashy](https://github.com/oberblastmeister/trashy) | [trash-cli](https://github.com/andreafrancia/trash-cli) | [t](https://github.com/adamheins/t) (wraps trash-cli) | [safe-rm](https://code.launchpad.net/safe-rm) | [brash](https://github.com/zakariagatter/brash) | 
* (5)[RecoverPy](https://github.com/PabloLec/RecoverPy)
* (2) [rmw](https://github.com/theimpossibleastronaut/rmw/)
* (5) [unix-permissions](https://github.com/ehmicky/unix-permissions)
* ( ) [progress](https://github.com/Xfennec/progress) | [pv](https://codeberg.org/a-j-wood/pv)
* ( ) [ov](https://github.com/noborus/ov) | [most](https://linux.die.net/man/1/most)
* ( ) [hhighlighter](https://github.com/paoloantinori/hhighlighter) | [cope](https://github.com/lotrfan/cope)
* ( ) [luneta](https://github.com/fbeline/luneta) (written in D!)
* (1) 󰄬 [broot](https://github.com/Canop/broot)
* (1) 󰄬 [zoxide](https://github.com/ajeetdsouza/zoxide) | [z.lua](https://github.com/skywind3000/z.lua) | [z](https://github.com/rupa/z)
* ( ) [jump](https://github.com/gsamokovarov/jump)
* ( ) [commacd](https://github.com/shyiko/commacd)
* (5) [up](https://github.com/shannonmoeller/up) | [bd](https://github.com/vigneshwaranr/bd)
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
* ( ) [hyperfine](https://github.com/sharkdp/hyperfine) | [temci](https://github.com/parttimenerd/temci)
* ( ) [procs](https://github.com/dalance/procs)
* (2) [topgrade](https://github.com/topgrade-rs/topgrade)
* (2) [ramfetch](https://codeberg.org/jahway603/ramfetch)
* ( ) [guesswidth](https://github.com/noborus/guesswidth)
* ( ) [erdtree](https://github.com/solidiquis/erdtree)
* ( ) [rng](https://github.com/nickolasburr/rng)
* (2) [xcp](https://github.com/tarka/xcp) | [pycp](https://github.com/your-tools/pycp)
* (2) [procs](https://github.com/dalance/procs)
* (2) [parallel](https://git.savannah.gnu.org/cgit/parallel.git) 
* (4) [ts](http://vicerveza.homeunix.net/~viric/soft/ts/)
* (4) [ts](https://github.com/justanhduc/task-spooler) (for GPU also)
* (2) [await](https://github.com/slavaGanzin/await)
* (2.5) [ikill (could use updating)](https://github.com/pombadev/ikill) | [fkill-cli](https://github.com/sindresorhus/fkill-cli) | 
* ( )  [pazi](https://github.com/euank/pazi) | [ff](https://github.com/akymos/ff) | [smartcd](https://github.com/CodesOfRishi/smartcd) | [lazy-cd](https://github.com/pedramamini/lazy-cd) | [pm](https://github.com/Angelmmiguel/pm) | [fastdiract](https://github.com/dp12/fastdiract) | [goto](https://github.com/iridakos/goto) | [h](https://github.com/zimbatm/h)
* ( ) [peco](https://github.com/peco/peco)
* (2) [conan](https://github.com/mirage/conan)

#### Navigation and Exploration


#### Viewing

* ( ) [bat](https://github.com/sharkdp/bat) + [bat-extras](https://github.com/eth-p/bat-extras)
* ( ) [nbcat](https://github.com/yelircaasi/nbcat) | [nbbat]() (yet to come)
* ( ) [catdoc](https://search.nixos.org/packages?channel=unstable&show=catdoc&from=0&size=50&sort=relevance&type=packages&query=catdoc)
* ( ) [xls2csv](https://search.nixos.org/packages?channel=unstable&show=catdoc&from=0&size=50&sort=relevance&type=packages&query=catdoc)
* ( ) [catppt](https://search.nixos.org/packages?channel=unstable&show=catdoc&from=0&size=50&sort=relevance&type=packages&query=catdoc)
* ( ) [catdocx](https://github.com/jncraton/catdocx)

#### Search

* ( ) 󰄬 [fzf](https://github.com/junegunn/fzf) | [zf](https://github.com/natecraddock/zf) | [skim](https://github.com/lotabout/skim) | [fzy](https://github.com/jhawthorn/fzy)
* ( ) [fz.sh](https://github.com/mrjohannchang/fz.sh) (for zsh)
* ( ) 󰄬  [ack](https://beyondgrep.com/) | [frawk](https://github.com/ezrosent/frawk) | [sift](https://github.com/svent/sift) | [ugrep](https://github.com/Genivia/ugrep)
* ( ) [vgrep](https://github.com/vrothberg/vgrep)
* ( ) 󰄬 [fd](https://github.com/sharkdp/fd) | [lf.sh](https://github.com/suewonjp/lf.sh)
* ( ) 󰄬 [ag](https://github.com/ggreer/the_silver_searcher)
* ( ) 󰄬 [rg](https://github.com/BurntSushi/ripgrep)
* ( ) 󰄬 [rga](https://github.com/phiresky/ripgrep-all)
* ( ) [fselect](https://github.com/jhspetersson/fselect)
* ( ) [find-up-cli](https://github.com/sindresorhus/find-up-cli)
* ( ) [paragrep](https://github.com/bmc/paragrep)
* ( ) [spot](https://github.com/rauchg/spot)

#### Data Wrangling

* ( ) [pandoc](https://pandoc.org/) | [ebook-converter](https://github.com/gryf/ebook-converter)
* ( ) [teip](https://github.com/greymd/teip)
* ( ) [grex](https://github.com/pemistahl/grex)
* ( ) [exrex](https://github.com/asciimoo/exrex) | [randexp.js](https://github.com/fent/randexp.js)
* ( ) [difftastic](https://github.com/Wilfred/difftastic)
* ( ) [huniq](https://github.com/koraa/huniq)
* ( ) [jid](https://github.com/simeji/jid)
* ( ) [jiq](https://search.nixos.org/packages?channel=23.11&show=jiq&from=0&size=50&sort=relevance&type=packages&query=jiq)
* ( ) [gzip-size-cli](https://github.com/sindresorhus/gzip-size-cli)
* ( ) [sd](https://github.com/chmln/sd) | [sad](https://github.com/ms-jpq/sad) | [ruplacer](https://github.com/your-tools/ruplacer) | [amber](https://github.com/dalance/amber)
* ( ) [tuc](https://github.com/riquito/tuc) | [choose](https://github.com/theryangeary/choose) | [hck](https://github.com/sstadick/hck)
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
- (5) [frogmouth](https://github.com/Textualize/frogmouth) | (2) [glow](https://github.com/charmbracelet/glow) | [mdcat](https://github.com/swsnr/mdcat) | [tmv](https://github.com/axiros/terminal_markdown_viewer)
- (5) [mdt](https://github.com/robolab-pavia/mdt)
- ( ) [grip](https://github.com/joeyespo/grip) - Preview markdown files as GitHub would render them.
- ( ) [lowdown](https://github.com/kristapsdz/lowdown) - Markdown translator (HTML5, roff, LaTeX, gemini, OpenDocument, and terminal output)
- ( ) [doctoc](https://github.com/thlorenz/doctoc) - Generates table of contents for markdown files.

##### CSV, TSV
- (2.5) [csvtk](https://github.com/shenwei356/csvtk/) (go) | (2.5) [csvkit](https://github.com/wireservice/csvkit) (python) | (5) [xsv](https://github.com/medialab/xsv) (rust) | (4) [tsv-utils](https://github.com/eBay/tsv-utils) (dlang) | 
- (2) [csvq](https://github.com/mithrandie/csvq) | (4) [q](https://github.com/harelba/q) 
##### JSON
- (2) [jq](https://github.com/stedolan/jq) | (3) [zed](https://github.com/brimdata/zed) | (2) [gojq](https://github.com/itchyny/gojq) | (4) [jtc](https://github.com/ldn-softdev/jtc)
- (2) [groq-cli](https://github.com/sanity-io/groq-cli)
- (4) [jq.node](https://github.com/FGRibreau/jq.node) | 
- ( ) [jd](https://github.com/josephburnett/jd)
- ( ) [jql](https://github.com/yamafaktory/jql)
- ( ) [jqp](https://github.com/noahgorstein/jqp)
- (2) [jc](https://github.com/kellyjonbrazil/jc) | [jo](https://github.com/jpmens/jo)
- ( ) [crosshash](https://github.com/httpie/crosshash)
- (2) [fx](https://github.com/antonmedv/fx) | [jless](https://github.com/PaulJuliusMartinez/jless)
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
- (5) [toml-cl  ](https://github.com/gnprice/toml-cli) [current fork](https://github.com/chevdor/toml-cli) (Rust) | [toml-cli](https://github.com/mrijken/toml-cli) (Python)
- (2) [toml2nix](https://crates.io/crates/toml2nix)
- (2) [toml2json](https://github.com/woodruffw/toml2json)
##### HTML
- (2) [htmlq](https://github.com/mgdm/htmlq) | (4.5) [pup](https://github.com/gromgit/pup)
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
- (2.5) [ansi2html](https://github.com/pycontribs/ansi2html) | (2.5) [ansi2html](https://hackage.haskell.org/package/Ansi2Html) | (2.5) [HTML-FromANSI](https://metacpan.org/dist/HTML-FromANSI) | (6) [aha](https://github.com/theZiz/aha)
- (2) [coloried-logs](https://github.com/kilobyte/colorized-logs)
- (3) [nestedtextto](https://github.com/AndydeCleyre/nestedtextto)
- (2) [yamlpath](https://github.com/wwkimball/yamlpath)
- (6) [gitbook](https://blog.gitbook.com/product-updates/gitbook-3.0-document-everything-from-start-to-ship)
- (2) [html2svg](https://github.com/fathyb/html2svg)

### Coding Utils

* (2) [anewer](https://github.com/ysf/anewer) | (6) [anew](https://github.com/tomnomnom/anew)
* (2) [pre-commit-hooks.nix](https://github.com/cachix/pre-commit-hooks.nix)

#### Miscellaneous

* (5) [zui](https://github.com/brimdata/zui)

#### Help

* (2) [halp](https://github.com/orhun/halp)
* (5) [eg](https://github.com/srsudar/eg)
* (2) [navi](https://github.com/denisidoro/navi)
* (2) [thefuck](https://github.com/nvbn/thefuck)
* (2) [tealdeer](https://github.com/dbrgn/tealdeer) | [tlrc](https://github.com/tldr-pages/tlrc) | [tldr-node-client](https://github.com/tldr-pages/tldr-node-client) | [tinytldr](https://github.com/kovmir/tinytldr)
* (2) [hors](https://github.com/WindSoilder/hors) | (6) [howdoi](https://github.com/gleitz/howdoi) | (6) [how2](https://github.com/santinic/how2)
* (2) [so](https://github.com/samtay/so)
* (2) [cheat](https://github.com/cheat/cheat)
* (4.5) [ehh](https://github.com/lennardv2/ehh)
* (2) [cod](https://github.com/dim-an/cod)
* (2) [explainshell](https://github.com/idank/explainshell)
* (2) [dasht](https://github.com/sunaku/dasht)

#### Cleanup and Organizing

* (2.5) [bleachbit](https://www.bleachbit.org/) | [czkawka](https://qarmin.github.io/czkawka/)
* (2) [xdg-ninja]() (Haskell!) | [rmlint](https://rmlint.readthedocs.io/)
* (2) [organize-rt](https://gitlab.com/simonsan/organize-rt) | [organize-cli](https://github.com/ManrajGrover/organize-cli) | (5.5) [classifier](https://github.com/bhrigu123/classifier) | (5.5) [organizer](https://gitlab.gnome.org/aviwad/organizer)
* (2) [backdown](https://github.com/Canop/backdown) | (4) [fdupes](https://github.com/adrianlopezroche/fdupes)
* (4) [detox](https://github.com/dharple/detox)
* (2) [mat2](https://0xacab.org/jvoisin/mat2)
* (5) [wutag](https://github.com/vv9k/wutag)
* (2) [tmsu](https://tmsu.org/)
* (3) [musort](https://github.com/tdeerenberg/Musort)
* (3) [yyyymmdd](https://github.com/kaihendry/yyyymmdd)
* (2) [symlinks](https://github.com/brandt/symlinks)
* (2) [fclones](https://github.com/pkolaczk/fclones)

#### Moving and Renaming

* ( ) [rnr](https://github.com/ismaelgv/rnr) | [f2](https://github.com/ayoisaiah/f2) | [nomino](https://github.com/yaa110/nomino) | [tempren](https://github.com/idle-code/tempren) | [node-rename-cli](https://github.com/jhotmann/node-rename-cli) | [repren](https://github.com/jlevy/repren) | [rename](https://github.com/pstray/rename)
* ( ) [moove](https://github.com/urin/moove) | [mmv-c](https://github.com/mcauley-penney/mmv-c) | [mmv](https://github.com/itchyny/mmv) | [massren](https://github.com/laurent22/massren)

### Other Command-Line Tools

* (2) [vale](https://vale.sh/) - use as an LSP for prose in nvim
* (2) [alex](https://github.com/wooorm/alex)
* (4) [pick](https://github.com/mptre/pick) | [choose](https://github.com/jagprog5/choose) | (6) [shmenu](https://github.com/duclos-cavalcanti/shmenu)
* (2.5) [atuin](https://github.com/atuinsh/atuin) | [hishtory](https://github.com/ddworken/hishtory) | [muc](https://github.com/nate-sys/muc) | [bevel](https://github.com/NorfairKing/bevel) (Haskell!) | [resh](https://github.com/curusarn/resh) | [bashhub-client](https://github.com/rcaloras/bashhub-client) | [mcfly](https://github.com/cantino/mcfly) + [mcfly-fzf](https://github.com/bnprks/mcfly-fzf) | [hstr](https://github.com/dvorka/hstr)
* ( ) [file](https://search.nixos.org/packages?channel=23.11&show=file&from=0&size=50&sort=relevance&type=packages&query=file+type) | [filetype](https://search.nixos.org/packages?channel=23.11&show=python311Packages.filetype&from=0&size=50&sort=relevance&type=packages&query=file+type)

### System Management

* (2) [osquery](https://github.com/osquery/osquery)
* (2) [firejail](https://github.com/netblue30/firejail)
* (2) [CoreCtrl](https://gitlab.com/corectrl/corectrl)
* (2) [dysk](https://github.com/Canop/dysk)
* (2) [auto-cpufreq](https://github.com/AdnanHodzic/auto-cpufreq)
* (4) [cpu-x](https://thetumultuousunicornofdarkness.github.io/CPU-X/)
* (2) [systeroid](https://github.com/orhun/systeroid)
* (2) [tlp](https://linrunner.de/tlp/)
* (2) [htop](https://github.com/htop-dev/htop) | [glances](https://github.com/nicolargo/glances) | [bottom](https://clementtsang.github.io/bottom/nightly/) | [tiptop](https://github.com/nschloe/tiptop) | [gtop](https://github.com/aksakalli/gtop) | [btop](https://github.com/aristocratos/btop) | [yvers](https://github.com/TokieSan/yvers) | [zfxtop](https://github.com/ssleert/zfxtop) | [below](https://github.com/facebookincubator/below) | [atop](https://www.atoptool.nl/) | [gotop](https://github.com/xxxserxxx/gotop)
* (2) [iotop](http://guichaz.free.fr/iotop/)
* (2) [ttop](https://github.com/inv2004/ttop) (written in Nim)
* (2) [rtop](http://www.rtop-monitor.org/)
* (2) [kmon](https://github.com/orhun/kmon)
* (2) [conky](https://github.com/brndnmtthws/conky)
* (2) [sysdig](https://github.com/draios/sysdig)
* (2) [inxi](https://github.com/smxi/inxi)
* (2) [s-tui](https://amanusk.github.io/s-tui/)
* (2) [hwinfo](https://github.com/openSUSE/hwinfo) | (2) [lshw](https://ezix.org/src/pkg/lshw) | (2) [dmidecode](http://git.savannah.gnu.org/cgit/dmidecode.git/tree/README)
* (2.5) [bupstash](https://github.com/andrewchambers/bupstash) | [duplicity](https://gitlab.com/duplicity/duplicity) + [duply](https://github.com/Oefenweb/duply) | [bup](https://github.com/bup/bup) | [borg](https://github.com/borgbackup) + (optionally) [vorta](https://vorta.borgbase.com/) | [rsnapshot](https://github.com/rsnapshot/rsnapshot) | [restic](https://github.com/restic/restic) | [kopia](https://kopia.io/)
* (5) [batstat](https://github.com/Juve45/batstat) | (3) [powertop](https://github.com/fenrus75/powertop)
* (2) [brightnessctl](https://github.com/Hummer12007/brightnessctl)
* (5) [shallow-backup](https://github.com/alichtman/shallow-backup)
* (2.5) [dust](https://github.com/bootandy/dust) | [dua-cli](https://github.com/Byron/dua-cli/) | [duc]() | [pda]() | [diskonaut]() | [duf]() | [vizex]() | [ncdu]() | [tin-summer](https://github.com/vmchale/tin-summer) | [gdu]() | [cdu]() | [diskus]() | [dutree]() | [dfc]()
* ( ) [QDirStat](https://github.com/shundhammer/qdirstat) | [Filelight](https://apps.kde.org/filelight/) | [Baobab](https://wiki.gnome.org/Apps/DiskUsageAnalyzer) | [JDisReport](http://www.jgoodies.com/freeware/jdiskreport/) | [gdmap](https://gdmap.sourceforge.net/)
* (3) [udisks](https://github.com/storaged-/nnn
* project/udisks)
* (3) [udiskie](https://github.com/coldfix/udiskie)
* (4) [gparted]() | [clonezilla]()
* (2.5) [macchina](https://github.com/Macchina-CLI/macchina) | [bfetch](https://github.com/nnbnh/bfetch) | [nerdfetch](https://codeberg.org/thatonecalculator/nerdfetch) | [fastfetch](https://github.com/fastfetch-cli/fastfetch) | [sfetch](https://codeberg.org/DoutorJP/sfetch) | [archey4](https://github.com/HorlogeSkynet/archey4) (alternatives: [neofetch](https://github.com/dylanaraps/neofetch), [pfetch](https://github.com/dylanaraps/pfetch))
* (4) [supervisor](http://supervisord.org/)
* (2) [fileschanged](https://www.nongnu.org/fileschanged)

### Security, Cryptography, Authentication, Passwords

* (3) [gnupg](https://www.gnupg.org/) (frontend [seahorse](https://wiki.gnome.org/Apps/Seahorse)) | [enc](https://github.com/life4/enc)
* (3) [openssl](https://github.com/openssl/openssl)
* ( ) [oauth2c](https://github.com/cloudentity/oauth2c)
* ( ) [pass](https://git.zx2c4.com/password-store/) (frontend [cpass](https://github.com/xlucn/cpass), tool [passfzf](https://git.sr.ht/~mlaparie/passfzf)) | [1password](https://developer.1password.com/docs/ssh/) | [AuthPass](https://authpass.app/) | [Bitwarden](https://bitwarden.com/) + [clients](https://github.com/bitwarden/clients), alternative server [vaultwarden](https://github.com/dani-garcia/vaultwarden) | [keepassxc](https://github.com/keepassxreboot/keepassxc) | [buttercup](https://buttercup.pw/) | [gopass](https://github.com/gopasspw/gopass) | [keeweb](https://keeweb.info/) | [pa](https://github.com/biox/pa) | [keydex](https://github.com/shikaan/keydex)
* ( ) [ots](https://github.com/sniptt-official/ots) | [Secrets](https://apps.gnome.org/Secrets/) | [SpicyPass](https://github.com/JFreegman/SpicyPass)
* ( ) [minisign](https://jedisct1.github.io/minisign/)
* ( ) [trufflehog](https://github.com/trufflesecurity/trufflehog)
* ( ) [clamAV](https://www.clamav.net/)
* ( ) [obfuscate](https://apps.gnome.org/app/com.belmoussaoui.Obfuscate/)
* ( ) [authenticator](https://gitlab.gnome.org/World/Authenticator)
* ( ) [hashcat](https://github.com/hashcat/hashcat)
* ( ) [collision](https://collision.geopjr.dev/)
* ( ) [paper-age](https://github.com/matiaskorhonen/paper-age)
* (4) [age](https://github.com/FiloSottile/age) | [rage](https://github.com/str4d/rage)
* (3) [kestrel](https://github.com/finfet/kestrel)

### Luxury, Fun
* (2) [display3d](https://github.com/redpenguinyt/display3d)
* (2)  [pipes-rs](https://github.com/lhvy/pipes-rs) | [Pipeseroni](https://pipeseroni.github.io/) | [pipes.sh](http://pipes.sh/) | [pipes.js](https://github.com/Oman395/pipes.js)
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

## Core Set
* ( ) [renovate](https://github.com/renovatebot/renovate)
* ( ) [gzip-size-cli](https://github.com/sindresorhus/gzip-size-cli)
* ( ) [checksum.sh](https://github.com/gavinuhma/checksum.sh)


## Extended Set
* ( ) [appflowy](https://www.appflowy.io/)
* ( ) [compiler-explorer](https://github.com/compiler-explorer/compiler-explorer)
* ( ) [rstudio](https://www.rstudio.com/products/RStudio)
* ( ) [FeatherEditor](https://github.com/0xBaca/FeatherEditor)
* ( ) [SysMonTask](https://github.com/KrispyCamel4u/SysMonTask/)
* ( ) [pipe_exec](https://github.com/koraa/pipe_exec)
* ( ) [popsicle](https://github.com/pop-os/popsicle) | [etcher](https://www.balena.io/etcher/) | [ventoy](https://www.ventoy.net/en/index.html) | [unetbootin](https://unetbootin.github.io/) | [multiboousb](https://github.com/Death259/multibootusb)
* ( ) [modprobed-db](https://github.com/graysky2/modprobed-db)

### Development Tools

#### Containers, Orchestration, CI
* (2) [ctop](https://github.com/bcicen/ctop)
* (1) [docker](https://www.docker.com/)
* (2) [slimtoolkit](https://slimtoolkit.org/)
* (2) [dive](https://github.com/wagoodman/dive)
* (2) [lazydocker](https://github.com/jesseduffield/lazydocker) | [dry](https://github.com/moncho/dry) | [dockly](https://github.com/lirantal/dockly)
* (2) [buildx](https://github.com/docker/buildx)
* ( ) [docker-pushrm](https://github.com/christian-korneck/docker-pushrm)
* ( ) [watchtower](https://github.com/containrrr/watchtower)
* (2) [kubernetes](https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=kubernetes) (provides kubectl, among others)
* ( ) [kubebox](https://github.com/astefanutti/kubebox) | [k9s](https://github.com/derailed/k9s) | [kdash](https://github.com/kdash-rs/kdash)
* (2) [kool](https://github.com/kool-dev/kool)
* (3) [cloudtty](https://github.com/cloudtty/cloudtty)
* (2) [updatecli](https://github.com/updatecli/updatecli)
* (2) [renovate](https://docs.renovatebot.com/)
* ( ) [Hercules CI](https://hercules-ci.com/)
* (1) [podman](https://github.com/containers/podman) - read [this](https://blog.while-true-do.io/podman-graphical-interfaces/)
* (2) [chroot](https://github.com/coreutils/coreutils/blob/master/src/chroot.c) | [lxc + lxcfc](https://linuxcontainers.org/) | [conty](https://github.com/Kron4ek/Conty)
* ( ) [ContainerSSH](https://github.com/ContainerSSH/ContainerSSH)
* (2) [ops](https://ops.city)


## Maximalist Set

* (3) [paperbackup](https://github.com/intra2net/paperbackup)
* ( ) [pcopy](https://github.com/binwiederhier/pcopy) | [gocatgo](https://github.com/vaaleyard/gocatgo)
* (3) [stegcloak](https://github.com/kurolabs/stegcloak)
* (3) [steganography](https://github.com/7thSamurai/steganography)

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
* (5) [organize-cli](https://github.com/ManrajGrover/organize-cli) | [classifier](https://github.com/bhrigu123/classifier) - fork and update both (JS and Python)
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
* (2.5) [nvitop](https://github.com/XuehaiPan/nvitop) | [nvtop](https://github.com/Syllo/nvtop)
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

* -> https://wiki.hyprland.org/Useful-Utilities/
* -> https://arewewaylandyet.com/
* -> [Browser Ricing](https://www.notion.so/Browser-Ricing-55d69da80b4543f5979926bd7906f9df?pvs=21)
* -> [Icons, Theming, Fonts](https://www.notion.so/Icons-Theming-Fonts-ced89db4476d422fb67fc9148ab9147e?pvs=21)
* -> https://github.com/fosslife/awesome-ricing
* ( ) [](https://github.com/nickgerace/gfold
* ( ) []https://github.com/alex35mil/NeoHub
* ( ) []https://github.com/FlafyDev/combined-manager ***
* ( ) []https://github.com/lucc/nvimpager
* ( ) []https://github.com/ron-rs/ron
* ( ) []https://git-scm.com/docs/gitk 
* ( ) []https://ghaiklor.github.io/terminal-canvas/ 
* ( ) []https://devicon.dev/ 
* ( ) []https://github.com/cue-lang
* ( ) []https://git.sr.ht/~cdv/scfg-rs 
* ( ) []https://github.com/projectfluent/fluent
* ( ) []https://github.com/ttytm/wthrr-the-weathercrab
* ( ) []https://github.com/ulyssa/iamb 
* ( ) []https://gitlab.com/mildlyparallel/pscircle
* ( ) []https://github.com/paul-nameless/tg
* ( ) []https://github.com/aandrew-me/tgpt
* ( ) []https://github.com/lukesmithxyz/mutt-wizard
* ( ) []https://github.com/OpenRC/openrc
* ( ) []https://github.com/FlafyDev/flutter_background_bar
* ( ) []https://github.com/FlafyDev/epub_reader
* ( ) [Conky](https://conky.cc/) - Conky is a free, light-weight system monitor for X, that displays any kind of information on your desktop.
* ( ) []https://acidwords.com/posts/2016-07-26-hacking-mupdf-custom-background-colors.html
* ( ) [](https://github.com/Lxtharia/minegrub-theme
* ( ) [](https://github.com/bevry/dorothy
* ( ) [](https://nwg-piotr.github.io/nwg-shell/ *********
* ( ) [](https://fsd.it/shop/fonts/pragmatapro/ 
* ( ) [](https://github.com/lucc/nvimpager 
* ( ) [](https://github.com/Lxtharia/minegrub-theme)
