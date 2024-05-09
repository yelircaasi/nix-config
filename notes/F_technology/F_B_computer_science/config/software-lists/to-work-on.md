# To Work On

## To Modify / "Needs work"

* (2->5) [tre](https://github.com/dduan/tre) - a bit old; could use updating
* (5) [fluxgui](https://github.com/xflux-gui/fluxgui)
* (5) [rat](https://github.com/ericfreese/rat) Compose shell commands to build interactive terminal applications
* (5) [tabview](https://github.com/TabViewer/tabview) - Python curses command line CSV and tabular data viewer.
* (5) [undollar](https://github.com/xtyrrell/undollar) - undollar bites the dollar sign off the tip of the command you just pasted into your terminal
* (5) [pacgraph](https://github.com/keenerd/pacgraph) - port for Nix 
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
   | (5) [classifier](https://github.com/bhrigu123/classifier) - fork and update both (JS and Python)
* (5) [find-up-cli](https://github.com/sindresorhus/find-up-cli) - update and nativify
* (5) [friendly-find](https://github.com/sjl/friendly-find) - fork, update, poetrify, and modify
* (5) [node-rename-cli](https://github.com/jhotmann/node-rename-cli) - looks great, but needs to be updated
* (5) [nomino](https://github.com/yaa110/nomino) - improve tables with unicode characters
* (5) [repren](https://github.com/jlevy/repren) - update and poetrify
* (5) [mdt](https://github.com/robolab-pavia/mdt) - see if this is worth updating and modifying
* (5) [ramda-cli](https://github.com/raine/ramda-cli) - update?
* (5) [vim-notion](https://github.com/lukeingalls/vim-notion) ([see also](https://www.notion.so/help/keyboard-shortcuts))
* (5) [laurikari/tre: The approximate regex matching library and agrep command line tool.](https://github.com/laurikari/tre/)

### Clock

* (5) [tty-clock](https://github.com/xorg62/tty-clock)
* (5) [cliclock](https://github.com/nbyouri/cliclock)
* (5) [bash clock](https://briancaffey.github.io/2017/10/31/a-binary-clock-written-in-bash.html/)
* (5) [binclock-6bits](https://github.com/teegre/binclock-6bits)

## Waveterm on nixos

[ErnWong/dotfiles/blob/689d0fe8932a188f524c20bd8121fc3bfc8ce6ed/pkgs/waveterm/default.nix](https://github.com/ErnWong/dotfiles/blob/689d0fe8932a188f524c20bd8121fc3bfc8ce6ed/pkgs/waveterm/default.nix)

Here's my attempt at cobbling something together for linux, which seems to be working locally for me (well, it's "working" in the sense that it builds, the GUI shows up and the basic shell features seem to be working): [ErnWong/dotfiles/blob/689d0fe8932a188f524c20bd8121fc3bfc8ce6ed/pkgs/waveterm/default.nix](https://github.com/ErnWong/dotfiles/blob/689d0fe8932a188f524c20bd8121fc3bfc8ce6ed/pkgs/waveterm/default.nix)

```sh
nix shell github:ErnWong/dotfiles#waveterm --command waveterm
```

I wasn't able to get it building using the provided scripthaus scripts yet, but I'm also quite inexperienced in this area so that could be why. I'm currently using `buildGoModule` and `mkYarnPackage` instead, basing it off from a bunch of other electron and go packages on nixpkgs. I haven't carried across all the build flags from waveterm's provided scripthaus scripts though, and you might also see some vestigial code that I copied from other packages that don't apply for waveterm which I haven't cleaned up yet. If I have time I might give the scripthaus scripts another try.

Some other remaining todos that I'm aware of include the desktop icon, getting it working on darwin, checking the AI features, checking that the package includes all the dependencies it needs at runtime, and fixing a failing test regarding command completions.

Please feel free to continue working off from what I have if it helps, especially if I don't get back to this soon.
