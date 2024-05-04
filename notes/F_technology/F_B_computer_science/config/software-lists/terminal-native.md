# Terminal-Native Software

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

->  [DT Command Line Playlist](https://www.youtube.com/playlist?list%3DPL5--8gKSku174EnRTbP4DzU2W80Q1vqtm)

->  [learnbyexample.gumroad.com/l/cli_coreutils](https://learnbyexample.gumroad.com/l/cli_coreutils)

## Best Terminal Development Environment

* (2) [jrnl](https://jrnl.sh/en/stable/) - command-line notepad 
* (2) [wtf](https://github.com/wtfutil/wtf) - personal information dashboard for the terminal 
* (2) [khard](https://github.com/lucc/khard) - TUI vcard (contact book) manager (in Python) 
* (2) [peaclock](https://github.com/octobanana/peaclock) - nice terminal clock
* (1) [neovim](https://neovim.io/)
* (1) [wezterm](https://github.com/wez/wezterm)
   | (2) [termonad](https://github.com/cdepillabout/termonad)
   | (3) [alacritty](...)
   | (3) [foot](https://codeberg.org/dnkl/foot/) (wayland-only)
   | (3) [kitty](...)
   | (4) [blackbox](https://gitlab.gnome.org/raggesilver/blackbox)
   | (4) [commas](https://github.com/CyanSalt/commas)
   | (4) [contour](https://github.com/contour-terminal/contour)
   | (4) [extraterm](https://github.com/sedwards2009/extraterm)
   | (4) [ghostty](https://mitchellh.com/ghostty)
   | (4) [hyper](https://hyper.is/)
   | (4) [kermit-terminal](https://github.com/orhun/kermit)
   | (4) [rxvt-unicode-unwrapped-emoji](https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=urxvt)
   | (4) [tabby](https://github.com/eugeny/tabby)
   | (4) [terminology](https://www.enlightenment.org/about-terminology)
   | (4) [tym](https://github.com/endaaman/tym)
   | (4) [wayst](https://github.com/91861/wayst) (wayland-only)
   | (5) [waveterm](...) - need to package for [nix](https://jvns.ca/blog/2023/03/03/how-do-nix-builds-work-/)
   | (6) [st - NixOS Wiki](https://nixos.wiki/wiki/St)
* (4) [tdrop](https://github.com/noctuid/tdrop)
   | (4) [dropterm](https://github.com/Subbeh/dropterm)
* (3) [electerm](https://electerm.html5beta.com/)
* (1) [starship](https://github.com/starship/starship) -> [A Powerline configuration for Starship.rs](https://gist.github.com/notheotherben/92302a60f8599ba73f1c2840f3c6d455)
   | (2) [oh-my-posh](https://ohmyposh.dev/)
   | (4) [powerline/powerline](https://github.com/powerline/powerline) - provides statuslines and prompts for several other applications, including zsh, bash, tmux, IPython, Awesome and Qtile.

* (2) [xdg-utils](https://search.nixos.org/packages?channel=unstable&show=xdg-utils&from=0&size=50&sort=relevance&type=packages&query=xdg-open)
* (2) [handlr-regex](https://github.com/Anomalocaridid/handlr-regex)
* (2) [nix-prefetch-github](https://search.nixos.org/packages?channel=23.11&show=nix-prefetch-github&from=0&size=50&sort=relevance&type=packages&query=nix-prefetch-github)

## Dashboard

* (2) [devdash](https://thedevdash.com/)
* (2) [wtf](https://github.com/wtfutil/wtf)
* ( ) [cmd-wrapped](https://github.com/YiNNx/cmd-wrapped)

## AI Assistants

* ([video](https://www.youtube.com/watch?v=7h732qLxtAk)
* ( ) [masterclass](https://www.youtube.com/watch?v=iO1mwxPNP5A))
* ( ) [Cody](https://sourcegraph.com/cody/chat)
* ( ) [Tabnine](https://www.tabnine.com/) (2019)
* ( ) [GitHub Copilot](https://github.com/features/copilot) (2021)
* ( ) [DevGPT](https://www.devgpt.com/)
* ( ) [CodeLlama](https://about.fb.com/news/2023/08/code-llama-ai-for-coding/)
* ( ) [Falcoder](https://huggingface.co/mrm8488/falcoder-7b)
* ( ) [Replit Ghostwriter](https://replit.com/site/ghostwriter) (2022)
* ( ) [Amazon CodeWhisperer](https://aws.amazon.com/codewhisperer/) (2022)
* ( ) [Codeium](https://codeium.com/) (2022)
* ( ) [SourceGraph Cody](https://about.sourcegraph.com/cody) (2023)
* ( ) [CodeComplete](https://codecomplete.ai/) (2023)
* ( ) [FauxPilot](https://github.com/fauxpilot/fauxpilot) (2023)
* ( ) [Tabby](https://github.com/TabbyML/tabby) (2023)
* ( ) [Bard](...)

### CLI / TUI AI Assistants

* ( ) [AI](https://github.com/nitefood/ai-bash-gpt) - A commandline ChatGPT client in BASH with conversation/completion support.
* ( ) [Commandpilot](https://github.com/barthr/commandpilot) - An assistant which uses ChatGPT to aid in constructing commands for bash.
* ( ) [chatgpt](https://github.com/mglantz/chatgpt) - Simple command line integration to Chat GPT.
* ( ) [cligpt](https://github.com/paij0se/cligpt) - ChatGPT but in the terminal.
* ( ) [gpt-do](https://github.com/yasyf/gpt-do) - This is a handy-dandy CLI for when you don't know wtf to do; instead of furiously grepping through man pages, simply use do (or ddo if on bash/zsh), and have GPT-3 do all the magic for you.
* ( ) [aido-cli](https://github.com/kris7ian/aido-cli) - Looks another interface to online GPT models to execute command through natural language. Very poor   documentation and readme, though.
* ( ) [chatbot-ui](https://github.com/mckaywrigley/chatbot-ui)
* Companies / Online Interfaces
* ( ) [OpenAI APIs](https://openai.com/blog/openai-api). Curiously, ChatGPT uses data entered via its web interface for training, but [not when using its APIs](https://openai.com/policies/api-data-usage-policies). So an obvious workaround is to use the APIs with a wrapper, like the open source [Chatbot UI](https://github.com/mckaywrigley/chatbot-ui).
* ( ) [Azure OpenAI Service](https://azure.microsoft.com/en-us/products/cognitive-services/openai-service/). Fine-tune custom AI models with your company data and hyperparameters.
* ( ) [MosaicML](https://www.mosaicml.com/). Train large AI models with your company data in a secure environment. Point to an AWS S3 bucket, and that’s it!
* ( ) [Glean.](https://www.glean.com/) AI-powered workplace search across the company’s apps, powered by deep learning-based large language models (LLM.)
* ( ) [Aleph Alpha](https://aleph-alpha.com/). A company emphasizing that it’s a European AI technology company, which has open sourced its code codebase and doesn’t use customer data to
train models.
* ( ) [Cohere](https://cohere.ai/). A set of LLMs to generate text, summarize it, classify and retrieve it. → [dashboard.cohere.com/welcome/register](https://dashboard.cohere.com/welcome/register)

## Shell Completion

* (2) [inshellisense](https://github.com/microsoft/inshellisense)
* (2) [carapace](https://github.com/carapace-sh/carapace-bin)

## Core Set - Misc

* (2) [renovate](https://github.com/renovatebot/renovate)
* (2) [gzip-size-cli](https://github.com/sindresorhus/gzip-size-cli)
* (6) [checksum.sh](https://github.com/gavinuhma/checksum.sh)
* (2) [khard](https://github.com/lucc/khard) - console vcard client

## Miscellaneous

* (2) [sherlock $$$](https://github.com/sherlock-project/sherlock) - Hunt down social media accounts by username across social networks
* (4) [zed](https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=zed) (+ [zui](https://github.com/brimdata/zui)) - [site](https://zed.brimdata.io/)

## Shell Scripting Utils

* (2) [shfmt](https://github.com/mvdan/sh)
   |  (6) [beautysh](https://github.com/lovesegfault/beautysh)
* (2) [resholve](https://github.com/abathur/resholve) (find and resolve shell script dependencies)

## Terminal Calculator and Spreadsheet

* (2) [eva](https://github.com/nerdypepper/eva)
   |  (6) [bc](https://www.gnu.org/software/bc/manual/html_mono/bc.html)
* (5) [cash-cli](https://github.com/xxczaki/cash-cli)
* ( ) [dateutils](https://github.com/hroptatyr/dateutils)
* ( ) [dtool](https://github.com/guoxbin/dtool)
* ( ) [kalk](https://github.com/PaddiM8/kalk)
* ( ) [libqalculate](https://github.com/Qalculate/libqalculate)
* ( ) [link](https://bitbucket.org/heldercorreia/speedcrunch/)
* ( ) [link](https://heldercorreia.bitbucket.io/speedcrunch/)
* (5) [nota](https://github.com/pouyakary/Nota)
* ( ) [speedcrunch](https://bitbucket.org/heldercorreia/speedcrunch/)
* ( ) [texel](https://github.com/Lauriat/texel) - Command line interface for reading spreadsheets inside terminal.
* ( ) [tv](https://github.com/alexhallam/tv) - Cross-platform CSV pretty printer made to maximize viewer enjoyment.
* ( ) [units](https://manpage.me/?q=units)
* (2) [bcal](https://github.com/jarun/bcal)
* (2) [bitwise](https://github.com/mellowcandle/bitwise)
* (2) [programmer-calculator](https://github.com/alt-romes/programmer-calculator)
* (2) [qalculate](https://github.com/Qalculate/libqalculate)
* (2) [sc-im](https://github.com/andmarti1424/sc-im)
* (2) [sc-im](https://github.com/andmarti1424/sc-im) [andmarti1424/sc-im: sc-im - Spreadsheet Calculator Improvised -- An ncurses spreadsheet program for terminal](https://github.com/andmarti1424/sc-im)
* (5.1) [mdlt](https://github.com/metadelta/mdlt)
* (5.1) [pdd](https://github.com/jarun/pdd)
* (N) [123elf](https://github.com/taviso/123elf) - A native port of Lotus 1-2-3 Release 3 to Linux.

## Bibliography

* ( ) [cobib textualized](https://mrossinek.gitlab.io/programming/cobib-goes-textualized/) [introducing cobib](https://mrossinek.gitlab.io/programming/introducing-cobib/)
* -> zotero CLI
* ( ) [papis](https://github.com/papis/papis)
* ( ) [pubs](https://github.com/pubs/pubs)
* ( ) [bibman](https://codeberg.org/KMIJPH/bibman)

## Site Interfaces in Terminal CCC

* (6) [tuir](https://gitlab.com/ajak/tuir)
* (2) [reddio](https://gitlab.com/aaronNG/reddio) - A command-line interface for Reddit written in POSIX sh.
* (5) [redlib](https://github.com/redlib-org/redlib)
* (6) [rtv](https://github.com/michael-lazar/rtv) - Browse Reddit from your terminal.
* (2) [hackernews-TUI](https://github.com/aome510/hackernews-TUI) personal website thread
   |  (5) [hn-cli](https://github.com/rafaelrinaldi/hn-cli)
   |  (5) [haxor-news](https://github.com/donnemartin/haxor-news)
* (5) [meetup-cli](https://github.com/specious/meetup-cli) - Meetup.com client.
* (5) [facebook-cli](https://github.com/specious/facebook-cli) - Facebook command line tool
* (5) [vk-cli](https://github.com/vk-cli/vk)
* (2) [wikit](https://github.com/KorySchneider/wikit) - A command line program for getting Wikipedia summaries easily.
* (5) [medium-cli](https://github.com/djadmin/medium-cli) - Medium for Hackers - Read [medium.com](https://medium.com/) stories in the terminal.

### CLI Wrappers for specific solutions

-> see projects.md for clockodo and jira (2)

* (2) [proton bridge CLI](https://proton.me/support/bridge-cli-guide)
* (2) [libgen-cli](https://search.nixos.org/packages?channel%3D23.11%26show%3Dlibgen-cli%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlibgen)
* (2) [jira-cli-go](https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=jira-cli) -> see also python311Packages.jira
   |  (6) [go-jira](https://github.com/go-jira/jira)
* (4.5) [doclt](https://github.com/omgimanerd/doclt) - A command line interface to Digital Ocean
* (4.5) [Dropbox-Uploader](https://github.com/andreafabrizi/Dropbox-Uploader) - Dropbox Uploader is a Bash script which can be used to upload, download, list or delete files from Dropbox

## Multiplexer

* (2) [zellij](https://github.com/zellij-org/zellij)
   | (2) [tmux](https://github.com/tmux/tmux)
* (4) [tmate](https://github.com/tmate-io/tmate) - A fork of tmux that allows to share the terminal with other users. AFAIK, it connects to a centralized server to establish the connection. Someone may see this inconvenient for privacy issues. - [manpages.org/tmate](https://manpages.org/tmate)
* (5) [procmux](https://github.com/napisani/procmux) - A TUI utility for running multiple commands in parallel in easily switchable terminals.
* (2) [mprocs](https://github.com/pvolok/mprocs)- similar to procmux
* (6) [dtach](https://github.com/crigler/dtach) - A program written in C that emulates the detach feature of screen.
* (4) [screen](https://www.gnu.org/software/screen/) - GNU terminal multiplexer - Terminal multiplexer that split a physical terminal between several processes, typically interactive shells. - just use a bit to have used it
* (4) [mtm](https://github.com/deadpixi/mtm) - Micro Terminal Multiplexer - Simple but usable, stable and minimalistic terminal multiplexer. - just try

## Terminal Sharing

* (3.5) [sshx](https://github.com/ekzhang/sshx)
* (5) [warp](https://github.com/spolu/warp) - Secure and simple terminal sharing. - fork and update?
* (3.5) [ttyd](https://github.com/tsl0922/ttyd) - Share your terminal over the web.

## Shell

* (2) [bash](https://www.gnu.org/software/bash/)
   | (6) [zsh](...)
| (2) [fish](...)
| (2) [nushell](...) [Nushell: Introduction to a new kind of shell](https://brianlovin.com/hn/33419944) [Solene's : Nushell: Introduction to a new kind of shell](https://dataswamp.org/~solene/2022-10-31-nushell.html)
| (2) [xonsh](...) [Tutorial - xonsh 0.14.0 documentation](https://xon.sh/tutorial.html)
| (2)[elvish](...)
| (2) [hilbish](...)
| (2) [dash](...)
| (4) [ion](https://doc.redox-os.org/ion-manual/)
| (4) [cosh](https://github.com/tomhrr/cosh)
| (4) [oil](https://www.oilshell.org/)
| (4) [yash](https://github.com/magicant/yash)
| (4) [es](https://github.com/wryun/es-shell)
| (4) [shell-plus-plus](https://github.com/alexst07/shell-plus-plus)
| (4) [oh](https://github.com/michaelmacinnis/oh)
* ( ) [papyrus](https://docs.rs/papyrus/latest/papyrus/)
* (5) [SwitchAxe/Rewind: A modern functional shell and a programming language](https://github.com/SwitchAxe/Rewind)
* (2) [turtle: Shell programming, Haskell style](https://github.com/Gabriella439/turtle)
* (2) [ipython](https://ipython.org/) ( ) [Backward search in ipython via FZF - Stack Overflow](https://stackoverflow.com/questions/48203949/backward-search-in-ipython-via-fzf) * ( ) [Adding fuzzy history search to IPython · Issue #12231 · ipython/ipython](https://github.com/ipython/ipython/issues/12231)

## Development Shell Management

* (2) [organist](https://github.com/nickel-lang/organist) [blog](https://www.tweag.io/blog/2023-11-16-announcing-organist/)
* (2.5) [devshell](https://github.com/numtide/devshell)
   | (2.5) [devenv](https://devenv.sh/)
   | (2.5) [devbox](https://github.com/jetpack-io/devbox)
   | (5) [lorelei](https://github.com/shajra/direnv-nix-lorelei)
   | (2.5) [mise](https://github.com/jdx/mise)
* (2.5)
* (2.5) [nix-direnv](https://github.com/nix-community/nix-direnv)
   | (2.5) [lorri](https://github.com/nix-community/lorri)
   | (2.5) [direnv](https://direnv.net/) - see also [direnv standard library](https://direnv.net/man/direnv-stdlib.1.html#codeuse-nix-code)
* (5) [nixify](https://github.com/kampka/nixify)
* (2) [wget](...)
* (2) [curl](...)
* (1) [kanata](https://github.com/jtroo/kanata)
   | (2.5) [kmonad](https://github.com/kmonad/kmonad)
   | (2.5) [keyd](https://github.com/rvaiya/keyd)
   | (2.5) [hawck](https://github.com/snyball/Hawck)
   | (2.5) [xremap](https://github.com/k0kubun/xremap)
   | ( ) [ktrl](https://github.com/ItayGarin/ktrl) (?)
* (2) [ ] [input-remapper](https://github.com/sezanzeb/input-remapper)
* (2) [espanso](https://espanso.org/docs/get-started/)
* (0) [nix](https://github.com/NixOS/nix)
* (1) [home-manager](https://github.com/nix-community/home-manager)

### Environment Variables

* ( ) [envio](https://github.com/envio-cli/envio)

## Weather

* ( ) [wttr.it](https://github.com/chubin/wttr.in)
* ( ) [wego](https://github.com/schachmat/wego)
* ( ) [weather-cli](https://github.com/riyadhalnur/weather-cli)
* ( ) [ansiweather](https://github.com/fcambus/ansiweather)
* ( ) [python-forecast.io](https://github.com/ZeevG/python-forecast.io)
* ( ) [rusty-forecast](https://ithub.com/husseinhareb/rusty-forecast)

## Project Templates and Generation

* ( ) [SunGodRamen/task-driven-development: Project template that enforces documentation and project lifecycle across tools; nvim, taskwarrior, drawio, using githooks to enforce and automate tracking.](https://github.com/SunGodRamen/task-driven-development)
  [copier](https://github.com/copier-org/copier) 
   |  [yeoman](https://yeoman.io/) 
   |  [kickstart](https://github.com/Keats/kickstart) 
   | ( ) [cookiecutter](https://github.com/audreyr/cookiecutter)
   | ( ) [proji](https://github.com/nikoksr/proji) (in Go, old)
   | ( ) [boilr](https://github.com/tmrts/boilr) (in Go, even older)
   | ( ) [nunu](https://github.com/go-nunu/nunu) - CLI for building Go applications

### Task Scripting

* (2) [makesure](https://github.com/xonixx/makesure)
* (2) [make](https://www.gnu.org/software/make/) 
* (2) [just](https://github.com/casey/just) 
   | (2.5) [taskfile](https://taskfile.dev/)
   | (3.5) [fmake](https://github.com/bharatvaj/fmake)
* (2) [mk](https://github.com/pycontribs/mk)
* (2.5) [mxflow-cli](https://github.com/metaory/mxflow-cli) 
* (2) [projectdo](https://ithub.com/paldepind/projectdo) Context-aware single-letter project commands to speed up your terminal workflow.

## Command Running and Automation

* (6) [cron](https://opensource.com/article/21/7/cron-linux)
* (2) [fcron](http://fcron.free.fr/)
* (4) [cronutils](https://github.com/google/cronutils)
* (5) [actiona](https://github.com/Jmgr/actiona)
* (2) [sake](https://github.com/alajmo/sake)
* (4) [foy](https://github.com/zaaack/foy)
* (4) [jobber](https://github.com/dshearer/jobber)

## Miscellaneous Coding Utils

* (4.5) [autocomplete](https://github.com/withfig/autocomplete) 
* (2) [todocheck](https://github.com/preslavmihaylov/todocheck) - Static code analyzer for annotated TODO comments. 
* (5.1) [detect-indent-cli](https://github.com/sindresorhus/detect-indent-cli) - Detect the indentation of code. - but necessary? 

## License

* ( ) [license-up](https://github.com/nikitavoloboev/license-up)
   | ( ) [mklicense](https://github.com/cezaraugusto/mklicense)
   | ( ) [legit](https://github.com/captainsafia/legit)
   | ( ) [licins](https://github.com/dogoncouch/licins)
   | ( ) [upnup](https://github.com/tomit4/upnup)
* ( ) [choosealicense](https://github.com/lord63/choosealicense-cli)

## Changelog and Realeases

* ( ) [semantic-release](https://github.com/semantic-release/semantic-release)
   | ( ) [release-it](https://github.com/webpro/release-it)
* ( ) [clog-cli](https://github.com/clog-tool/clog-cli)
   | ( ) [release](https://github.com/vercel/release)
* ( ) [unleash](https://github.com/Unleash/unleash)
* (2) [git-cliff](https://github.com/orhun/git-cliff) [git-cliff site](https://git-cliff.org/) A highly customizable changelog generator

## Semantic Versioning

* ( ) [sh-semver](https://github.com/qzb/sh-semver) - Semver tool for bash - finds versions matching to specified rules
* ( ) [semver_bash](https://github.com/cloudflare/semver_bash) - Semantic Versioning in Bash
* ( ) [git-semver](https://github.com/markchalloner/git-semver) - A git plugin to make Semantic Versioning 2.0.0 and Change Log management easier

## Snippets

* ( ) [espanso.org/](https://espanso.org/)
* ( ) [tldr.sh/](https://tldr.sh/)  → see clients, web apps and tools
* ( ) [out-of-cheese-error/the-way](https://github.com/out-of-cheese-error/the-way)
* ( ) [snipkit](https://github.com/lemoony/snipkit)looks really look, interesting concept  (Go)
* ( ) [qc](https://github.com/qownnotes/qc) looks great, need to try
* ( ) [pet](https://github.com/knqyf263/pet) need to compare with the-way
* ( ) [tldr-sh-client](https://github.com/raylee/tldr-sh-client) - A fully-functional bash client for tldr, simplified and community-driven man pages → move to qol
* ( ) [snips](https://github.com/srijanshetty/snips) - Command line tool to manage snippets of code. Node

## Readme

* ( ) [readme-md-generator](https://github.com/kefranabg/readme-md-generator)
   | ( ) [README-Generator](https://github.com/markmcdnyu/README-Generator)
   | ( ) [readme-generator](https://github.com/jfisher396/readme-generator)
* ( ) [profile-readme-generator](https://rahuldkjain.github.io/gh-profile-readme-generator/)

## Formatting

* (2) [treefmt](https://github.com/numtide/treefmt) 
* (2) [treefmt-nix](https://github.com/numtide/treefmt-nix) 
* (4) [uncrustify](https://github.com/uncrustify/uncrustify/) 

## Moving and Renaming

* (2) [rnr](https://github.com/ismaelgv/rnr)
   | (2.5) [f2](https://github.com/ayoisaiah/f2)
   | (2) [nomino](https://github.com/yaa110/nomino)
   | (2.5) [tempren](https://github.com/idle-code/tempren)
   | (5) [node-rename-cli](https://github.com/jhotmann/node-rename-cli)
   | (6) [repren](https://github.com/jlevy/repren)
   | (2.5) [rename](https://github.com/pstray/rename)
* (2) [moove](https://github.com/urin/moove)
   | ( ) [massren](https://github.com/laurent22/massren)

## Other Command-Line Tools

* (2) [vale](https://vale.sh/) - use as an LSP for prose in nvim
* (2) [alex](https://github.com/wooorm/alex)
* (4) [pick](https://github.com/mptre/pick)
   | ( ) [choose](https://github.com/jagprog5/choose)
   | (6) [shmenu](https://github.com/duclos-cavalcanti/shmenu)
* (2.5) [atuin](https://github.com/atuinsh/atuin) -> [shell history article](https://martinheinz.dev/blog/110)
   | ( ) [hishtory](https://github.com/ddworken/hishtory)
   | ( ) [muc](https://github.com/nate-sys/muc)
   | ( ) [bevel](https://github.com/NorfairKing/bevel) (Haskell!)
   | ( ) [resh](https://github.com/curusarn/resh)
   | ( ) [bashhub-client](https://github.com/rcaloras/bashhub-client)
   | ( ) [mcfly](https://github.com/cantino/mcfly) + [mcfly-fzf](https://github.com/bnprks/mcfly-fzf)
   | ( ) [hstr](https://github.com/dvorka/hstr)
* ( ) [file](https://search.nixos.org/packages?channel=23.11&show=file&from=0&size=50&sort=relevance&type=packages&query=file+type)
   | ( ) [filetype](https://search.nixos.org/packages?channel=23.11&show=python311Packages.filetype&from=0&size=50&sort=relevance&type=packages&query=file+type)

## Code Navigation

* ( ) [ctags](https://github.com/universal-ctags/ctags)
   | ( ) [cscope](http://cscope.sourceforge.net/)

## Core Command-Line Tools

* ( ) [coreutils](https://github.com/uutils/coreutils) → read as an example of good Rust code
* (2) [uutils-coreutils-noprefix](...) ([source](https://github.com/uutils/coreutils)) 
* (2) [moreutils](https://joeyh.name/code/moreutils/) 
* (2) [util-linux](...) 
* (4) [toybox](...)
* (2) [xc](https://github.com/joerdav/xc)
* (2) [make](...) 
* (1)  [eza](https://github.com/eza-community/eza) 
   | ( ) [lsd](https://github.com/lsd-rs/lsd)
   | ( ) [colorls](https://github.com/athityakumar/colorls)
   | ( ) [nat](https://github.com/willdoescode/nat)
* (2.5) [tre](https://github.com/dduan/tre) 
   |  [tree](https://gitlab.com/OldManProgrammer/unix-tree)
   | ( ) [termtree](https://github.com/rust-cli/termtree)
* (2) [as-tree](https://github.com/jez/as-tree)
* (2) [ictree](https://github.com/NikitaIvanovV/ictree)
* (5) [ckit](https://github.com/fpgmaas/ckit)
* (5) [runner](https://github.com/sudoerp/runner)
* ( ) [Coderun: code runner CLI that can automatically detect run any languages : r/commandline](https://www.reddit.com/r/commandline/comments/lo1m6u/coderun_code_runner_cli_that_can_automatically/)
* (2) [ea](https://github.com/dduan/ea)
* (2)  [topalias](https://github.com/meteoritt/topalias)
* (2) [nap](https://github.com/maaslalani/nap)
   | (5) [boom](https://github.com/holman/boom)
* (5) [ad](https://github.com/tanrax/terminal-AdvancedNewFile)
* (2.5)
* ( ) [rm-improved](https://github.com/nivekuil/rip) (rip)
   | ( ) [trashy](https://github.com/oberblastmeister/trashy)
   | ( ) [trash-cli](https://github.com/andreafrancia/trash-cli)
   | ( ) [t](https://github.com/adamheins/t) (wraps trash-cli)
   | ( ) [safe-rm](https://code.launchpad.net/safe-rm)
   | ( ) [brash](https://github.com/zakariagatter/brash)
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
* (1) 󰄬 [zoxide](https://github.com/ajeetdsouza/zoxide) - [zoxide has forever improved the way I navigate in the terminal. - YouTube](https://www.youtube.com/watch?v%3DaghxkpyRVDY)
   | ( ) [z.lua](https://github.com/skywind3000/z.lua)
   | ( ) [z](https://github.com/rupa/z)
* (2) [jump](https://github.com/gsamokovarov/jump)
* (5) [commacd](https://github.com/shyiko/commacd)
* (5) [up](https://github.com/shannonmoeller/up)
   | ( ) [bd](https://github.com/vigneshwaranr/bd)
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
   | ( ) [temci](https://github.com/parttimenerd/temci)
* ( ) [procs](https://github.com/dalance/procs)
* (2) [topgrade](https://github.com/topgrade-rs/topgrade)
* (2) [ramfetch](https://codeberg.org/jahway603/ramfetch)
* ( ) [guesswidth](https://github.com/noborus/guesswidth)
* ( ) [erdtree](https://github.com/solidiquis/erdtree)
* ( ) [rng](https://github.com/nickolasburr/rng)
* (2) [xcp](https://github.com/tarka/xcp)
   | ( ) [pycp](https://github.com/your-tools/pycp)
* (2) [procs](https://github.com/dalance/procs)
* (2) [parallel](https://git.savannah.gnu.org/cgit/parallel.git)
* (3) [crunkurrent](https://github.com/samuela/crunkurrent)
* (4) [ts](http://vicerveza.homeunix.net/~viric/soft/ts/)
* (4) [ts](https://github.com/justanhduc/task-spooler) (for GPU also)
* (2) [await](https://github.com/slavaGanzin/await)
* (2.5)
* ( ) [ikill (could use updating)](https://github.com/pombadev/ikill)
   | ( ) [fkill-cli](https://github.com/sindresorhus/fkill-cli)
   |
* ( )  [pazi](https://github.com/euank/pazi)
   | ( ) [ff](https://github.com/akymos/ff)
   | ( ) [smartcd](https://github.com/CodesOfRishi/smartcd)
   | ( ) [lazy-cd](https://github.com/pedramamini/lazy-cd)
   | ( ) [pm](https://github.com/Angelmmiguel/pm)
   | ( ) [fastdiract](https://github.com/dp12/fastdiract)
   | ( ) [goto](https://github.com/iridakos/goto)
   | ( ) [h](https://github.com/zimbatm/h)
* ( ) [peco](https://github.com/peco/peco)
* (2) [conan](https://github.com/mirage/conan)

## Viewing

* (2) [bat](https://github.com/sharkdp/bat) + [bat-extras](https://github.com/eth-p/bat-extras)
* (5) [nbcat](https://github.com/yelircaasi/nbcat)
   | (5) [nbbat](...) (yet to come)
* (2) [catdoc](https://search.nixos.org/packages?channel=unstable&show=catdoc&from=0&size=50&sort=relevance&type=packages&query=catdoc)
* (2) [xls2csv](https://search.nixos.org/packages?channel=unstable&show=catdoc&from=0&size=50&sort=relevance&type=packages&query=catdoc)
* (2) [catppt](https://search.nixos.org/packages?channel=unstable&show=catdoc&from=0&size=50&sort=relevance&type=packages&query=catdoc)
* (2) [catdocx](https://github.com/jncraton/catdocx)
* (2) [hexxy](https://github.com/sweetbbak/hexxy)

## Search

* (2) [fzf](https://github.com/junegunn/fzf)
   | (2) [zf](https://github.com/natecraddock/zf)
   | (2) [skim](https://github.com/lotabout/skim)
   | ( ) [fzy](https://github.com/jhawthorn/fzy)
   | ( ) [luneta](https://github.com/fbeline/luneta) (written in D!)
   | ( ) [fzf-lua](https://github.com/ibhagwan/fzf-lua)
* (6) [fz.sh](https://github.com/mrjohannchang/fz.sh) (for zsh)
* (2) [ack](https://beyondgrep.com/)
   | (2) [ugrep](https://github.com/Genivia/ugrep)
   | (2) [frawk](https://github.com/ezrosent/frawk)
   | (6) [sift](https://github.com/svent/sift)
* (2) [vgrep](https://github.com/vrothberg/vgrep)
* (2) [fd](https://github.com/sharkdp/fd)
   | ( ) [lf.sh](https://github.com/suewonjp/lf.sh)
* (2) [ag](https://github.com/ggreer/the_silver_searcher)
* (2) [rg](https://github.com/BurntSushi/ripgrep)
* (2) [rga](https://github.com/phiresky/ripgrep-all)
* (2) [fselect](https://github.com/jhspetersson/fselect)
* (5) [find-up-cli](https://github.com/sindresorhus/find-up-cli) (shouldn't be too hard to implement in a faster and lighter language)
* (4) [paragrep](https://github.com/bmc/paragrep)
* (5) [spot](https://github.com/rauchg/spot)
* ( ) [ast-grep.github](https://ast-grep.github.io/)

### Data Wrangling

* (2) [pandoc](https://pandoc.org/) + ( ) [pandoc extras](https://pandoc.org/extras.html) + ( ) [pandoc-ext/info](https://github.com/pandoc-ext/info)
   | ( ) [ebook-converter](https://github.com/gryf/ebook-converter)
* (2) [teip](https://github.com/greymd/teip)
* (2) [grex](https://github.com/pemistahl/grex)
* (2) [exrex](https://github.com/asciimoo/exrex)
   | ( ) [randexp.js](https://github.com/fent/randexp.js)
* (2) [difftastic](https://github.com/Wilfred/difftastic)
* ( ) [huniq](https://github.com/koraa/huniq)
* ( ) [jid](https://github.com/simeji/jid)
* ( ) [jiq](https://search.nixos.org/packages?channel=23.11&show=jiq&from=0&size=50&sort=relevance&type=packages&query=jiq)
* ( ) [gzip-size-cli](https://github.com/sindresorhus/gzip-size-cli)
* (2) [sd](https://github.com/chmln/sd)
   | (2) [sad](https://github.com/ms-jpq/sad)
   | ( ) [ruplacer](https://github.com/your-tools/ruplacer)
   | ( ) [amber](https://github.com/dalance/amber)
* ( ) [tuc](https://github.com/riquito/tuc)
   | ( ) [choose](https://github.com/theryangeary/choose)
   | ( ) [hck](https://github.com/sstadick/hck)
* ( ) [ramda-cli](https://github.com/raine/ramda-cli)
* ( ) [datasetG_](https://github.com/radi-cho/datasetGPT)
* ( ) [roapi](https://github.com/roapi/roapi)
* ( ) [nodice](https://github.com/avnigo/nodice-cli)
* ( ) [up](https://github.com/akavel/up) (UltimatePlumber)
* ( ) [dt](https://github.com/so-dang-cool/dt)
* ( ) [tokenize-output](https://github.com/anki-code/tokenize-output)
* ( ) [unindenter](https://github.com/BiasedRiot/Unindenter)
* ( ) [dasel](https://github.com/tomwright/dasel) - [TomWright/dasel:](https://github.com/TomWright/dasel) - Select, put and delete data from JSON, TOML, YAML, XML and CSV files with a single tool. Supports conversion between formats and can be used as a Go package
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
* ( ) [xmq](https://github.com/libxmq/xmq)

#### Markdown

* (standard) [sembr](https://sembr.org/)
* (5) [frogmouth](https://github.com/Textualize/frogmouth)
   | (2) [glow](https://github.com/charmbracelet/glow)
   | ( ) [mdcat](https://github.com/swsnr/mdcat)
   | ( ) [tmv](https://github.com/axiros/terminal_markdown_viewer)
* (5) [mdt](https://github.com/robolab-pavia/mdt)
* ( ) [grip](https://github.com/joeyespo/grip) - Preview markdown files as GitHub would render them.
* ( ) [lowdown](https://github.com/kristapsdz/lowdown) - Markdown translator (HTML5, roff, LaTeX, gemini, OpenDocument, and terminal output)
* ( ) [doctoc](https://github.com/thlorenz/doctoc) - Generates table of contents for markdown files.
* ( ) [mdtt](https://github.com/szktkfm/mdtt)

#### CSV, TSV

* (2.5)
* ( ) [csvtk](https://github.com/shenwei356/csvtk/) (go)
   | (2.5)
* ( ) [csvkit](https://github.com/wireservice/csvkit) (python)
   | (5) [xsv](https://github.com/medialab/xsv) (rust)
   | (4) [tsv-utils](https://github.com/eBay/tsv-utils) (dlang)
   |
* (2) [csvq](https://github.com/mithrandie/csvq)
   | (4) [q](https://github.com/harelba/q)

#### JSON

* (2) [jq](https://github.com/stedolan/jq)
   | ( ) [jaq](https://github.com/01mf02/jaq) jq clone
   | (3) [zed](https://github.com/brimdata/zed)
   | (2) [gojq](https://github.com/itchyny/gojq)
   | (4) [jtc](https://github.com/ldn-softdev/jtc)
* (2) [groq-cli](https://github.com/sanity-io/groq-cli)
* (4) [jq.node](https://github.com/FGRibreau/jq.node)
* ( ) [jd](https://github.com/josephburnett/jd)
* ( ) [jql](https://github.com/yamafaktory/jql)
* ( ) [jqp](https://github.com/noahgorstein/jqp)
* (2) [jc](https://github.com/kellyjonbrazil/jc)
   | ( ) [jo](https://github.com/jpmens/jo)
* ( ) [crosshash](https://github.com/httpie/crosshash)
* (2) [fx](https://github.com/antonmedv/fx)
   | ( ) [jless](https://github.com/PaulJuliusMartinez/jless)
* (2) [gron](https://github.com/tomnomnom/gron)
* (2) [jj](https://github.com/anki-code/jj)
* (5) [strip-json-comments-cli](https://github.com/sindresorhus/strip-json-comments-cli)
* ( ) [jnv](https://github.com/ynqa/jnv) interactive JSON filter using jq

#### PDF

* (2) [xpdfreader](https://www.xpdfreader.com/download.html)
* (->)
* ( ) [pdf-writer](https://github.com/typst/pdf-writer) (rust library)
* (5) [pdftty](https://github.com/kpj/pdftty)
* ( ) [site](https://kpj.github.io/my_projects/pdftty.html)
* (->)
* ( ) [stackoverflow cli pdf viewer](https://stackoverflow.com/questions/3570591/cli-pdf-viewer-for-linux)
* (3) [K2pdfopt](https://www.willus.com/k2pdfopt)
* (4) [sejda](https://github.com/torakiki/sejda/)
* ( ) [2mol/pboy: a small .pdf management tool with a command-line UI](https://github.com/2mol/pboy)
* ( ) [PyPDFCompare PDF Comparison CLI Tool](https://www.reddit.com/r/Python/s/s77FRjUraQ)

#### YAML

* (2) [yq](https://github.com/mikefarah/yq)
* (2) [dyff](https://github.com/homeport/dyff)
* (2) [yamllint](https://github.com/adrienverge/yamllint)

#### TOML

* (2) [taplo](https://taplo.tamasfe.dev/)
* (5) [toml-cl](https://github.com/gnprice/toml-cli)
* ( ) [current fork](https://github.com/chevdor/toml-cli) (Rust)
   | ( ) [toml-cli](https://github.com/mrijken/toml-cli) (Python)
* (2) [toml2nix](https://crates.io/crates/toml2nix)
* (2) [toml2json](https://github.com/woodruffw/toml2json)

#### HTML

* (2) [htmlq](https://github.com/mgdm/htmlq)
   | (4.5)
* ( ) [pup](https://github.com/gromgit/pup)
* (5) [hget](https://github.com/bevacqua/hget)

#### Database

* (2) [usql](https://github.com/xo/usql)
* (2) [termdbms](https://github.com/mathaou/termdbms)
* (2) [pgcli](https://github.com/dbcli/pgcli)
* (3) [soul](https://github.com/thevahidal/soul)
* (2) [sqlite3](https://sqlite.org/cli.html)
* (3) [redis-viewer](https://github.com/SaltFishPr/redis-viewer)
* (3) [iredis](https://github.com/laixintao/iredis)
* ( ) [echovault](https://github.com/EchoVault/EchoVault) - Embeddable Distributed in-memory data store with an emphasis on speed and reliability.
* ( ) [mkdb](https://www.mkdb.sh/) - free hosted postgres

#### Other Formats

* (3) [recutils](https://www.gnu.org/software/recutils/)
* (3) [hcledit](https://github.com/minamijoyo/hcledit)
* (3) [hcl2json](https://github.com/tmccombs/hcl2json)
* (3) [hclfmt](https://github.com/hashicorp/hcl/tree/main/cmd/hclfmt)
* (3) [dhall](https://hackage.haskell.org/package/dhall)
* (3) [crudini](https://github.com/pixelb/crudini)
* (3) [NestedText](https://nestedtext.org/en/latest/)

#### Multiple Formats / Conversion

* (2) [zet](https://github.com/yarrow/zet)
* (2.5)
* ( ) [ansi2html](https://github.com/pycontribs/ansi2html)
   | (2.5)
* ( ) [ansi2html](https://hackage.haskell.org/package/Ansi2Html)
   | (2.5)
* ( ) [HTML-FromANSI](https://metacpan.org/dist/HTML-FromANSI)
   | (6) [aha](https://github.com/theZiz/aha)
* (2) [coloried-logs](https://github.com/kilobyte/colorized-logs)
* (3) [nestedtextto](https://github.com/AndydeCleyre/nestedtextto)
* (2) [yamlpath](https://github.com/wwkimball/yamlpath)
* (6) [gitbook](https://blog.gitbook.com/product-updates/gitbook-3.0-document-everything-from-start-to-ship)
* (2) [html2svg](https://github.com/fathyb/html2svg)

## Coding Utils

* (2) [anewer](https://github.com/ysf/anewer)
   | (6) [anew](https://github.com/tomnomnom/anew)
* (2) [pre-commit-hooks.nix](https://github.com/cachix/pre-commit-hooks.nix)

## Help

* (2) [halp](https://github.com/orhun/halp)
* (5) [eg](https://github.com/srsudar/eg)
* (2) [navi](https://github.com/denisidoro/navi)
* (2) [thefuck](https://github.com/nvbn/thefuck)
* (2) [tealdeer](https://github.com/dbrgn/tealdeer)
   | ( ) [tlrc](https://github.com/tldr-pages/tlrc)
   | ( ) [tldr-node-client](https://github.com/tldr-pages/tldr-node-client)
   | ( ) [tinytldr](https://github.com/kovmir/tinytldr)
* (2) [hors](https://github.com/WindSoilder/hors)
   | (6) [howdoi](https://github.com/gleitz/howdoi)
   | (6) [how2](https://github.com/santinic/how2)
* (2) [so](https://github.com/samtay/so)
* (2) [cheat](https://github.com/cheat/cheat)
* (4.5)
* ( ) [ehh](https://github.com/lennardv2/ehh)
* (2) [cod](https://github.com/dim-an/cod)
* (2) [explainshell](https://github.com/idank/explainshell)
* (2) [dasht](https://github.com/sunaku/dasht)

### RSS

* -> [rss video](https://www.youtube.com/watch?v=_7LTwnAaQ3k) rss
* (2.5) [newsboat](https://github.com/newsboat/newsboat)
   | ( ) [tt-rss](https://tt-rss.org/)
   | ( ) [FeedTheMonkey](https://github.com/jeena/FeedTheMonkey)
   | ( ) [NewsFlash](https://apps.gnome.org/app/com.gitlab.newsflash/)
   | ( ) [fluent-reader](https://hyliu.me/fluent-reader/)
   | ( ) [goread](https://github.com/TypicalAM/goread) TUI feed reader
   | ( ) [Akregator](https://apps.kde.org/akregator/)
   | ( ) [rssguard](https://github.com/martinrotter/rssguard)
   | ( ) [rss-cli](https://github.com/Clortox/rss-cli)
   | ( ) [rreader](https://github.com/rainygirl/rreader)
   | ( ) [canto-curses](https://github.com/themoken/canto-curses)
   | ( ) [nom](https://github.com/guyfedwards/nom)

## Luxury, Fun

* (2) [arttime](https://github.com/poetaman/arttime)
* ( ) [snake](https://github.com/ormai/snake)
* (2) [display3d](https://github.com/redpenguinyt/display3d)
* (2) [pipes-rs](https://github.com/lhvy/pipes-rs) 
   | ( ) [Pipeseroni](https://pipeseroni.github.io/)
   | ( ) [pipes.sh](http://pipes.sh/)
   | ( ) [pipes.js](https://github.com/Oman395/pipes.js)
* (2) [dna_bash](https://github.com/clyde80/dna_bash) 
* (2) [cmatrix](https://github.com/abishekvashok/cmatrix) 
* (2) [fetch-master-6000](https://github.com/anhsirk0/fetch-master-6000) 
* (6) [LinuxLogo](https://sourceforge.net/projects/linuxlogo/)
* (2) [cbonsai](https://gitlab.com/jallbrit/cbonsai) 
* (2) [gof-rs](https://github.com/omagdy7/gof-rs) 
* (2) [cool-retro-term](https://github.com/Swordfish90/cool-retro-term) 
* (4)  [edex-ui](https://github.com/GitSquared/edex-ui) 
* (2) [gambit](https://github.com/maaslalani/gambit)
* (4) [matrix-webcam](https://github.com/joschuck/matrix-webcam) - Take your video conference from within the matrix. -> USE FOR TEAMS, CONTRIBUTE TO NEXT STEPS -> package for NixOS
* ( ) [v4l2loopback](https://github.com/umlaeute/v4l2loopback)
* ( ) [gstreamer use](https://gstreamer.freedesktop.org/documentation/installing/on-linux.html?gi-language=c)
* (2) [->](https://blog.ghaiklor.com/2020/07/27/high-performant-2d-renderer-in-a-terminal/) * ( ) [terminal-canvas](https://github.com/ghaiklor/terminal-canvas)
* (5) [livescore-cli](https://github.com/codeezer/livescore-cli) (python)
* (5) [football-cli](https://github.com/manrajgrover/football-cli) (JS)
* (5) [soccer-cli](https://github.com/architv/soccer-cli) (python)
* (2) [lolcat](https://github.com/busyloop/lolcat)
* (2) [dotacat](https://gitlab.scd31.com/stephen/dotacat)
* (2) [lolcat](https://github.com/IchMageBaume/clolcat)
* (5) [rainbow](https://github.com/raincoats/rainbow)
* Cowsay family
* (6) [rank-amateur-cowsay](https://github.com/tnalpgge/rank-amateur-cowsay) - A program that generates a ASCII art of a cow with a bubble containing the specified message (I provide the Wikipedia link since at the moment the link to the author's homepage results to be unreachable).
* (6) [cowsay](https://github.com/piuccio/cowsay)
* (2) [cowsay](https://github.com/cowsay-org/cowsay)
* (6) [cowsay](https://github.com/sckott/cowsay) (R)
* (4) [Neo-cowsay](https://github.com/Code-Hex/Neo-cowsay)
* (6) [yosay](https://github.com/yeoman/yosay) - Like cowsay, but for yeoman.
* (6) [ricksay](https://github.com/roma-guru/ricksay) - Quotes from Rick and Morty.
* (6) [ponysay](https://github.com/erkin/ponysay) - Pony rewrite of cowsay.

### Educational Fun

* ( ) [sortty](https://github.com/dormant-chicken/sortty) - sorting algorithms in the terminal

### Flashcards

* ( ) [...](https://www.reddit.com/r/unixporn/s/ZUqJ2go4cX) terminal flashcards

### Decoration, Screensavers

* ( ) [pokeshell](https://github.com/acxz/pokeshell)
* ( ) [terminal-parrot](https://github.com/jmhobbs/terminal-parrot)
* (5) [cli-fireplace](https://github.com/dolsup/cli-fireplace) - Shows digital fireplace.
* (3) [ctree](https://github.com/gleich/ctree) - A Christmas tree right from your terminal.
* (3) [YuleLog](https://github.com/Duroktar/YuleLog) - Christmas Yule Log fireplace.
* (2) [cmatrix](https://github.com/Treri/cmatrix)
* (2) [TMatrix](https://github.com/M4444/TMatrix)
* (6) [pokeget](https://github.com/talwat/pokeget) - A bash script you can use to display cool sprites of pokemon in your terminal.
* (3) [LundukeHoliday](https://github.com/BryanLunduke/LundukeHoliday) - A simple Bash script that shows some animated, ASCII holiday decorations in your shell.
* (5) [ternimal](https://github.com/p-e-w/ternimal) - Simulate a lifeform in the terminal.
* (2) [asciiquarium-transparent](https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=asciiquarium) - Enjoy the mysteries of the sea from the safety of your own terminal!
* (5) [termsaver](https://github.com/brunobraga/termsaver) - termsaver to enjoy fancy ASCII screensavers like matrix, clock, starwars, and a couple of not-safe-for-work screens.
* (6) [screensaver](https://github.com/gillstrom/screensaver) - Start the screensaver.
* (6) [pokeget-rs](https://github.com/talwat/pokeget-rs)[pokeget](https://github.com/talwat/pokeget)- Display sprites of pokemon.
* (2) [sl](https://github.com/mtoyoda/sl) - A steam locomotive traverses the screen from right to left if `sl` is typed instead of `ls`.
* (2) [genact](https://github.com/svenstaro/genact): A nonsense activity generator.
* Generation
* (2) [meme](https://github.com/nomad-software/meme)
* (5) [text-meme-cli](https://github.com/beatfreaker/text-meme-cli) - Generate text memes.
* (5) [dankcli](https://github.com/sggts04/dankcli) - Add text to meme image templates.
* Games
* (5) [maze_solver_rust](https://github.com/Vlamonster/maze_solver_rust) - Generate, display and solve mazes in an animated way in the terminal.
* Quotes, Messages, Welcomes
* (2) [pyjokes](https://github.com/pyjokes/pyjokes) - One line jokes for programmers (jokes as a service).
* (5) [quote-cli](https://github.com/riyadhalnur/quote-cli) - Get a random quote or the quote of the day in your CLI.
* (2) [fortune-mod](https://github.com/shlomif/fortune-mod) - Shows a random fortune.
* (5) [welcome.sh](https://github.com/G2-Games/welcome.sh) - A nice little script that greets you on every launch, with some helpful (and customizable!) information.
* (6) [fortune](https://github.com/bmc/fortune) - Generates random messages feched from a quotation database.
* Cool Effects
* (5) [no-more-secrets](https://github.com/bartobri/no-more-secrets)
* Educational, Nerd Stuff
* (5) [sha256-animation](https://github.com/in3rsha/sha256-animation)

### Maximalist Set

* (3) [paperbackup](https://github.com/intra2net/paperbackup)
* (5) [pcopy](https://github.com/binwiederhier/pcopy)
   | (5) [gocatgo](https://github.com/vaaleyard/gocatgo)

#### Steganography

* ( ) [unch](https://ithub.com/dwisiswant0/unch) Hides message with invisible Unicode characters
* (3) [stegcloak](https://github.com/kurolabs/stegcloak)
* (3) [steganography](https://github.com/7thSamurai/steganography)

## Drawing, Plotting, Educational Video Creation (Terminal)

* ( ) [Yardanico/asciigraph: Console ascii line graphs in pure Nim](https://github.com/Yardanico/asciigraph)
* (2) [visidata](https://github.com/saulpw/visidata)
* ( ) [lowcharts](https://github.com/juan-leon/lowcharts)
* ( ) [datadash](https://github.com/keithknott26/datadash)
* ( ) [rare](https://github.com/zix99/rare)
* ( ) [gnuplot](http://www.gnuplot.info/)
* ( ) [spark](https://github.com/holman/spark)
   | ( ) [sprak.fish](https://github.com/jorgebucaran/spark.fish)
   | ( ) [sparkly-cli](https://github.com/sindresorhus/sparkly-cli)
* ( ) [blessed-terminal](https://github.com/georgi-l95/blessed-terminal)
   | ( ) [blessed-contrib](https://github.com/dzxt/blessed-contrib)
* ( ) [graphviz](https://graphviz.org/)
* ( ) [plotext](https://github.com/piccolomo/plotext)
* ( ) [plotille](https://github.com/tammoippen/plotille)
* ( ) [drawpyo](https://github.com/MerrimanInd/drawpyo)

## Finance

* ( ) [cointop](https://github.com/miguelmota/cointop)
* ( ) [CurrencyConv](https://github.com/keshavbhatt/CurrencyConv)

## Code Analysis / Refactoring / Formatting Tools

* ( ) [Sourcegraph](https://sourcegraph.com/search) → Cody 
* ( ) [tokei](https://github.com/XAMPPRocky/tokei)- code summarizer 
* ( ) → compare [cloc](https://github.com/AlDanial/cloc) - Count Lines of Code  compare with tokei 
* ( ) → compare [scc](https://github.com/boyter/scc) - Sloc, Cloc and Code: scc is a very fast accurate code counter with complexity calculations and COCOMO estimates written in pure Go 
* ( ) [ripsecrets](https://github.com/sirwart/ripsecrets) - A command-line tool to prevent committing secret keys into your source code 
* ( )[fastmod](https://github.com/facebookincubator/fastmod) - A tool to assist you with large-scale codebase refactors, and it supports most of codemod's options. It is focused on improving the use case "I want to use interactive mode to make sure my regex is correct, and then I want to apply the regex everywhere". 
* ( ) [Codemod](Codemod - probably not, just compare with fastmod)
* ( ) [tag](https://github.com/aykamko/tag) - Instantly jump to your ag matches. Abandoned; fork and update and package for Nix 󱐋󱐋󱐋
* ( ) [Gource](https://github.com/acaudwell/Gource) 
* ( ) [on YouTube](https://www.youtube.com/@gourceryt/featured)
* ( ) [lexis](https://github.com/k4m4/lexis) - word counting made easy. Retrieve the number of words in a string or stdin.
* ( ) [cppcheck](https://github.com/danmar/cppcheck/) - Static analysis tool for C/C++ code providing unique code analysis to detect bugs and focuses on detecting undefined behaviour and dangerous coding constructs.
* ( ) [restructor](https://strlen.com/restructor/) - probably not usable, but very interesting conceptually
* ( ) [cspell](https://cspell.org/)
* ( ) [Frama-C](https://git.frama-c.com/pub/frama-c/) - Open-source extensible and collaborative platform dedicated to source-code analysis of C software. Frama-C can assist from the navigation through unfamiliar projects up to the certification of critical software. (OCAML) - experimental C++ support
* Platforms
* ( ) [Codecov](https://codecov.io/) - Continuous Code Coverage
* ( ) [Deepsource](https://deepsource.com/)* the code health platform
* ( ) [Sonarqube](https://github.com/SonarSource/sonarqube) - Put your technical debt under control

## Debugging

* ( ) [Valgrind](http://valgrind.org/) - Valgrind is a GPL’d system for debugging and profiling Linux programs.
* ( ) [gdb-dashboard](https://github.com/cyrus-and/gdb-dashboard)- Modular visual interface for GDB.
* ( ) [rr](https://github.com/rr-debugger/rr)Debug the recording, deterministically, as many times as you want. [rr-project.org/](https://rr-project.org/)
* ( ) [rebound](https://github.com/shobrook/rebound)Command-line debugger that instantly fetches Stack Overflow results when you get a compiler error.* fork and update?
* ( ) [trunk](https://trunk.io/pricing)

## Syntax Highlighting

* ( ) [Welcome! — Pygments](https://pygments.org/) (Python)
* ( ) [gitlab.com/saalen/highlight](https://gitlab.com/saalen/highlight)  [andre-simon.de/doku/highlight/highlight.php](http://www.andre-simon.de/doku/highlight/highlight.php) (C++)
* ( ) [chroma](https://github.com/alecthomas/chroma)(Go)
* ( ) [highlightjs.org/](https://highlightjs.org/) (JavaScript)
* ( ) [syntect](https://github.com/trishume/syntect)(Rust)

## Logs

* ( ) [multitail](https://github.com/folkertvanheusden/multitail) - A command to open multiple log files in a single terminal window and monitor them in real-time.
* ( ) [logdissect/](https://github.com/dogoncouch/logdissect/) - CLI utility and Python API for analyzing log files and other data. ([MIT](https://github.com/dogoncouch/logdissect/blob/master/LICENSE)) - fork, update, and extend!
* ( ) [lnav](https://github.com/tstack/lnav)- [The Logfile Navigator](https://github.com/tstack/lnav) - An advanced and colorful log file viewer with TUI interface.

## Code Modeling and Visualization

* ( ) [Graphviz](https://graphviz.org/)
* ( ) [rawgraphs.io/](https://www.rawgraphs.io/)
* ( ) [thebjorn/pydeps](https://github.com/thebjorn/pydeps)
* ( ) [PlantUML](https://sourceforge.net/p/plantuml/code/HEAD/tree/tags/plantuml-1.2023.2/) [sourceforge.net/projects/plantuml/](https://sourceforge.net/projects/plantuml/)
* ( ) [mermaid](https://github.com/mermaid-js/mermaid) [site](http://mermaid.js.org/)
* ( ) [umlet/umlet](https://github.com/umlet/umlet)
* ( ) [invent.kde.org/sdk/umbrello](https://invent.kde.org/sdk/umbrello)  [apps.kde.org/umbrello/](https://apps.kde.org/umbrello/)
* ( ) [Gaphor](https://gaphor.org/) - A simple and fast software and systems modeling tool. [gaphor.org/en/](https://gaphor.org/en/)
* ( ) [ModelioOpenSource/Modelio](https://github.com/ModelioOpenSource/Modelio)

## Cleanup and Organizing (Terminal)

* (2) [xdg-ninja](...) (Haskell!) [cleaning up $HOME](https://www.youtube.com/watch?v%3DjK7xIVn-yI8%26t%3D4s) → use xdg-ninja, also create a new home directory
   | ( ) [doron-cohen/antidot](https://github.com/doron-cohen/antidot) clean up HOME
   | ( ) [rmlint](https://rmlint.readthedocs.io/)
* (2) [organize-rt](https://gitlab.com/simonsan/organize-rt)
   | ( ) [organize-cli](https://github.com/ManrajGrover/organize-cli)
* (5.5) [classifier](https://github.com/bhrigu123/classifier)
   |  (5.5) [organizer](https://gitlab.gnome.org/aviwad/organizer)
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

## Testing

* (5) [squ](https://github.com/opensibyl/squ) 
* (5)  [pvcheck](https://github.com/claudio-unipv/pvcheck) 
* (3)  [cucumber](https://cucumber.io/docs), [gherkin](https://cucumber.io/docs/gherkin/) 

## Timers and Clocks

### Pomodoro CLI

* ( ) [simple script](https://gist.github.com/bashbunni/3880e4194e3f800c4c494de286ebc1d7) - [My CLI Pomodoro is Better Than Yours](https://youtu.be/GfQjJBtO-8Y)
* ( ) [pomo](https://github.com/Prayag2/pomo) - [A simple pomodoro timer written in Bash.](https://github.com/Prayag2/pomo)
* ( ) [pomo](https://github.com/sayanarijit/pomo)
* ( ) [openpomodoro-cli](https://github.com/open-pomodoro/openpomodoro-cli)
* ( ) [pomodoro](https://github.com/SebStrug/pomodoro)
* ( ) [pomo](https://github.com/kevinschoon/pomo)

### Sleep Management

* ( ) [Sandman-Lite](https://github.com/alexanderepstein/Sandman-Lite)

### Timer

* ( ) [timer-cli](https://github.com/1Blademaster/timer-cli)
* ( ) [cli-stopwatch](https://github.com/clyde80/cli-stopwatch)
* ( ) [clock-cli-rs](https://github.com/TianyiShi2001/clock-cli-rs)

### Clock

-> see "To Work On"

* (2) [tock](https://github.com/nwtnni/tock)

#### Special Clock

* (2) [tz](https://github.com/oz/tz)

### Binary / Hex

* (2.5) [binary-clock](https://github.com/tom-on-the-internet/binary-clock)
   |    (2.5) [Binary Clock](https://github.com/tom-on-the-internet/binary-clock) - Displays a clock where numbers are represented with blue and gray dots with binary encoding.

## News

* (2) [getnews.tech](https://github.com/omgimanerd/getnews.tech) (via [newsapi](https://newsapi.org/))

## Maps

* (2.5) [mercator](https://github.com/mrusme/mercator) OpenStreetMap but as terminal user interface (TUI) program.
   | (2.5) [mapscii](https://github.com/rastapasta/mapscii)
* (5) [osmf](https://github.com/codesoap/osmf) OpenStreetMap find - A simple command line tool to explore OSM data.
* (5) [gdir](https://github.com/pafoster/gdir) A command line tool which queries Google Directions. The tool displays results as human-readable text.
* (5) [iponmap](https://github.com/nogizhopaboroda/iponmap) Draw point on world map using ip address
* (2) [whereami](https://github.com/rafaelrinaldi/whereami) Get your geolocation information from the CLI.

## Learning

* ( ) [vocage](https://github.com/proycon/vocage)
* ( ) [pockyt](https://github.com/arvindch/pockyt)
* ( ) [speedread](https://github.com/pasky/speedread)
* ( ) [speed_read](https://github.com/sunsations/speed_read)
* ( ) [medium-cli](https://github.com/djadmin/medium-cli)
* ( ) [greedy](https://git.sr.ht/~skuzzymiglet/greedy)
* ( ) [redqu](https://github.com/port19x/redqu)

## Emoji

* ( ) [oji](https://github.com/xxczaki/oji) - Interactive text emoji creator.
* ( ) [emojify](https://github.com/mrowa44/emojify) Emoji on the command line
* ( ) [gitmoji-cli](https://github.com/carloscuesta/gitmoji-cli) - Use emoji in commit messages.
* ( ) [gitmoji-changelog](https://github.com/frinyvonnick/gitmoji-changelog) - Generate gitmoji changelogs.
* ( ) [emoj](https://github.com/sindresorhus/emoj) - Find relevant emoji from text on the command-line.
* ( ) [emoji-finder](https://github.com/dematerializer/emoji-finder) - Quickly find and copy emoji to the clipboard via the command-line.

## Ascii

* ( ) [see also figlet](http://www.figlet.org/)
* ( ) [kakikun](https://github.com/file-acomplaint/kakikun)
* ( ) [Aewan](https://sourceforge.net/projects/aewan/)
* ( ) [jp2a](https://sourceforge.net/projects/jp2a/)
* ( ) [artem](https://github.com/FineFindus/artem)
* ( ) [asciiville](https://asciiville.dev/)
* ( ) [limoji](https://github.com/GEROGIANNIS/Limoji)
* ( ) [Braille-ASCII-Art](https://github.com/LachlanArthur/Braille-ASCII-Art)
* ( ) [braille-ascii-art](https://github.com/koraykzly/braille-ascii-art)

## Translation and Dictionaries

* ( ) [gdict](https://github.com/Lodobo/gdict)
* ( ) [rdict](https://github.com/Lodobo/rdict)
* ( ) [trino](https://github.com/eneserdogan/trino) - Quick and easy translation of words and phrases entered in the command line.
* ( ) [fanyi](https://github.com/afc163/fanyi) - Translate English to Chinese in terminal
* ( ) [translate-shell](https://github.com/soimort/translate-shell) - Command-line translator using Google Translate, Bing Translator, Yandex.Translate, etc.
* ( ) [GTT](https://github.com/eeeXun/GTT) - A TUI interface to bring Google Translation in the terminal.
* ( ) [cambd-cli](https://github.com/rocktimsaikia/cambd-cli) - A CLI tool to automate the process to access the Cambridge dictionary.
* ( ) [translate-shell](https://github.com/soimort/translate-shell) - Command-line translator using Google Translate or other online services.
* ( ) [trino](https://github.com/eneserdogan/trino) - Translation of words and phrases.
* ( ) [glate](https://github.com/keshavbhatt/glate) - translator and TTS

## Misc

* (5) [pipe_exec](https://github.com/koraa/pipe_exec)
* ( ) [motioneye-project/motioneyeos: A Video Surveillance OS For Single-board Computers](https://github.com/motioneye-project/motioneyeos)
* ( ) [lnbits/lnbits: LNbits, free and open-source Lightning wallet and accounts system.](https://github.com/lnbits/lnbits)
* ( ) [inferno](https://github.com/jonhoo/inferno)
* ( ) [flamegraphs toolkit](https://www.brendangregg.com/flamegraphs.html)

## CLI

### Fetch

* ( ) [fet.sh](https://github.com/eepykate/fet.sh)
* ( ) [13-CF/afetch](https://github.com/13-CF/afetch)
* ( ) [balena-io/balena-cli](https://github.com/balena-io/balena-cli)
* ( ) [bunnyfetch](https://github.com/Rosettea/bunnyfetch)
* ( ) [fetch.scm](https://github.com/KikyTokamuro/fetch.scm)
* ( ) [git-ignore](https://github.com/sondr3/git-ignore)
* ( ) [blog.thms.uk/fedifetcher](https://blog.thms.uk/fedifetcher)
* ( ) [nitch](https://github.com/ssleert/nitch)
* ( ) [yafetch](https://github.com/kira64xyz/yafetch)
* ( ) [nitch](https://github.com/ssleert/nitch) incredibly fast system fetch written in nim
* ( ) [onefetch](https://github.com/o2sh/onefetch)
* ( ) [Terminal color scheme fetching program called colorfetch. : r/shell](https://www.reddit.com/r/shell/comments/nn1kqn/terminal_color_scheme_fetching_program_called/)
* ( ) [Reddit - [OC] I rewrote pfetch in Rust](https://www.reddit.com/r/unixporn/comments/113tw9u/oc_i_rewrote_pfetch_in_rust/)

### Tree

* (2) [tre](https://github.com/dduan/tre)
   | (6) [alder - minimal implementation of tree - LinuxLinks](https://www.linuxlinks.com/alder-minimal-implementation-tree/) -> for RosettaProjects
* (2) [Excellent Utilities: broot - next gen tree explorer and customizable launcher - LinuxLinks](https://www.linuxlinks.com/excellent-utilities-broot-next-gen-tree-explorer/)
   | (6) [ictree - interactive tree - LinuxLinks](https://www.linuxlinks.com/ictree-interactive-tree/)

### Timer, Pomodoro

Both good for RosettaProjects.

* (2) [Tomato.C](https://github.com/gabrielzschmitz/Tomato.C)
* (2) [monadoro](https://gitlab.com/kocielnik/monadoro)

### Terminal Emulators2

* -> drop-down terminal
* ( ) [ghostty](https://mitchellh.com/ghostty)
* ( ) [TerminalOne](https://github.com/atinylittleshell/TerminalOne)
* ( ) [urxvt - Google Search](https://www.google.com/search?client=firefox-b-d&q=urxvt)
* ( ) [waveterm](https://www.waveterm.dev/)
* ( ) [rio](https://github.com/raphamorim/rio)

#### Resizing

* ( ) [term-resizer.sh](https://github.com/grappas/dotfiles/blob/main/misc%252Fscripts%252Fterm-resizer.sh)

### Multiplexers

* {term multi} [...](https://zellij.dev/news/new-plugin-system/)
* {term multi} [...](https://zellij.dev/screencasts/)
* {term multi} [A Better Tmux Experience | Tmux Configuration & Essential Plugins - YouTube](https://www.youtube.com/watch?v%3DEpTzb-pyRTA)
* {term multi} [tmux-zoxide-session](https://github.com/jeffnguyen695/tmux-zoxide-session)
* {term multi} [zellij-plugin](https://github.com/topics/zellij-plugin)
* {term multip} [...](https://crates.io/crates/zellij-tile-utils/versions)

### Wezterm

* ( ) [...](https://www.reddit.com/r/unixporn/s/fvvOslyUxM) kitty to wezterm
* ( ) [Colors & Appearance - Wez's Terminal Emulator](https://wezfurlong.org/wezterm/config/appearance.html%23defining-your-own-colors)
* ( ) [Configuring wezterm (Wez's Terminal Emulator) | Sharp Writing](https://www.sharpwriting.net/project/configuring-wezterm/)
* ( ) [Get the Most Out of Your Terminal: A Comprehensive Guide to WezTerm Configuration | HackerNoon](https://hackernoon.com/get-the-most-out-of-your-terminal-a-comprehensive-guide-to-wezterm-configuration)
* ( ) [How to configure workspaces and tabs in wezterm : r/wezterm](https://www.reddit.com/r/wezterm/comments/12tub66/how_to_configure_workspaces_and_tabs_in_wezterm/)

## Secrets Management

* (2) [getsops/sops: Simple and flexible tool for managing secrets](https://github.com/getsops/sops) [A Comprehensive Guide to SOPS: Managing Your Secrets Like A Visionary, Not a Functionary](https://blog.gitguardian.com/a-comprehensive-guide-to-sops/)
* ( ) [age](https://github.com/FiloSottile/age)

## Scripts

* ( ) [eikenb/terminal-colors: Utility to test color capabilities of terminal.](https://github.com/eikenb/terminal-colors)

## Noise

* ( ) [Ambient Noise](https://github.com/costales/anoise) - An ambient noise generator for Linux.
* ( ) [Blanket](https://apps.gnome.org/app/com.rafaelmardojai.Blanket/) - Improve focus and increase your productivity by listening to different sounds.

## Sleep and Eyes

* ( ) [Sandman-Lite](https://github.com/alexanderepstein/Sandman-Lite)(preferred to[Sandman)](https://github.com/alexanderepstein/Sandman))- [Sandman](https://alexanderepstein.github.io/Sandman/) - Lets you know when to turn off the computer and sleep based on calculated sleep cycles. ([MIT](https://github.com/alexanderepstein/Sandman/blob/master/License.md)) → [good source](https://sleepopolis.com/calculators/sleep/)
* (2) [fluxgui](https://github.com/xflux-gui/fluxgui) ← uses[redshift](https://github.com/jonls/redshift) - light adjuster
* ( ) [Redshift](http://jonls.dk/redshift/) - Redshift adjusts the color temperature of your screen according to your surroundings. This may help your eyes hurt less if you are working in front of the screen at night.
* ( ) [f.lux](https://justgetflux.com/linux.html) - A program that reddens your display to help you sleep better.
* ( ) [Workrave](http://www.workrave.org/) - A program that assists in the recovery and prevention of Repetitive Strain Injury (RSI).
