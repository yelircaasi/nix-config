# Nix - To Sort
* https://journal.platonic.systems/nix-flake-architecture-in-practice/
* 
Set up git inside nix container


Next rebuild switch: firefox, ublock origin for firefox and chrome, userscript for all browsers for domain-specific css using pilit stylesheets for wikimedia, github, mdbook, sops-nix secrets, kvantum qt styling, zathura, wezterm keybinds for pane and tab navigation, neovim window and tab navigation <leader>hjkl; neotree open and close keybinds, terminal navigation shortcuts, floating terminal shortcuts, "open file in split" shortcut


Yet Another Nix Playlist - multilingual audio & subtitles, short, single-topic videos, quality visuals



challenge: synchronize languages and features with init.lua

buildNvimHM { lib, pkgs, g, features, languages , ...}

home.packages = [];

include each (language x feature) file in its own self-contained file; combine in default.nix and call lua formatter

include lua-ls config file in each directory to ignore missing (vim) imports

nixmacs - like nixide for emacs -> precompile elisp?

nix-utils - make as flake

nixide - flake, also app and shell outputs

clinix - returns HM and other outputs for CLI dev environment

move nvim out into its own flake, with languages and features declared externally

Makes sense to have the config complete and stable first, then to move it into its own flake and add nix-powered modularized configuration

nixfetch - neofetch for nixos


Why does chromium via nix have a different hover icon?

https://github.com/nix-community/nixos-generators

https://www.reddit.com/r/NixOS/comments/y1xo2u/how_to_create_an_iso_with_my_config_files/?rdt=61989

Look into Nix as a build tool -> Nix vs Just

Try out Nix container -> how much lighter? how minimal can it be? 

Write garbage collection scripts for Nix & home-manager

Read source code:
* poetry2nix
* system-manager
* home-manager
* stylix
* nix-colors
* nixpkgs.lib (esp relevant)
* Nix 

Read docs:
* nix manual
* nixpkgs manual
* nixos manual
* home-manager docs

How to use Nix to modify and act on other Nix file? (wrap, override, etc)

good discussion: https://www.reddit.com/r/NixOS/comments/1bzvaof/nixos_alternatives

write nixfetch: special fetch for NixOS, write in Haskell, use SVG image

just use Greetd as greeter

Write script to view entire nix config as one big nix/dhall/json file -> nix eval --expr, etc.



* Informal intro to the Nix language, derivations and nixpkgs - YouTube https://www.youtube.com/watch?v=9DJtHIpdp0Y&t=132s&pp=2AGEAZACAcoFFm5peCBsYW5ndWFnZSB0dXRvcmlhbCA%3D
* fetch credentials provider [](https://github.com/NixOS/nix/issues/8635)
* [This is how I roll](https://linuxmatters.sh/19/) snaps on nixos
* [https://www.reddit.com/r/linuxmasterrace/s/GX6bM8wS97](https://www.reddit.com/r/linuxmasterrace/s/GX6bM8wS97) packaging request


* [ ]  pin all flake inputs: [](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html%23flake-references)
    * [https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html#flake-references](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html%23flake-references)
* [ ] [](https://github.com/bbigras/nix-config)
    * [https://github.com/bbigras/nix-config](https://github.com/bbigras/nix-config)- [ ]  declarative installation of docker images? 
* [](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dnixos%2Bdeclare%2Bdocker%2Bimages%2Bin%2Bconfig)
    * [search](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dnixos%2Bdeclare%2Bdocker%2Bimages%2Bin%2Bconfig)
* reading roadmap
* [ ]  my own lib
* [ ] [](https://zero-to-nix.com/concepts)
    * [https://zero-to-nix.com/concepts](https://zero-to-nix.com/concepts)
* [ ] [](https://zero-to-nix.com/start)
    * [https://zero-to-nix.com/start](https://zero-to-nix.com/start)
* [ ]  poetry2nix docs
* [ ]  poetry2nix source code
* [ ]  stylix
* [ ]  nix-colors
* [ ]  home-manager docs
* [ ]  home-manager code
* [ ] [](https://nix.dev/tutorials/first-steps/)
    * [https://nix.dev/tutorials/first-steps/](https://nix.dev/tutorials/first-steps/)
* [ ] [](https://nix.dev/concepts/%23concepts)
    * [https://nix.dev/concepts/#concepts](https://nix.dev/concepts/%23concepts)
* [ ] [](https://nix.dev/tutorials/%23tutorials)
    * [https://nix.dev/tutorials/#tutorials](https://nix.dev/tutorials/%23tutorials)
* [ ] [](https://nix.dev/guides/recipes/python-environment)
    * [https://nix.dev/guides/recipes/python-environment](https://nix.dev/guides/recipes/python-environment)
* [ ] [](https://nix.dev/manual/nix/2.19/)
    * [https://nix.dev/manual/nix/2.19/](https://nix.dev/manual/nix/2.19/)
* [ ] [](https://nixos.org/manual/nixos/stable/)
    * [https://nixos.org/manual/nixos/stable/](https://nixos.org/manual/nixos/stable/)
* [ ] [](https://nixos.org/manual/nixpkgs/stable/)
    * [https://nixos.org/manual/nixpkgs/stable/](https://nixos.org/manual/nixpkgs/stable/)
* [ ]  nixCats source code
* [ ]  nix language source code implementation
* [ ] [](https://nixified.ai/)
    * [https://nixified.ai/](https://nixified.ai/) site and docs
* [ ] [](https://nixified.ai/)
    * [https://nixified.ai/](https://nixified.ai/) implementation

Roadmap
* [x] install Nix
* [x] try out Nix package manager
* [x] install NixOS
* [x] configure NixOS with flakes and install basic packages
* [x] install Hyprland and get it working
* [x] use Home Manager to create the first config
* [x] try out home manager in a docker container on Hank to get a feel for it
* [x] write poetry2nixpkgs → found a way to use overrides instead
* [ ] create poetry2nix-playground repo to demo problem with editable installation
* [ ] create post on Nix discourse asking for help with poetry2nix editable installs
* [ ] back up current configs on Hank
* [ ] add configs to home-manager config:


* .conf
* from Betsy
* [ ] .gsd-keyboard.settings-ported
* [ ] i3
* [ ] make sway from i3
* [ ] taskwarrior
* [ ] cosmic
* [ ] dconf
* [ ] environment.d
* [ ] git → from both
* [ ] ?- [ ] epiphany
* [ ] evolution
* [ ] featherpad
* [ ] geany
* [ ] gnome-initial-setup-done
* [ ] gnome-session
* [ ] goa-1.0
* [ ] lite-xl
* [ ] nautilus
* [ ] Notepadqq
* [ ] VSCodium
* [ ] gtk-3.0
* [ ] gtk-4.0
* [ ] home-manager → remove?- [ ] hypr
* [ ] ibus
* [ ] kitty
* [ ] lapce-stable
* [ ] lazygit
* [ ] mimeapps.list
* [ ] monitors.xml
* [ ] monitors.xml~- [ ] neofetch
* [ ] nushell
* [ ] nvim
* [ ] pulse
* [ ] QtProject.conf
* [ ] qutebrowser
* [ ] user-dirs.dirs
* [ ] user-dirs.locale
* [ ] wezterm
* [ ] xonsh
* [ ] zsh
* from Hank
* [ ] .jira
* [ ] Code
* [ ] Google
* [ ] Min
* [ ] 'Raspberry Pi'- [ ] TabNine
* [ ] Thunar
* [ ] TreeSheets.conf
* [ ] Vieb
* [ ] autostart
* [ ] azure-datalake-store
* [ ] balena-etcher
* [ ] chromium
* [ ] clavix
* [ ] coc
* [ ] configstore
* [ ] dconf
* [ ] enchant
* [ ] evince
* [ ] exercism
* [ ] fontconfig
* [ ] geany
* [ ] gedit
* [ ] github-copilot
* [ ] glib-2.0
* [ ] go
* [ ] gtk-2.0
* [ ] gtk-3.0
* [ ] htop
* [ ] i3
* [ ] iterative
* [ ] kanata
* [ ] kickstart.nvim
* [ ] kitty
* [ ] lazygit
* [ ] lazyvim_backup
* [ ] luakit
* [ ] matplotlib
* [ ] menus
* [ ] nebokrai
* [ ] neofetch
* [ ] nitrogen
* [ ] nix
* [ ] nixpkgs
* [ ] nvim-*- [ ] pavucontrol.ini
* [ ] picom
* [ ] pictrix
* [ ] procps
* [ ] pulse
* [ ] pypoetry
* [ ] qalculate
* [ ] qutebrowser
* [ ] spacefm
* [ ] starship.toml
* [ ] systemd
* [ ] tree-sitter
* [ ] ubports-installer
* [ ] user-dirs.dirs
* [ ] user-dirs.locale
* [ ] vlc
* [ ] wezterm
* [ ] xfe
* [ ] xonsh
* [ ] zsh
* [ ]
* $HOME* - from Betsy* - 
* [ ] .bash_history    * [ ] .emacs.d    * [ ] .gitconfig    * [ ] .gnupg    * [ ] .ipython    * [ ] .mozilla    * [ ] .nix-defexpr    * [ ] .nix-profile    * [ ] .pki    * [ ] .python_history    * [ ] .ssh    * [ ] .textadept    * [ ] .viminfo    * [ ] .vscode-oss    * [ ] .wget-hsts    * [ ] .zcompdump    * [ ] .zshenv    * [ ] .zshrc* - from Hank    * [ ] .EpsonPrinterUtility    * [ ] .SpaceVim.d    * [ ] .Xauthority    * [ ] .Xresources    * [ ] .android    * [ ] .azure    * [ ] .bash_history    * [ ] .bash_logout    * [ ] .bashrc    * [ ] .cargo    * [ ] .conda    * [ ] .condarc    * [ ] .config    * [ ] .dmrc    * [ ] .docker    * [ ] .docker-mnt    * [ ] .git-credentials    * [ ] .gitconfig    * [ ] .gnome    * [ ] .gnupg    * [ ] .gphoto    * [ ] .gradle    * [ ] .gsutil    * [ ] .gtk-bookmarks    * [ ] .gtkrc-2.0    * [ ] .icons    * [ ] .ipython    * [ ] .java    * [ ] .jupyter    * [ ] .keras    * [ ] .lesshst    * [ ] .local    * [ ] .m2    * [ ] .mozilla    * [ ] .nix-channels → remove    * [ ] .nix-defexpr    * [ ] .nix-profile    * [ ] .npm → remove?    * [ ] .nv    * [ ] .nvm    * [ ] .pki    * [ ] .prodigy    * [ ] .profile    * [ ] .pyenv → remove    * [ ] .python-version    * [ ] .python_history    * [ ] .rustup    * [ ] .screenlayout    * [ ] .shiv    * [ ] .shutter    * [ ] .ssh    * [ ] .sudo_as_admin_successful    * [ ] .task    * [ ] .taskrc    * [ ] .thumbnails    * [ ] .undo-nvim    * [ ] .var    * [ ] .vim_backups    * [ ] .viminfo    * [ ] .vscode    * [ ] .vscode-cli    * [ ] .wegorc    * [ ] .wget-hsts    * [ ] .xinitrc    * [ ] .xonshrc    * [ ] .xsession-errors    * [ ] .xsession-errors.old    * [ ] .zcompdump    * [ ] .zshenv    * [ ] .zshrc    * [ ] Android    * [ ] AndroidStudioProjects    * [ ] Desktop    * [ ] Documents    * [ ] Downloads    * [ ] 'Droid Sans Mono for Powerline Nerd Font Complete.otf'    * [ ] Knecon    * [ ] Learning    * [ ] Media    * [ ] Miniforge3-Linux-x86_64.sh    * [ ] Music    * [ ] Pictures    * [ ] Public    * [ ] Templates    * [ ] Temporary    * [ ] Videos    * [ ] bookmarks.html    * [ ] dockerfiles    * [ ] dockermounts    * [ ] gensim-data    * [ ] go    * [ ] miniconda3    * [ ] miniforge3    * [ ] nixos-config    * [ ] node_modules    * [ ] notes    * [ ] pg    * [ ] pkgs    * [ ] snap    * [ ] treesheets-isaac    * [ ] workspace
* - Top General Resources        - [](https://github.com/nix-community/awesome-nix)
    * [https://github.com/nix-community/awesome-nix](https://github.com/nix-community/awesome-nix)
* [](https://ianthehenry.com/posts/how-to-learn-nix/)        - [https://ianthehenry.com/posts/how-to-learn-nix/](https://ianthehenry.com/posts/how-to-learn-nix/)
* [](https://nixos.org/guides/how-nix-works)        - [https://nixos.org/guides/how-nix-works](https://nixos.org/guides/how-nix-works)
* [](https://mynixos.com/)        - [MyNixOS](https://mynixos.com/)
* [](https://search.nixos.org/packages?channel%3D23.05)        - [https://search.nixos.org/packages?channel=23.05](https://search.nixos.org/packages?channel%3D23.05)
* [](https://edolstra.github.io/pubs/phd-thesis.pdf)        - [https://edolstra.github.io/pubs/phd-thesis.pdf](https://edolstra.github.io/pubs/phd-thesis.pdf)
* [](https://jonathanlorimer.dev/posts/nix-thesis.html)        - [https://jonathanlorimer.dev/posts/nix-thesis.html](https://jonathanlorimer.dev/posts/nix-thesis.html)*     - *** - [](https://search.nixos.org/packages)
    * [NixOS Search - Packages](https://search.nixos.org/packages)
* [](https://ianthehenry.com/posts/how-to-learn-nix/)        - [https://ianthehenry.com/posts/how-to-learn-nix/](https://ianthehenry.com/posts/how-to-learn-nix/)
* [](https://www.reddit.com/r/NixOS/)        - [https://www.reddit.com/r/NixOS/](https://www.reddit.com/r/NixOS/)
* [](https://nixos.org/)        - [https://nixos.org/](https://nixos.org/)
* [](https://nixcloud.io/tour/?id%3Dintroduction/nix)        - [A Tour of Nix](https://nixcloud.io/tour/?id%3Dintroduction/nix)
* [](https://nixos-and-flakes.thiscute.world/introduction/)        - [https://nixos-and-flakes.thiscute.world/introduction/](https://nixos-and-flakes.thiscute.world/introduction/)
* [](https://www.youtube.com/playlist?list%3DPLnlyQqQLJLnJqZzJgcsUfftdGApjdFZPV)        - [Beginner's Guide to Nix](https://www.youtube.com/playlist?list%3DPLnlyQqQLJLnJqZzJgcsUfftdGApjdFZPV)
* [](https://ryantm.github.io/nixpkgs/)        - [https://ryantm.github.io/nixpkgs/](https://ryantm.github.io/nixpkgs/)
* [](https://github.com/mikeroyal/NixOS-Guide)        - [https://github.com/mikeroyal/NixOS-Guide](https://github.com/mikeroyal/NixOS-Guide)
* [](https://zero-to-nix.com/)        - [https://zero-to-nix.com/](https://zero-to-nix.com/)
* [](https://nix.dev/)        - [https://nix.dev/](https://nix.dev/)
* [](https://nixos.org/guides/nix-pills/)
    * [Nix Pills](https://nixos.org/guides/nix-pills/)        - [https://drakerossman.com/blog/practical-nixos-the-book](https://drakerossman.com/blog/practical-nixos-the-book)
* [](https://discourse.nixos.org/)        - [https://discourse.nixos.org/](https://discourse.nixos.org/)
* [](https://mhwombat.codeberg.page/nix-book/)        - [https://mhwombat.codeberg.page/nix-book/](https://mhwombat.codeberg.page/nix-book/)
* [](https://github.com/mhwombat/nix-for-numbskulls)        - [https://github.com/mhwombat/nix-for-numbskulls](https://github.com/mhwombat/nix-for-numbskulls)
* [](https://nixos.org/manual/nix/stable/)        - [Nix Reference Manual](https://nixos.org/manual/nix/stable/)
* [](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/index.html)
    * [Nix tutorial — nix-tutorial documentation](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/index.html)
* [](https://nixos.org/download.html)        - [Download Nix / NixOS](https://nixos.org/download.html)
* [](https://nixos.org/manual/nixos/stable/)        - [https://nixos.org/manual/nixos/stable/](https://nixos.org/manual/nixos/stable/)
* [](https://zero-to-nix.com/)        - [https://zero-to-nix.com/](https://zero-to-nix.com/)
* [](https://github.com/NixOS/nix)        - [NixOS/nix: Nix, the purely functional package manager](https://github.com/NixOS/nix)
* [](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix.html)        - [https://nixos.org/manual/nix/stable/command-ref/new-cli/nix.html](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix.html)
* [](https://nixos.wiki/wiki/Cheatsheet)        - [Cheatsheet - NixOS Wiki](https://nixos.wiki/wiki/Cheatsheet)
* [](https://www.youtube.com/playlist?list%3DPLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs)        - [**Nixology - YouTube](https://www.youtube.com/playlist?list%3DPLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs)
* [](https://www.youtube.com/playlist?list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)        - [NixOS Playlist (Wil T)](https://www.youtube.com/playlist?list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
* [](https://stephank.nl/p/2020-06-01-a-nix-primer-by-a-newcomer.html)        - [Primer on Nix terminology](https://stephank.nl/p/2020-06-01-a-nix-primer-by-a-newcomer.html)
* [](https://book.divnix.com/)        - [https://book.divnix.com/](https://book.divnix.com/)        - [NixOS Wiki](https://nixos.wiki/)
* [](https://www.youtube.com/@NixCon)        - [https://www.youtube.com/@NixCon](https://www.youtube.com/@NixCon)
* [](https://www.youtube.com/playlist?list%3DPL2Ftb1kbp85h9Mp23kykEkPe4As69hH_w)        - [NixCon 2023](https://www.youtube.com/playlist?list%3DPL2Ftb1kbp85h9Mp23kykEkPe4As69hH_w)
* [](https://www.youtube.com/results?search_query%3Dnixcon%2B2023)        - [https://www.youtube.com/results?search_query=nixcon+2023](https://www.youtube.com/results?search_query%3Dnixcon%2B2023)
* [](https://media.ccc.de/c/nixcon2023)        - [https://media.ccc.de/c/nixcon2023](https://media.ccc.de/c/nixcon2023)
* [](https://www.youtube.com/@NixOS-Foundation/playlists)        - [https://www.youtube.com/@NixOS-Foundation/playlists](https://www.youtube.com/@NixOS-Foundation/playlists)
* [](https://nixos.org/manual/nixpkgs/stable/)        - [https://nixos.org/manual/nixpkgs/stable/](https://nixos.org/manual/nixpkgs/stable/)
* [](https://github.com/NixOS/nixpkgs/)        - [NixOS/nixpkgs: Nix Packages collection](https://github.com/NixOS/nixpkgs/)
* [](https://jorel.dev/NixOS4Noobs/intro.html)        - [https://jorel.dev/NixOS4Noobs/intro.html](https://jorel.dev/NixOS4Noobs/intro.html)
* [](https://itsfoss.com/nixos-tutorials/)        - [https://itsfoss.com/nixos-tutorials/](https://itsfoss.com/nixos-tutorials/)
* [](https://leanpub.com/nixos-in-production)        - [https://leanpub.com/nixos-in-production](https://leanpub.com/nixos-in-production)        - [nixcon 2022 - YouTube](https://www.youtube.com/results?search_query%3Dnixcon%2B2022)
* [](https://youtube.com/playlist?list%3DPLLvdqTlFTmuKsiyAI8Q9FgHP4mY0ktPVq)        - [Nix Playlist](https://youtube.com/playlist?list%3DPLLvdqTlFTmuKsiyAI8Q9FgHP4mY0ktPVq)
* [](https://programming.dev/c/nix)        - [https://programming.dev/c/nix](https://programming.dev/c/nix)
* - landscape build*     
* [https://blog.ielliott.io/nix-docs/mkDerivation.html#reference-inputs-installPhase](https://blog.ielliott.io/nix-docs/mkDerivation.html#reference-inputs-installPhase)
* [https://github.com/canonical/landscape-client/releases/](https://github.com/canonical/landscape-client/releases/) If there isn't an existing Nix expression, you might need to create one manually. Create a Nix expression (.nix file) for landscape-client by specifying its source, dependencies, and build instructions
* - { lib, buildInputs, fetchurl }: lib.mkDerivation { pname = "landscape-client"; version = "your_version_number"; src = fetchurl { url = "<https://example.com/path/to/landscape-client.tar.gz>"; sha256 = "..."; }; buildInputs = [ /* dependencies, if any */ ]; }
*     Replace "<https://example.com/path/to/landscape-client.tar.gz>" with the actual URL of the landscape-client source tarball.
* - Build and Install: Save the Nix expression to a file (e.g., landscape-client.nix) and build and install it using the following command:
*     nix-env -f landscape-client.nix -i
* - Please note that the availability of landscape-client as a Nix package may change over time, and you should check for updates or changes in the Nix ecosystem or the NixOS community.
*     Always ensure that you trust the source from which you are fetching the software, especially when manually specifying URLs in Nix expressions. Additionally, be aware that my information might be outdated, and it's a good idea to check more recent sources for the latest information on NixOS packages.
* - People / Orgs* - YouTube Channels*     
* [https://www.youtube.com/@jonringer117](https://www.youtube.com/@jonringer117) (Nix channel)*     
* [https://www.tweag.io/](https://www.tweag.io/)
* [Tweag - YouTube](https://www.youtube.com/@tweag) ****     
* [Determinate Systems](https://determinate.systems/)
* [Determinate Systems](https://determinate.systems/#blog)
* [nix.ug | Nix/NixOS User Group Directory](https://nix.ug/) *** → [https://www.chaos-darmstadt.de/hackspace/](https://www.chaos-darmstadt.de/hackspace/)
* [https://primamateria.github.io/blog/](https://primamateria.github.io/blog/)
* [https://github.com/numtide](https://github.com/numtide)
* [https://github.com/nix-community](https://github.com/nix-community)
* [https://matthewrhone.dev/](https://matthewrhone.dev/) *[****Hi, I'm flyx.](https://flyx.org/)
* [https://srid.ca/-/all](https://srid.ca/-/all)
* [https://github.com/kamadorueda](https://github.com/kamadorueda)
* [https://myme.no/](https://myme.no/)
* [https://git.sr.ht/~trevdev/](https://git.sr.ht/~trevdev/)
* [https://drakerossman.com/blog](https://drakerossman.com/blog)
* [https://github.com/the-nix-way](https://github.com/the-nix-way) ******** [nix.ug | Nix/NixOS User Group Directory](https://nix.ug/)
* [https://github.com/cachix](https://github.com/cachix) ***** [https://drakerossman.com/blog](https://drakerossman.com/blog)
* [https://github.com/figsoda](https://github.com/figsoda)
* [https://github.com/nixcloud/](https://github.com/nixcloud/)
* [Chris McDonough](https://www.youtube.com/playlist?list=PLa01scHy0YEnsvjvMNNk-JSvTdL_ivsml)
* [https://garnix.io/](https://garnix.io/)
* - Next Steps*     
* [https://nixos.org/download.html#nixos-iso](https://nixos.org/download.html#nixos-iso) try install on Darlene -> first remember password, then learn about nom-graphical installation for nixos
*     debug nixGL alacritty
*     debug nyxt under nix
*     set up Julia with Nix and make contributions -
*     make Julia Plots work with Nix -
*     install, understand, and use Nix
*     install NixOS on Allison, eventually also on Betsy
* - 1-Shot Reading* - cursor*     
* [https://discourse.nixos.org/t/please-help-fix-ugly-cursor-in-apps-installed-with-nix-env/11797](https://discourse.nixos.org/t/please-help-fix-ugly-cursor-in-apps-installed-with-nix-env/11797)
* [https://github.com/NixOS/nixpkgs/issues/22652](https://github.com/NixOS/nixpkgs/issues/22652)
* [https://github.com/NixOS/nixpkgs/issues/50344](https://github.com/NixOS/nixpkgs/issues/50344)*     
* [https://github.com/CuBeRJAN/nix-problems](https://github.com/CuBeRJAN/nix-problems) ****     
* [Nix Flakes: an Introduction - Xe Iaso - Xe's Blog](https://xeiaso.net/blog/nix-flakes-1-2022-02-21/)
* [Development Roadmap, with Mention of 3.0 and 4.0](https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204)
* [video](https://www.youtube.com/watch?v=h8hWX_aGGDc&t=2900s)
* [An introduction to the Nix ecosystem](https://ghedam.at/15490/so-tell-me-about-nix)
* [https://www.reddit.com/r/voidlinux/comments/z8a727/how_do_you_guys_feel_about_flatpaks/](https://www.reddit.com/r/voidlinux/comments/z8a727/how_do_you_guys_feel_about_flatpaks/)
* [https://nixos.org/manual/nix/stable/command-ref/conf-file.html https://nixos.org/manual/nix/stable/command-ref/conf-file.html](https://nixos.org/manual/nix/stable/command-ref/conf-file.html)
* [https://julianhofer.eu/blog/01-silverblue-nix/#home-manager](https://julianhofer.eu/blog/01-silverblue-nix/#home-manager)
* [Authoring a Plugin — NixOps 2.0 documentation](https://nixops.readthedocs.io/en/latest/plugins/authoring.html)
* [Building a Nix Package | Karim's Blog](https://elatov.github.io/2022/01/building-a-nix-package/)
* [Dev Environment Setup With Nix on MacOS | Mathias Polligkeit](https://www.mathiaspolligkeit.com/dev/exploring-nix-on-macos/)
* [Development environment with nix-shell - NixOS Wiki](https://nixos.wiki/wiki/Development_environment_with_nix-shell)
* [Honestly - how painful was it to learn and get working? And what limitations/nig... | Hacker News](https://news.ycombinator.com/item?id=27369920)
* [(3) How do i install a package from source? : NixOS](https://www.reddit.com/r/NixOS/comments/4enwa2/how_do_i_install_a_package_from_source/)
* [https://github.com/klaeufer/klaeufer/wiki/Nix-package-manager](https://github.com/klaeufer/klaeufer/wiki/Nix-package-manager)
* [https://www.tpflug.me/2019/01/14/haskell-nix-vim/](https://www.tpflug.me/2019/01/14/haskell-nix-vim/)
* [Guix seems interesting but I almost stopped reading when I read "Nix". For all t... | Hacker News](https://news.ycombinator.com/item?id=18908591)
* [Nix package manager · klaeufer/klaeufer Wiki](https://github.com/klaeufer/klaeufer/wiki/Nix-package-manager)
* [ShipIt! Presents: How Shopify Uses Nix](https://shopify.engineering/shipit-presents-how-shopify-uses-nix)
* [Hacking Your First Package — nix-tutorial documentation](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/first-package.html)
* [How I Nix](https://eevie.ro/posts/2022-01-24-how-i-nix.html)
* [My post on Reddit - Installation error on Ubuntu 22.04: ".../libnixstore.so: undefined symbol: sqlite3_error_offset"](https://www.reddit.com/r/Nix/comments/117m3nw/installation_error_on_ubuntu_2204_libnixstoreso/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [How to install package from github? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-install-package-from-github/444)
* [NixOS: build your system on Github actions! • gvolpe's blog](https://gvolpe.com/blog/nixos-binary-cache-ci/)
* [Quick Start - Nix Reference Manual](https://nixos.org/manual/nix/stable/quick-start.html)
* [Nix language basics — nix.dev documentation](https://nix.dev/tutorials/nix-language)
* [nix on ubuntu getting started - Google Search](https://www.google.com/search?client=firefox-b-d&q=nix+on+ubuntu+getting+started)
* [NixOS Package (Install/Uninstall) Guide | Matthew Rhone dot Dev](https://matthewrhone.dev/nixos-package-guide)
* [(3) Arch vs NixOS : linuxquestions](https://www.reddit.com/r/linuxquestions/comments/ryr45s/arch_vs_nixos/)
* [Nix's very own graphical UI - Matej Cotman's Blog](https://blog.matejc.com/blogs/myblog/nixs-very-own-graphical-ui)
* [Nix-ify your environment - Jon Simpson](https://jonsimpson.ca/nix-ify-your-environment/)
* [NixOs native flake deployment with LUKS drive encryption and LVM | by Ion Mudreac | Medium](https://mudrii.medium.com/nixos-native-flake-deployment-with-luks-drive-encryption-and-lvm-b7f3738b71ca)
* [https://nixos.org/manual/nixos/stable/index.html#sec-installation](https://nixos.org/manual/nixos/stable/index.html#sec-installation)
* [security - How secure are the default repositories of Fedora, CentOS, and Debian? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/312410/how-secure-are-the-default-repositories-of-fedora-centos-and-debian)
* [> Main reason for leaving was that Nix package maintainers have to heavily patch... | Hacker News](https://news.ycombinator.com/item?id=25030546)
* [(5) Is NixOS fundamentally a more secure OS? : NixOS](https://www.reddit.com/r/NixOS/comments/xbjei3/is_nixos_fundamentally_a_more_secure_os/)
* [nixpkgs/4.x.nix at nixos-22.11 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-22.11/pkgs/development/libraries/opencv/4.x.nix#L371)
* [nixpkgs/default.nix at release-22.11 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/release-22.11/pkgs/applications/window-managers/awesome/default.nix) Nix as server: [https://news.ycombinator.com/item?id=12250104](https://news.ycombinator.com/item?id=12250104)
* [security - Which linux distro's package repositories are secure and which are not? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/16251/which-linux-distros-package-repositories-are-secure-and-which-are-not?rq=1)
* [(2) Who uses NixOS? Who are you people? (And good-bye) : NixOS](https://www.reddit.com/r/NixOS/comments/rctpu9/who_uses_nixos_who_are_you_people_and_goodbye/)
* [Installation error on Ubuntu 22.04: ".../libnixstore.so: undefined symbol: sqlite3_error_offset" : Nix](https://www.reddit.com/r/Nix/comments/117m3nw/installation_error_on_ubuntu_2204_libnixstoreso/)
* [Filesystem Hierarchy Standard - NixOS4Noobs](https://jorel.dev/NixOS4Noobs/fhs.html)
* [https://www.golem.de/news/open-source-und-einstiegshuerden-macht-nix-2207-166501.html](https://www.golem.de/news/open-source-und-einstiegshuerden-macht-nix-2207-166501.html)
* [https://srid.ca/rust-nix](https://srid.ca/rust-nix)
* [https://gutier.io/post/development-using-rust-with-nix/](https://gutier.io/post/development-using-rust-with-nix/)
* [https://godot-rust.github.io/book/gdnative/recipes/nix-build-system.html](https://godot-rust.github.io/book/gdnative/recipes/nix-build-system.html)
* [https://discourse.nixos.org/t/rust-in-nix-discussion-thread/5092/16](https://discourse.nixos.org/t/rust-in-nix-discussion-thread/5092/16)
* [Building reproducible Development environment | by Ion Mudreac | Medium](https://mudrii.medium.com/building-reproducible-development-environment-b1d4fb51a302)
* [https://blog.ocharles.org.uk/blog/posts/2014-02-04-how-i-develop-with-nixos.html](https://blog.ocharles.org.uk/blog/posts/2014-02-04-how-i-develop-with-nixos.html)
* [https://www.reddit.com/r/Nix/comments/12yg5tj/eli5_how_can_i_upgrade_a_package/](https://www.reddit.com/r/Nix/comments/12yg5tj/eli5_how_can_i_upgrade_a_package/)
* [https://www.linux-community.de/ausgaben/linuxuser/2018/08/nix-neues/](https://www.linux-community.de/ausgaben/linuxuser/2018/08/nix-neues/)
* [Is anyone working on a GUI tool to manage packages? - NixOS Discourse](https://discourse.nixos.org/t/is-anyone-working-on-a-gui-tool-to-manage-packages/5540)
* [https://www.ordinatechnic.com/distribution-specific-guides/NixOS/nixos-configuration](https://www.ordinatechnic.com/distribution-specific-guides/NixOS/nixos-configuration) *** [https://jonathanlorimer.dev/posts/nix-thesis.html](https://jonathanlorimer.dev/posts/nix-thesis.html)
* [https://discourse.nixos.org/t/where-did-you-get-stuck-in-the-nix-ecosystem-tell-me-your-story/31415](https://discourse.nixos.org/t/where-did-you-get-stuck-in-the-nix-ecosystem-tell-me-your-story/31415)
* [Nix and NixOS for DevOps - inovex GmbH](https://www.inovex.de/de/blog/nix-and-nixos-for-devops/)
* [Nix: An idea whose time has come | Hacker News](https://news.ycombinator.com/item?id=30384121)
* [NixOS interesting, but fatal flaws](https://www.youtube.com/watch?v=x6ip1cVVr7E) (good comments)
* [2023-07-31 Documentation team meeting notes #68 - Development / Documentation - NixOS Discourse](https://discourse.nixos.org/t/2023-07-31-documentation-team-meeting-notes-68/31127/2)
* [myme.no - NixOS: The Ultimate Dev Environment?](https://myme.no/posts/2022-01-16-nixos-the-ultimate-dev-environment.html)
* [How to upgrade packages - Guides - NixOS Discourse](https://discourse.nixos.org/t/how-to-upgrade-packages/6151/2)
* [Devenv.sh: Fast and reproducible developer environments using Nix | Hacker News](https://news.ycombinator.com/item?id=33655542)
* [https://christitus.com/nixos-explained/](https://christitus.com/nixos-explained/)
* [https://discourse.nixos.org/search?q=learning](https://discourse.nixos.org/search?q=learning) journey working group meeting notes [https://www.reddit.com/r/NixOS/comments/r8bj9l/aoc_2021_using_nix/](https://www.reddit.com/r/NixOS/comments/r8bj9l/aoc_2021_using_nix/)
* [https://chetanbhasin.com/articles](https://chetanbhasin.com/articles) 2 on Nix [https://www.reddit.com/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/](https://www.reddit.com/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/) ***** [https://www.reddit.com/r/unixporn/comments/15co6ns/hyprland_nixos_catppuccin_for_all_apps/](https://www.reddit.com/r/unixporn/comments/15co6ns/hyprland_nixos_catppuccin_for_all_apps/)
* [https://fluffynukeit.com/installing-essential-software-in-nixos/](https://fluffynukeit.com/installing-essential-software-in-nixos/)
* [1. Get Nix running on your system](https://zero-to-nix.com/start/install)
* [https://chetanbhasin.com/articles/zero-to-nix-everything-i-know-about-nix-nixos](https://chetanbhasin.com/articles/zero-to-nix-everything-i-know-about-nix-nixos)
* [https://gist.github.com/nat-418/d76586da7a5d113ab90578ed56069509](https://gist.github.com/nat-418/d76586da7a5d113ab90578ed56069509)
* [https://itsfoss.com/why-use-nixos/](https://itsfoss.com/why-use-nixos/)
* [https://discourse.nixos.org/t/experimental-does-not-mean-unstable-detsyss-perspective-on-nix-flakes/32703](https://discourse.nixos.org/t/experimental-does-not-mean-unstable-detsyss-perspective-on-nix-flakes/32703)
* [https://www.linux-magazine.com/Issues/2021/248/Nix-and-NixOS](https://www.linux-magazine.com/Issues/2021/248/Nix-and-NixOS)
* [https://discourse.nixos.org/t/introducing-flakehub/32044](https://discourse.nixos.org/t/introducing-flakehub/32044)
* [https://discourse.nixos.org/t/nix-community-survey-2023-results/33124](https://discourse.nixos.org/t/nix-community-survey-2023-results/33124)
* [https://determinate.systems/posts/experimental-does-not-mean-unstable](https://determinate.systems/posts/experimental-does-not-mean-unstable)
* [https://samuel.dionne-riel.com/blog/2023/09/06/flakes-is-an-experiment-that-did-too-much-at-once.html](https://samuel.dionne-riel.com/blog/2023/09/06/flakes-is-an-experiment-that-did-too-much-at-once.html) read: [https://news.ycombinator.com/item?id=32374113](https://news.ycombinator.com/item?id=32374113)
* - Home Manager* - hm and ricing*     
* [https://danth.github.io/stylix/](https://danth.github.io/stylix/) ***     
* [Nix-colors Guide | Declaratively Rice Your Linux Desktop](https://www.youtube.com/watch?v=jO2o0IN0LPE&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D) ***     
* [https://github.com/SenchoPens/base16.nix](https://github.com/SenchoPens/base16.nix) ***     
* [https://github.com/Misterio77/nix-colors](https://github.com/Misterio77/nix-colors) ***     
* [https://rycee.gitlab.io/home-manager/](https://rycee.gitlab.io/home-manager/)
* [https://getfleek.dev/](https://getfleek.dev/)
* [https://github.com/nix-community/home-manager](https://github.com/nix-community/home-manager)
* [Home Manager manual](https://nix-community.github.io/home-manager/)
* [https://mipmip.github.io/home-manager-option-search/](https://mipmip.github.io/home-manager-option-search/) → [https://github.com/mipmip/home-manager-option-search](https://github.com/mipmip/home-manager-option-search) contribute if possible [Original Home Manager announcement](https://rycee.net/posts/2017-07-02-manage-your-home-with-nix.html)
* [Homebrew to Home Manager](https://lucperkins.dev/blog/home-manager/)
* [Your home in Nix](https://hugoreeves.com/posts/2019/nix-home/)
* [https://github.com/protex/home-manager.nvim](https://github.com/protex/home-manager.nvim)
* [Interesting template to get started with Home Manager](https://github.com/ryantm/home-manager-template)
* [Burke Libbey Nixology series (4 videos related to Home Manager)](https://www.youtube.com/watch?v=IUsQt4NRCnc&list=PLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs&index=7)
* [Managing dotfiles with Nix - Alex Pearce](https://alexpearce.me/2021/07/managing-dotfiles-with-nix/)
* [http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix](http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)* - config*     
* [From nix-env to home-manager - YouTube](https://www.youtube.com/watch?v=PmD8Qe8z2sY&t=397s)
* [yrashk/nix-home: Nix Home Manager](https://github.com/yrashk/nix-home)*     
* [From nix-env to home-manager - YouTube](https://www.youtube.com/watch?v=PmD8Qe8z2sY&list=PLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs&index=10)
* [From nix-env to home-manager - YouTube](https://www.youtube.com/watch?v=PmD8Qe8z2sY&list=PLRGI9KQ3_HP_OFRG6R-p4iFgMSK1t5BHs&index=11)
* [Home Manager Manual](https://nix-community.github.io/home-manager/)
* [NixOS Series #5: How to set up home-manager on NixOS?](https://itsfoss.com/home-manager-nixos/)
* [Home Manager - NixOS Wiki](https://nixos.wiki/wiki/Home_Manager)
* [Home Manager - NixOS Wiki](https://nixos.wiki/wiki/Home_Manager#Configuration)
* [Home Manager Manual](https://nix-community.github.io/home-manager/index.html)
* [Home Manager Manual](https://nix-community.github.io/home-manager/) can I use chezmoi together with Home Manager? or just for non-Nix software? [Can't get basic nix home manager setup working - Stack Overflow](https://stackoverflow.com/questions/74665483/cant-get-basic-nix-home-manager-setup-working)
* [https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [Home Manager Manual](https://rycee.gitlab.io/home-manager/index.html)
* [akirak/nix-config: NixOS + home-manager + Emacs configuration flake](https://github.com/akirak/nix-config) *[*danielsiepmann/nixpkgs: My own nixpkgs (for nix + home-manager). Used for nix on my current Ubuntu Setup. Lives inside ~/.config/nixpkgs - nixpkgs - Forgejo of Daniel Siepmann](https://git.daniel-siepmann.de/danielsiepmann/nixpkgs)
* [**nix-home-manager-config/home.nix at main · GustavoPeredo/nix-home-manager-config](https://github.com/GustavoPeredo/nix-home-manager-config/blob/main/home.nix)
* [02 - Channels and Home Manager | Nix Series - YouTube](https://www.youtube.com/watch?v=494zlooD7Tg)
* [davidak/nixos-config: NixOS configurations for server, desktop and mobile systems, including user specific config using Home Manager - nixos-config - Codeberg.org](https://codeberg.org/davidak/nixos-config)
* [Getting Started with home-manager - YouTube](https://www.youtube.com/watch?v=OgUvDXxHlLs)
* [**Declarative management of dotfiles with Nix and Home Manager](https://www.bekk.christmas/post/2021/16/dotfiles-with-nix-and-home-manager)
* [yorodm/nixos-home: My home manager config](https://github.com/yorodm/nixos-home)
* [HugoReeves/nix-home: A Nix Home Manager setup. I've now moved to a new configuration system at hugoreeves/elemental](https://github.com/HugoReeves/nix-home)
* [Daniel Siepmann: Migrating to nix home-manager](https://daniel-siepmann.de/migrating-to-nix-home-manager.html)
* [example of how to configure zsh? · Issue #989 · nix-community/home-manager](https://github.com/nix-community/home-manager/issues/989)
* [FruitieX/home.nix: Home Manager configuration files](https://github.com/FruitieX/home.nix)
* [Flake based Home Manager cannot find home.nix - NixOS Discourse](https://discourse.nixos.org/t/flake-based-home-manager-cannot-find-home-nix/18356)
* [Nix Friday - Home manager - YouTube](https://www.youtube.com/watch?v=2emuPcomQ98)
* [Move keyboard settings to home-manager · edde4a11d5 - localhost - code.dumpstack.io](https://code.dumpstack.io/infra/localhost/commit/edde4a11d52394d87c9bbd61dcfdd172a7ea1de0#diff-dd9078c2c684f713290b9f17802a6d38970bea46)
* [home-manager/zathura.nix at dd99675ee81fef051809bc87d67eb07f5ba022e8 · nix-community/home-manager](https://github.com/nix-community/home-manager/blob/dd99675ee81fef051809bc87d67eb07f5ba022e8/modules/programs/zathura.nix)
* [Nimor111/home.nix: Personal home manager configuration for non-nixos systems](https://github.com/Nimor111/home.nix)
* [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager#words-of-warning)
* [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager)
* [nix home-manager: sign commits using ssh :: Nelson Alex Jeppesen — lowercase haven](https://jeppesen.io/git-commit-sign-nix-home-manager-ssh/)
* [nix-config: My pretty nice NixOS/home-manager configuration](https://sr.ht/~misterio/nix-config/)
* [request: bato module · Issue #3582 · nix-community/home-manager](https://github.com/nix-community/home-manager/issues/3582)
* [NixOS Home Manager for multi-user on NIX flake Installation and Configuration | by Ion Mudreac | Medium](https://mudrii.medium.com/nixos-home-manager-on-native-nix-flake-installation-and-configuration-22d018654f0c)
* [Tutorial: Getting started with Home Manager for Nix | Mattia Gheda](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [akirak/home.nix: My user configuration files written in Nix](https://github.com/akirak/home.nix)
* [flake_inferno/home.nix at 4f3effcf938c564680d8d9b57e5715b77c9d20ad · PmicroTO/flake_inferno](https://github.com/PmicroTO/flake_inferno/blob/4f3effcf938c564680d8d9b57e5715b77c9d20ad/home/home.nix)
* [nixos-home/misc.nix at 7c5410e70f6f6db8d7a0a93a20bfd8be079b25f6 · RaitoBezarius/nixos-home](https://github.com/RaitoBezarius/nixos-home/blob/7c5410e70f6f6db8d7a0a93a20bfd8be079b25f6/misc.nix)
* [**my-nix-config/home.nix at master · SCOTT-HAMILTON/my-nix-config](https://github.com/SCOTT-HAMILTON/my-nix-config/blob/master/home.nix)
* [dotfiles/home.nix at addf391401abc70eb97566f9ccdacbe6e6f96cd4 · bangn/dotfiles](https://github.com/bangn/dotfiles/blob/addf391401abc70eb97566f9ccdacbe6e6f96cd4/nixpkgs/home.nix)
* [Manage your macOS environment with nix-darwin + Home Manager - YouTube](https://www.youtube.com/watch?v=r0Y7s1sRSUY)
* [Setting up Nix on macOS from scratch (incl. dotfiles via home-manager and Nix flakes) - YouTube](https://www.youtube.com/watch?v=1dzgVkgQ5mE)
* [home manager template - YouTube](https://www.youtube.com/watch?v=RnIl_vqxnXk)
* [home-manager/zathura.nix at dd99675ee81fef051809bc87d67eb07f5ba022e8 · nix-community/home-manager](https://github.com/nix-community/home-manager/blob/dd99675ee81fef051809bc87d67eb07f5ba022e8/modules/programs/zathura.nix)
* [Home Manager - Option Search](https://mipmip.github.io/home-manager-option-search/)
* [https://discourse.nixos.org/t/nix-vs-language-package-manager/7099/3](https://discourse.nixos.org/t/nix-vs-language-package-manager/7099/3)
* [NixOS Setup Guide - Configuration / Home-Manager / Flakes](https://youtu.be/AGVXJ-TIv3Y)
* [https://ariya.io/2020/05/nix-package-manager-on-ubuntu-or-debian](https://ariya.io/2020/05/nix-package-manager-on-ubuntu-or-debian)
* [I was WRONG! This is the BEST Package Manager. - YouTube](https://www.youtube.com/watch?v=Ty8C2B910EI)
* [https://github.com/Th0rgal/horus-nix-home](https://github.com/Th0rgal/horus-nix-home)
* [https://github.com/tars0x9752/home](https://github.com/tars0x9752/home) (nix)
* [Appendix A. Configuration Options](https://rycee.gitlab.io/home-manager/options.html)
* [Your home in Nix (dotfile management) - Hugo Reeves](https://hugoreeves.com/posts/2019/nix-home/)
* [https://www.youtube.com/results?search_query=nix+home+manager](https://www.youtube.com/results?search_query=nix+home+manager)
* [https://hhoeflin.github.io/blog/devtools/using_nix/](https://hhoeflin.github.io/blog/devtools/using_nix/)
* [continue from here: Search · home.homeDirectory](https://github.com/search?o=desc&p=10&q=home.homeDirectory&s=indexed&type=Code)
* [Nix home-manager tutorial: Declare your entire home directory](https://www.youtube.com/watch?v=FcC2dzecovw&t=187s&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* [Neovim and Nix home-manager: Supercharge Your Development Environment](https://www.youtube.com/watch?v=YZAnJ0rwREA&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* [Custom NIX Home-Manager Modules For Personalized Setup](https://www.youtube.com/watch?v=EUiXzX7nthY&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* [Nix flakes explained](https://www.youtube.com/watch?v=S3VBi6kHw5c&t=3s&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)
* [Nix Home Manager Tutorial](https://www.youtube.com/watch?v=utoj6annRK0&pp=ygUQbml4IGhvbWUgbWFuYWdlcg%3D%3D)* - Questions / Ideas
*     → need to install themes in Nix as well → how to install themes in Nix? Where are my themes anyway?
*     → use lxappearances (see [here](https://www.reddit.com/r/NixOS/comments/6j9zlj/how_to_set_up_themes_in_nixos/))
*     → [https://search.nixos.org/packages?channel=22.11&from=0&size=50&sort=relevance&type=packages&query=gnome+tweaks](https://search.nixos.org/packages?channel=22.11&from=0&size=50&sort=relevance&type=packages&query=gnome+tweaks)
* - Nix with Specific Software*     
* [https://matrix.ai/blog/developing-with-nix/](https://matrix.ai/blog/developing-with-nix/)
* [Nixos and Hyprland - Best Match Ever](https://www.youtube.com/watch?v=61wGzIv12Ds) ***** [https://nixos.wiki/wiki/Visual_Studio_Code](https://nixos.wiki/wiki/Visual_Studio_Code)
* [CUDA - NixOS Wiki](https://nixos.wiki/wiki/CUDA)
* [Nvidia - NixOS Wiki](https://nixos.wiki/wiki/Nvidia)
* [https://flyx.org/nix-flakes-latex/](https://flyx.org/nix-flakes-latex/)
* [https://nixos.wiki/wiki/TexLive](https://nixos.wiki/wiki/TexLive)
* [https://www.google.com/search?client=firefox-b-d&q=nixOS+on+tuxedo+with+gpu](https://www.google.com/search?client=firefox-b-d&q=nixOS+on+tuxedo+with+gpu)
* [https://discourse.julialang.org/t/build-julia-on-nixos/35129/26](https://discourse.julialang.org/t/build-julia-on-nixos/35129/26)
* [https://discourse.nixos.org/t/get-going-with-julia-on-nixos-in-under-an-hour/12530](https://discourse.nixos.org/t/get-going-with-julia-on-nixos-in-under-an-hour/12530)
* [https://discourse.nixos.org/t/including-latest-julia-in-configure-nix/8895](https://discourse.nixos.org/t/including-latest-julia-in-configure-nix/8895)
* [i3 on nixos → collect links](https://www.google.com/search?q=nixos%20i3wm&ie=utf-8&oe=utf-8&client=firefox-b-m)
* [https://nixos.wiki/wiki/I3](https://nixos.wiki/wiki/I3)
* [https://nixos.wiki/wiki/NixOS_Containers](https://nixos.wiki/wiki/NixOS_Containers)
* [Nixpkgs with OpenGL on non-NixOS - NixOS Wiki](https://nixos.wiki/wiki/Nixpkgs_with_OpenGL_on_non-NixOS)
* [NixOS Search - Packages](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=flutter) flutter [NixOS Search - Packages](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=android) android [nixGL update for nvidia 530 drivers - Google Search](https://www.google.com/search?client=firefox-b-d&q=nixGL+update+for+nvidia+530+drivers)
* [nixGL/all.nix at main · guibou/nixGL · GitHub](https://github.com/guibou/nixGL/blob/main/all.nix)
* [(3) Flutter on NixOS : NixOS](https://www.reddit.com/r/NixOS/comments/oecxb9/flutter_on_nixos/)
* [https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=git+hook](https://search.nixos.org/packages?channel=23.05&from=0&size=50&sort=relevance&type=packages&query=git+hook)
* [Update of nixGL: more robust OpenGL support for intel / nvidia / nvidia (optimus) on non-nixOS distribution. : NixOS](https://www.reddit.com/r/NixOS/comments/7y9t0q/update_of_nixgl_more_robust_opengl_support_for/)
* [https://devenv.sh/pre-commit-hooks/](https://devenv.sh/pre-commit-hooks/)
* [nixpkgs/flutter.nix at cfe96dbfce8bd62dcd4a8ad62cb79dec140b1a62 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/cfe96dbfce8bd62dcd4a8ad62cb79dec140b1a62/pkgs/development/compilers/flutter/flutter.nix#L168)
* [Anyone managed to install flutter >=3.0.0 on NixOS? - Help - NixOS Discourse](https://discourse.nixos.org/t/anyone-managed-to-install-flutter-3-0-0-on-nixos/20542)
* [babariviere/flutter-nix-hello-world: Demonstration on how to use flutter with Nix](https://github.com/babariviere/flutter-nix-hello-world)
* [Building Flutter Web apps on NixOS - Help - NixOS Discourse](https://discourse.nixos.org/t/building-flutter-web-apps-on-nixos/23151)
* [Android development on NixOS - Specific Solutions](https://specific.solutions.limited/projects/hanging-plotter/android-environment.md)
* [Flutter Pros & Cons for Mobile App Development | Nix Solutions Service](https://nixsolutions-service.com/fluttersdk/)
* [(4) Share your Data Science stack in Nixpkgs : NixOS](https://www.reddit.com/r/NixOS/comments/z95r4p/share_your_data_science_stack_in_nixpkgs/) *[**Exploring Nix Flakes: Build LaTeX Documents Reproducibly](https://flyx.org/nix-flakes-latex/)
* [Podman - NixOS Wiki](https://nixos.wiki/wiki/Podman)
* [Docker - NixOS Wiki](https://nixos.wiki/wiki/Docker) android studio install on nixos - Google Search [https://galowicz.de/2023/03/13/quick-vms-with-nixos/](https://galowicz.de/2023/03/13/quick-vms-with-nixos/)
* [nixpkgs/pkgs/test/cuda/cuda-library-samples/generic.nix at 634141959076a8ab69ca2cca0f266852256d79ee · NixOS/nixpkgs · GitHub](https://github.com/NixOS/nixpkgs/blob/634141959076a8ab69ca2cca0f266852256d79ee/pkgs/test/cuda/cuda-library-samples/generic.nix)
* [https://github.com/rgri/tex2nix](https://github.com/rgri/tex2nix)
* - CUDA*     
* [https://github.com/NixOS/nixpkgs/blob/master/pkgs/test/cuda/cuda-library-samples/generic.nix](https://github.com/NixOS/nixpkgs/blob/master/pkgs/test/cuda/cuda-library-samples/generic.nix)
* [https://nixos.wiki/wiki/CUDA](https://nixos.wiki/wiki/CUDA)
* [https://github.com/NixOS/nixpkgs/blob/nixos-23.05/pkgs/development/python-modules/tensorflow/default.nix#L445](https://github.com/NixOS/nixpkgs/blob/nixos-23.05/pkgs/development/python-modules/tensorflow/default.nix#L445)
* [https://app.cachix.org/cache/cuda-maintainers#pull](https://app.cachix.org/cache/cuda-maintainers#pull)
* [https://discourse.nixos.org/t/tensorflow-gpu-keras-in-a-nix-shell/8692](https://discourse.nixos.org/t/tensorflow-gpu-keras-in-a-nix-shell/8692)
* - Podcasts*     
* [Podcast: Into the Nix Ecosystem](https://open.spotify.com/episode/5jPtQqG5LO9zBV1HtWkOgX?si=n4FavA9wTVylWPdajA32qA&nd=1)
* [https://focusonlinux.podigee.io/54-die-fabelhafte-welt-von-nix](https://focusonlinux.podigee.io/54-die-fabelhafte-welt-von-nix) → [https://blog.binaergewitter.de/2017/09/24/binaergewitter-spezial-7-nixos](https://blog.binaergewitter.de/2017/09/24/binaergewitter-spezial-7-nixos)
* - Flakes*     
* [Nix Flakes, Part 1: An introduction and tutorial - Tweag](https://www.tweag.io/blog/2020-05-25-flakes/)
* [https://nixos.wiki/wiki/Flakes https://nixos.wiki/wiki/Flakes](https://nixos.wiki/wiki/Flakes)
* [https://www.tweag.io/blog/2020-05-25-flakes/](https://www.tweag.io/blog/2020-05-25-flakes/)
* - Contrib Ideas
*     CONTRIB - add guake to nixpkgs*     
* [https://github.com/NixOS/nixpkgs/issues/132206](https://github.com/NixOS/nixpkgs/issues/132206) fork and clone nixpkgs and home-manager [Nixpkgs/Contributing - NixOS Wiki](https://nixos.wiki/wiki/Nixpkgs/Contributing)
* [https://nix.dev/](https://nix.dev/) → contribute to? [https://www.google.com/search?client=firefox-b-d&q=This+Month+in+Nix+Docs](https://www.google.com/search?client=firefox-b-d&q=This+Month+in+Nix+Docs) createformatter, TreeSitter syntax highlihter, etc. for .drv files
* - Poetry, Python*     
* [Python - NixOS Wiki](https://nixos.wiki/wiki/Python)
* [https://github.com/FRidh/python-on-nix/blob/master/tutorial.md](https://github.com/FRidh/python-on-nix/blob/master/tutorial.md)
* [https://www.tweag.io/blog/2020-08-12-poetry2nix/](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
* [video](https://www.youtube.com/watch?v=TbIHRHy7_JM&pp=ygUKcG9ldHJ5Mm5peA%3D%3D)
* [walkthrough 1](https://www.youtube.com/watch?v=XfqJulSAPBQ&t=483s&pp=ygUKcG9ldHJ5Mm5peA%3D%3D)
* [walkthrough 2](https://www.youtube.com/watch?v=XzxvChwMRVY&pp=ygUKcG9ldHJ5Mm5peA%3D%3D)
* [https://datakurre.pandala.org/2015/10/nix-for-python-developers.html/](https://datakurre.pandala.org/2015/10/nix-for-python-developers.html/)
* [A sack full of angry snakes: Taming your python dependencies with Nix - YouTube](https://www.youtube.com/watch?v=8ng4v1g5q7s)
* [Using Nix for Repeatable Python Environments | SciPy 2019 | Daniel Wheeler](https://www.youtube.com/watch?app=desktop&v=USDbjmxEZ_I)
* [Help with poetry2nix - Help - NixOS Discourse](https://discourse.nixos.org/t/help-with-poetry2nix/21799)
* [https://toraritte.github.io/poetry-intro/](https://toraritte.github.io/poetry-intro/)
* [https://discourse.nixos.org/t/python-development-with-poetry-with-nix-supplying-python/14736](https://discourse.nixos.org/t/python-development-with-poetry-with-nix-supplying-python/14736)
* [https://hackmd.io/ipS6HU_zR-yqChEvRYlnyw?view](https://hackmd.io/ipS6HU_zR-yqChEvRYlnyw?view) Python Packaging Draft [Developing Python with Poetry & Poetry2nix: Reproducible flexible Python environments - Tweag](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
* [https://nix.dev/recipes/python-environment](https://nix.dev/recipes/python-environment)
* [How does poetry2nix work? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-does-poetry2nix-work/17309)
* [Package and deploy Python apps faster with Poetry and Nix - YouTube](https://www.youtube.com/watch?v=TbIHRHy7_JM)
* [haskell - Need to build specific version of pandoc into poetry2nix nixos flake - Stack Overflow](https://stackoverflow.com/questions/69873273/need-to-build-specific-version-of-pandoc-into-poetry2nix-nixos-flake)
* [Nixpkgs - Python packaging, and development workflow. - YouTube](https://www.youtube.com/watch?v=jXd-hkP4xnU)
* [Using Nix for Repeatable Python Environments | SciPy 2019 | Daniel Wheeler Enthought Enthought • • 2680 visualizaciones hace 3 años](https://www.youtube.com/watch?v=USDbjmxEZ_I)
* [Python - NixOS Wiki](https://nixos.wiki/wiki/Python)
* [How to Learn Nix, Part 39: How to install Python](https://ianthehenry.com/posts/how-to-learn-nix/python3-alpha/)
* [johbo/pip2nix: Freeze pip-installable packages into Nix expressions [maintainer=@datakurre]](https://github.com/johbo/pip2nix)
* [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix)
* [configs-mirror/pyenv.nix at master · stites/configs-mirror](https://github.com/stites/configs-mirror/blob/master/programs/bash/pyenv.nix)
* [Python | nixpkgs https://ryantm.github.io/nixpkgs/languages-frameworks/python/](https://ryantm.github.io/nixpkgs/languages-frameworks/python/) python nix [https://nix-community.github.io/dream2nix/guides/getting-started-python.html](https://nix-community.github.io/dream2nix/guides/getting-started-python.html)
* [https://github.com/FRidh/python-on-nix/blob/master/tutorial.md](https://github.com/FRidh/python-on-nix/blob/master/tutorial.md)
* [pip on NixOS (Reddit)](https://www.reddit.com/r/NixOS/comments/121vv4r/how_do_i_use_pip_on_nixos/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [https://github.com/nix-community/poetry2nix](https://github.com/nix-community/poetry2nix)
* [https://rebeccaskinner.net/posts/2018-05-09-python-and-nix.html](https://rebeccaskinner.net/posts/2018-05-09-python-and-nix.html)
* [Python | nixpkgs](https://ryantm.github.io/nixpkgs/languages-frameworks/python/)
* [Python | nixpkgs](https://ryantm.github.io/nixpkgs/languages-frameworks/python/#python)
* [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix)
* [tfmoraes/invesalius3_nix_develop](https://github.com/tfmoraes/invesalius3_nix_develop)
* [nixpkgs/pkgs/development/python-modules/torch/default.nix at nixos-23.05 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-23.05/pkgs/development/python-modules/torch/default.nix#L414)
* - VSCode*     
* [pietdevries94/nix-vscode-extensions](https://github.com/pietdevries94/nix-vscode-extensions)
* [Search results - Nix | Visual Studio Code , Visual Studio Marketplace](https://marketplace.visualstudio.com/search?term=Nix&target=VSCode&category=All%20categories&sortBy=Relevance)
* [Visual Studio Code - NixOS Wiki](https://nixos.wiki/wiki/Visual_Studio_Code)
* - Nix and Neovim - vixnim, (moshavim, VitaeVim)* - Configs*     
* [Neovim Configuration in Nix: Unpacking Multiple Approaches](https://www.youtube.com/watch?v=i68c6vZkSXc&pp=ygUPbmVvdmltIG9uIG5peG9z)
* [Neovim and Nix home-manager: Supercharge Your Development Environment](https://www.youtube.com/watch?v=YZAnJ0rwREA&pp=ygUPbmVvdmltIG9uIG5peG9z)
* [Configuración completa de Neovim en NixOS (Treesitter, lsp nativo y más)](https://www.youtube.com/watch?v=rUvjkBuKua4&pp=ugMICgJlcxABGAHKBQ9uZW92aW0gb24gbml4b3M%3D)
* [https://github.com/mrcjkb/kickstart-nix.nvim](https://github.com/mrcjkb/kickstart-nix.nvim)*     
* [Manage Neovim plugins (and more!) with Nix and Home Manager](https://gist.github.com/nat-418/d76586da7a5d113ab90578ed56069509#manage-neovim-plugins-and-more-with-nix-and-home-manager)
* [From init.lua to default.nix](https://gist.github.com/nat-418/493d40b807132d2643a7058188bff1ca#from-initlua-to-defaultnix)
* [https://github.com/mrcjkb/kickstart-nix.nvim](https://github.com/mrcjkb/kickstart-nix.nvim) *****
* [https://github.com/pta2002/nixvim](https://github.com/pta2002/nixvim)
* [https://github.com/jamespwilliams/nde](https://github.com/jamespwilliams/nde)
* [gaelle / nix-nvim · GitLab](https://framagit.org/vegaelle/nix-nvim)
* [https://github.com/zachcoyle/neovitality](https://github.com/zachcoyle/neovitality)
* [https://github.com/vi-tality/neovitality](https://github.com/vi-tality/neovitality)
* [https://github.com/jordanisaacs/neovim-flake](https://github.com/jordanisaacs/neovim-flake)
* [https://github.com/zmre/pwnvim](https://github.com/zmre/pwnvim)
* [https://github.com/metis-os/pwnvim](https://github.com/metis-os/pwnvim)
* [https://github.com/badele/vide](https://github.com/badele/vide)
* [https://jordanisaacs.github.io/neovim-flake/](https://jordanisaacs.github.io/neovim-flake/) ***** [https://github.com/jordanisaacs/neovim-flake](https://github.com/jordanisaacs/neovim-flake)
* [https://primamateria.github.io/blog/neovim-nix-update/](https://primamateria.github.io/blog/neovim-nix-update/)
* [https://github.com/syberant/nix-neovim](https://github.com/syberant/nix-neovim)
* [https://www.libhunt.com/r/pwnvim](https://www.libhunt.com/r/pwnvim)
* [https://github.com/miknikif/nvim/tree/main](https://github.com/miknikif/nvim/tree/main)
* [NixVim options](https://pta2002.github.io/nixvim/) - now deleted → [https://web.archive.org/web/20230621122454/https://pta2002.github.io/nixvim](https://web.archive.org/web/20230621122454/https://pta2002.github.io/nixvim)
* [NixVim options](https://pta2002.github.io/nixvim/#_plugins_neo_tree_window_popup_size_width) (plugins) - now deleted → [pta2002/nixvim: Configure Neovim with Nix!](https://github.com/pta2002/nixvim)
* [https://www.reddit.com/r/neovim/comments/15ev1ce/on_nix_install_lsp_in_nix_config_or_modify/](https://www.reddit.com/r/neovim/comments/15ev1ce/on_nix_install_lsp_in_nix_config_or_modify/)
* [https://github.com/badele/nix-homelab/tree/main](https://github.com/badele/nix-homelab/tree/main)
* [https://reddit.com/r/neovim/s/pT20Q8IUDR](https://reddit.com/r/neovim/s/pT20Q8IUDR)
* [https://github.com/badele/nix-homelab/blob/main/nix/home-manager/features/term/editor/nvim/default.nix](https://github.com/badele/nix-homelab/blob/main/nix/home-manager/features/term/editor/nvim/default.nix)
* [https://framagit.org/vegaelle/nix-nvim](https://framagit.org/vegaelle/nix-nvim)
* [https://github.com/badele/vide](https://github.com/badele/vide) ***
* [https://github.com/NixNeovim/NixNeovim](https://github.com/NixNeovim/NixNeovim)
* [https://nixneovim.github.io/NixNeovim/index.html](https://nixneovim.github.io/NixNeovim/index.html)
* [https://github.com/pta2002/nixvim](https://github.com/pta2002/nixvim)
* [https://nix-community.github.io/nixvim/](https://nix-community.github.io/nixvim/)
* [https://github.com/syberant/nix-neovim](https://github.com/syberant/nix-neovim)
* [gaelle / nix-nvim · GitLab](https://framagit.org/vegaelle/nix-nvim)
* [https://nixos.wiki/wiki/Neovim](https://nixos.wiki/wiki/Neovim)
* [https://primamateria.github.io/blog/neovim-nix/](https://primamateria.github.io/blog/neovim-nix/)
* [Full configuration of Neovim on NixOS](https://www.youtube.com/watch?v=rUvjkBuKua4)
* [development environment with nix and nvim - Google Search](https://www.google.com/search?client=firefox-b-d&q=development+environment+with+nix+and+nvim)
* [Haskell, Nix and Vim: Getting started · tpflug](https://www.tpflug.me/2019/01/14/haskell-nix-vim/)
* [https://primamateria.github.io/blog/](https://primamateria.github.io/blog/)
* [Run Neovim and Zig in Nix Development Shell on Windows 11](https://www.youtube.com/watch?v=F4q72mGjYXA)
* [https://github.com/NotAShelf/neovim-flake](https://github.com/NotAShelf/neovim-flake)
* [https://notashelf.github.io/neovim-flake/](https://notashelf.github.io/neovim-flake/)
* [https://github.com/nix-community/neovim-nightly-overlay](https://github.com/nix-community/neovim-nightly-overlay)
* [https://github.com/jamespwilliams/nde](https://github.com/jamespwilliams/nde)
* [https://github.com/andreadev-it/nvim-personal-config](https://github.com/andreadev-it/nvim-personal-config)
* [https://github.com/zachcoyle/vim-plugins-overlay](https://github.com/zachcoyle/vim-plugins-overlay)
* [https://nixos.wiki/wiki/Neovim](https://nixos.wiki/wiki/Neovim)
* [https://discourse.nixos.org/t/installing-a-neovim-ide-layer-the-nix-way/25790](https://discourse.nixos.org/t/installing-a-neovim-ide-layer-the-nix-way/25790)
* [https://github.com/justinlime/dotfiles/tree/main](https://github.com/justinlime/dotfiles/tree/main)
* [https://github.com/justinlime/dotfiles](https://github.com/justinlime/dotfiles)* - Guix*     
* [Guix Playlist](https://www.youtube.com/playlist?app=desktop&list=PLEoMzSkcN8oNxnj7jm5V2ZcGc52002pQU)
* [guix podcast](https://hackerpublicradio.org/eps.php?id=2198)
* [Packages — GNU Guix](https://packages.guix.gnu.org/)
* [https://guix.gnu.org/en/blog/2023/the-full-source-bootstrap-building-from-source-all-the-way-down/](https://guix.gnu.org/en/blog/2023/the-full-source-bootstrap-building-from-source-all-the-way-down/)
* - Tools and Software
*     → [https://github.com/nix-community/awesome-nix](https://github.com/nix-community/awesome-nix)
* [https://github.com/peterldowns/nix-search-cli](https://github.com/peterldowns/nix-search-cli)
* [https://github.com/nmattia/niv](https://github.com/nmattia/niv)
* [https://lazamar.co.uk/nix-versions/](https://lazamar.co.uk/nix-versions/)
* [https://app.cachix.org/](https://app.cachix.org/)
* [https://docs.cachix.org/](https://docs.cachix.org/)
* [https://blog.cachix.org/posts/2022-07-29-cachix-deploy-public-beta/](https://blog.cachix.org/posts/2022-07-29-cachix-deploy-public-beta/)
* - NixOS on Mobile*     
* [https://mobile.nixos.org/](https://mobile.nixos.org/) ‣*     
* [https://github.com/madjar/nox](https://github.com/madjar/nox)
* [https://github.com/nix-community/nix-direnv](https://github.com/nix-community/nix-direnv)
* [https://github.com/nix-community/awesome-nix](https://github.com/nix-community/awesome-nix) ***** [https://github.com/hugoreeves/elemental](https://github.com/hugoreeves/elemental) ***** [https://github.com/DeterminateSystems/nix-installer](https://github.com/DeterminateSystems/nix-installer)
* [https://nixops.readthedocs.io/en/latest/index.html](https://nixops.readthedocs.io/en/latest/index.html)
* [divnix/digga: A flake utility library to craft shell-, home-, and hosts- environments.](https://github.com/divnix/digga)
* [fzakaria/nix-home: A nix home development environment](https://github.com/fzakaria/nix-home)
* [Introduction - Alternative Haskell Infrastructure for Nixpkgs](https://input-output-hk.github.io/haskell.nix/index.html)
* [https://github.com/blitz/tuxedo-nixos](https://github.com/blitz/tuxedo-nixos)
* [https://github.com/DavHau/nix-portable](https://github.com/DavHau/nix-portable)
* [HugoReeves/elemental: Elemental, the component parts of a Nix/OS development system.](https://github.com/hugoreeves/elemental)
* [infra/localhost: Fully reproducible localhost - localhost - code.dumpstack.io](https://code.dumpstack.io/infra/localhost)
* [kamadorueda/alejandra: The Uncompromising Nix Code Formatter](https://github.com/kamadorueda/alejandra)
* [https://github.com/nix-community/nurl](https://github.com/nix-community/nurl)
* [https://github.com/nix-community/nix-init](https://github.com/nix-community/nix-init)
* [https://devenv.sh/](https://devenv.sh/)
* [https://devenv.sh/getting-started/](https://devenv.sh/getting-started/) ******* [nix-community/dream2nix: Automate reproducible packaging for various language ecosystems [maintainer=@DavHau]](https://github.com/nix-community/dream2nix)
* [nix-community/nix-direnv: A fast, persistent use_nix/use_flake implementation for direnv [maintainer=@Mic92 / @bbenne10]](https://github.com/nix-community/nix-direnv)
* [NixOS/nixos-hardware: A collection of NixOS modules covering hardware quirks.](https://github.com/NixOS/nixos-hardware)
* [https://github.com/flyx/Zicross](https://github.com/flyx/Zicross)
* [https://nixery.dev/](https://nixery.dev/)
* [Tvix: We Are Rewriting Nix | Hacker News](https://news.ycombinator.com/item?id=29412971)
* [https://cs.tvl.fyi/depot/-/tree/tvix](https://cs.tvl.fyi/depot/-/tree/tvix)
* [TVL's blog: Tvix: We are rewriting Nix](https://tvl.fyi/blog/rewriting-nix)
* [Introduction | Nixpacks](https://nixpacks.com/docs)
* [Integrated Haskell Platform: Rapid Prototyping mit Haskell und Nix | heise online](https://www.heise.de/hintergrund/Integrated-Haskell-Platform-Rapid-Prototyping-mit-Haskell-und-Nix-7538849.html)
* [https://ihp.digitallyinduced.com/](https://ihp.digitallyinduced.com/)
* [https://nix-community.github.io/dream2nix/](https://nix-community.github.io/dream2nix/)
* [https://nixpacks.com/docs](https://nixpacks.com/docs)
* [https://hub.docker.com/r/nixos/nix](https://hub.docker.com/r/nixos/nix)
* [https://github.com/nix-community/NixNG](https://github.com/nix-community/NixNG)
* [https://github.com/kamadorueda/nixel](https://github.com/kamadorueda/nixel)
* [https://github.com/kamadorueda/b3](https://github.com/kamadorueda/b3) Totos - Nix in Rust [https://github.com/cleverca22/not-os](https://github.com/cleverca22/not-os)
* [https://github.com/haskell-nix/hnix](https://github.com/haskell-nix/hnix)
* [https://github.com/nix-community/nixos-anywhere](https://github.com/nix-community/nixos-anywhere)
* [https://numtide.com/blog/nixos-anywhere-intro/](https://numtide.com/blog/nixos-anywhere-intro/)
* [https://github.com/the-nix-way/dev-templates](https://github.com/the-nix-way/dev-templates) ******* [https://github.com/haskell-nix/hnix](https://github.com/haskell-nix/hnix)
* [nickel-lang/nickel-nix: An experimental Nix toolkit to use nickel as a language for writing nix packages, shells and more.](https://github.com/nickel-lang/nickel-nix)
* [https://github.com/cachix/pre-commit-hooks.nix](https://github.com/cachix/pre-commit-hooks.nix)
* [https://github.com/cachix/cachix](https://github.com/cachix/cachix)
* [https://git.neet.dev/zuckerberg/AoC-2022-Nix](https://git.neet.dev/zuckerberg/AoC-2022-Nix)
* [https://github.com/cachix/pre-commit-hooks.nix](https://github.com/cachix/pre-commit-hooks.nix)
* [https://github.com/divnix/Fractal](https://github.com/divnix/Fractal)
* [https://github.com/ArctarusLimited/xnlib](https://github.com/ArctarusLimited/xnlib)
* [https://github.com/mirkolenz/flocken](https://github.com/mirkolenz/flocken)
* [https://github.com/kamadorueda/alejandra](https://github.com/kamadorueda/alejandra)
* [https://github.com/crazazy/aoc2020](https://github.com/crazazy/aoc2020)
* [https://github.com/figsoda/utf8](https://github.com/figsoda/utf8)
* [GitHub - akirak/nix-env-install: Emacs frontend to installing packages using Nix](https://github.com/akirak/nix-env-install) ‣ [https://nixified.ai/](https://nixified.ai/)
* [canva-public/js2nix: Node.js modules installation using Nix](https://github.com/canva-public/js2nix)
* [https://direnv.net/](https://direnv.net/)
* [Installation | direnv](https://direnv.net/docs/installation.html)
* [https://www.linode.com/docs/guides/install-nixos-on-linode/](https://www.linode.com/docs/guides/install-nixos-on-linode/)
* [Advent of Code 2019](https://adventofcode.com/2019)
* [Nix · direnv/direnv Wiki](https://github.com/direnv/direnv/wiki/Nix)
* [nix-community/nix-direnv: A fast, persistent use_nix/use_flake implementation for direnv [maintainer=@Mic92 / @bbenne10]](https://github.com/nix-community/nix-direnv) ‣ [Nixd: nix language server - Announcements - NixOS Discourse](https://discourse.nixos.org/t/nixd-nix-language-server/28910)
* [Nixhub.io | A Nix Packages Registry](https://www.nixhub.io/)
* [The Determinate Nix Installer](https://zero-to-nix.com/concepts/nix-installer)* - nixos-anywhere*     
* [https://discourse.nixos.org/t/nixos-anywhere-1-0-release/33145](https://discourse.nixos.org/t/nixos-anywhere-1-0-release/33145)
* [https://numtide.com/blog/nixos-anywhere-1-0-release/ https://numtide.com/blog/nixos-anywhere-1-0-release/](https://numtide.com/blog/nixos-anywhere-1-0-release/)*     
* [ ]  ‣ - [https://determinate.systems/posts/nuenv](https://determinate.systems/posts/nuenv)
* [ ]  ‣* - ‣*     
* [https://flox.dev/](https://flox.dev/)
* [https://reproducible-builds.org/](https://reproducible-builds.org/)
* [Nickel](https://nickel-lang.org/) ‣
* - Videos* - Channels*     
* [https://www.youtube.com/@ChrisMcDonough/playlists](https://www.youtube.com/@ChrisMcDonough/playlists)
* - Nix language*     
* [Nix Language Explained](https://www.youtube.com/watch?v=UgrwoAGSPOQ&pp=ygUMbml4IGxhbmd1YWdl)
* [NixOS Introduction: Basics of Nix Language Explained](https://www.youtube.com/watch?v=cyPdh6gu2sw&pp=ygUMbml4IGxhbmd1YWdl)
* [Informal intro to the Nix language, derivations and nixpkgs](https://www.youtube.com/watch?v=9DJtHIpdp0Y&t=132s&pp=ygUMbml4IGxhbmd1YWdl)
* [Nix Language Overview](https://www.youtube.com/watch?v=eCapIx9heBw&pp=ygUMbml4IGxhbmd1YWdl)
* [A Gentle Introduction to Nix](https://www.youtube.com/watch?v=gUjvnZ9ZwMs&pp=ygUMbml4IGxhbmd1YWdl)
* [Nix - The Best Package Manager](https://www.youtube.com/watch?v=BwEIXIjLTNs&t=270s&pp=ygUFTml4T1M%3D)
* [**Beginner’s Guide to Nix Playlist](https://www.youtube.com/playlist?list=PLnlyQqQLJLnJqZzJgcsUfftdGApjdFZPV)
* [Getting Started with Nix](https://www.youtube.com/watch?v=xXlCcdPz6Vc&pp=ygUQSG93IHRvIExlYXJuIE5peA%3D%3D)
* [NixOS Introduction: Basics of Nix Language Explained**](https://www.youtube.com/watch?v=cyPdh6gu2sw&pp=ygUQSG93IHRvIExlYXJuIE5peA%3D%3D)
* [How to get started with Nix as a Rust developer - YouTube](https://www.youtube.com/watch?v=tv9s4jhdUpU)
* [The Secret of Nix - YouTube](https://www.youtube.com/watch?v=sSn1svY14Ds)
* [Getting Started with Nix - YouTube](https://www.youtube.com/watch?v=xXlCcdPz6Vc&t=1351s)
* [Getting Started with Nix](https://www.youtube.com/watch?v=xXlCcdPz6Vc)
* - NixOS*     
* [NixOS is Mindblowing](https://www.youtube.com/watch?v=fuWPuJZ9NcU&pp=ygUFTml4T1M%3D)
* [NixOS in 60 seconds](https://www.youtube.com/watch?v=Ukglm5KJFa8&pp=ygUFTml4T1M%3D)
* [NixOS beginner guide](https://www.youtube.com/watch?v=bjTxiFLSNFA&t=1s&pp=ygUFTml4T1M%3D)
* [I left NixOS, here's why.](https://www.youtube.com/watch?v=tTYgh8TU9oc&pp=ygUFTml4T1M%3D)
* [NixOS gaming | best DE and Linux distro](https://www.youtube.com/watch?v=DP-3E1FaBfo&pp=ygUFTml4T1M%3D)
* [NixOS Setup Guide - Configuration / Home-Manager / Flakes](https://www.youtube.com/watch?v=AGVXJ-TIv3Y&t=5640s&pp=ygULTml4T1Mgc2V0dXA%3D)
* ["Unlock the Power of NixOS: The Ultimate Step-by-Step Guide to Effortless Installation!"](https://www.youtube.com/watch?v=rc2bt3WMw8s&pp=ygULTml4T1Mgc2V0dXA%3D)
* [First Time NixOS Install with Customization](https://www.youtube.com/watch?v=_Z32SYFbxpw&pp=ygULTml4T1Mgc2V0dXA%3D)
* [NixOS Has One BIG Problem](https://www.youtube.com/watch?v=i6wSn8OlBNc&t=411s&pp=ygUFTml4T1M%3D)
* [NixOS quick-n-dirty manual install](https://www.youtube.com/watch?v=1nkitmgCHfA&t=537s&pp=ygULTml4T1Mgc2V0dXA%3D)
* [NixOS Intro - Installation and basic usage](https://www.youtube.com/watch?v=9fWrxmEYGAs&pp=ygULTml4T1Mgc2V0dXA%3D)
* [NixOS beginner guide](https://www.youtube.com/watch?v=bjTxiFLSNFA&t=1s&pp=ygULTml4T1Mgc2V0dXA%3D)
* [NixOS Is The Power User Distro (Now With An Easy Installer!)](https://www.youtube.com/watch?v=ck4J2Faa7Fc&pp=ygULTml4T1Mgc2V0dXA%3D)
* [NixOS : The HYPE is Real ! Everything You NEED to Know (NEW!)](https://www.youtube.com/watch?v=BVDNByTMOp0&pp=ygUQSG93IHRvIExlYXJuIE5peA%3D%3D)
* [First Time NixOS Install with Customization - YouTube](https://www.youtube.com/watch?v=_Z32SYFbxpw)
* [NixOS Config - Autologin - Flatpak - Fonts - Polkit - Release Upgrade - YouTube](https://www.youtube.com/watch?v=IRRtk320j2A)
* [A First Look At NixOS 23.05 - YouTube](https://www.youtube.com/watch?v=2ShTNNkduLk)
* [NixOS Introduction - Nix Flakes](https://www.youtube.com/watch?v=DXz3FJszfo0)
* [NixOS Flake Tour](https://www.youtube.com/watch?v=ARjAsEJ9WVY&t=165s)
* [Beginners Guide to Nix EP1: Flakes](https://www.youtube.com/watch?v=IrxCiNnXG4M&t=60s)
* [NixOS beginner guide - YouTube](https://www.youtube.com/watch?v=bjTxiFLSNFA&t=2s)
* [NixOS in 60 seconds - YouTube](https://www.youtube.com/watch?v=Ukglm5KJFa8)
* [Nix - The Best Package Manager](https://youtu.be/BwEIXIjLTNs)
* [Dieses OS ist eigentlich ein Paketmanager - NixOS 21.11 - #sonntagsOS - 19](https://youtu.be/CQMU3kSRhLU)
* [Jake Hamilton NixOS Playlist](https://www.youtube.com/playlist?list=PLCy0xwW0SDST7VMInFJ4NIwG_SW0yO59y)
* - Nix/NixOS in the media*     
* [Debian 12, openSUSE 15.5, NixOS, Huge Steam Update & more Linux news! - YouTube](https://www.youtube.com/watch?v=YojPjjavHbs)
* [Dieses OS ist eigentlich ein Paketmanager - NixOS 21.11](https://www.youtube.com/watch?v=CQMU3kSRhLU)
* [Looking at NixOS live on camera! - YouTube](https://www.youtube.com/watch?v=1KKrjic7YVQ)
* - Flakes*     
* [Beginners Guide to Nix EP1: Flakes](https://www.youtube.com/watch?v=IrxCiNnXG4M&t=61s&pp=ygUMbml4IGxhbmd1YWdl)
* [Nix flakes explained](https://www.youtube.com/watch?v=S3VBi6kHw5c&t=3s&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [Beginners Guide to Nix EP1: Flakes](https://www.youtube.com/watch?v=IrxCiNnXG4M&t=61s&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [You Should Use Flakes Right Away in NixOS!](https://www.youtube.com/watch?v=ACybVzRvDhs&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [NixCon2023 What Flakes needs (technically)](https://www.youtube.com/watch?v=UHhnG4rbvzo&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [Nix Flakes in Production: What, Why and How](https://www.youtube.com/watch?v=o1Y7rWrPEO8&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [NixOS Setup Guide - Configuration / Home-Manager / Flakes](https://www.youtube.com/watch?v=AGVXJ-TIv3Y&t=5640s&pp=ygUKbml4IGZsYWtlcw%3D%3D)
* [You Should Use Flakes Right Away in NixOS!](https://www.youtube.com/watch?v=ACybVzRvDhs&pp=ygUFTml4T1M%3D)
* [Matthew Croughan - Use flake.nix, not Dockerfile - MCH2022](https://www.youtube.com/watch?v=0uixRE8xlbY)
* [Intro to Flakes](https://youtu.be/K54KKAx2wNc)
* [Nix flakes explained](https://www.youtube.com/watch?v=S3VBi6kHw5c)
* - Miscellaneous / Specific Software*     
* [Neovim Configuration in Nix: Unpacking Multiple Approaches - YouTube](https://www.youtube.com/watch?v=i68c6vZkSXc)
* [NixOS + Hyprland challenge comes to an end, My final thoughts - YouTube](https://www.youtube.com/watch?v=eb2Cvdu6F18)
* [NixOS with Hyprland - My setup and some thoughts](https://www.youtube.com/watch?v=THgo4nBJyg8&pp=ygULTml4T1Mgc2V0dXA%3D)
* [Nix vs Guix - YouTube](https://www.youtube.com/watch?v=S9V-pcTrdL8)
* [The Nix Hour #32 [extending nixpkgs lib and Nix builtins, Nix plugins] - YouTube](https://www.youtube.com/watch?v=-ohLh-QHc_A)
* 
* - * - Unsorted*     
* [Streamline Your Linux Experience with Nix OS Deployment Tools! - YouTube](https://www.youtube.com/watch?v=qXBzpWIQwMY)
* [The Most Exciting Linux Distro! - YouTube](https://www.youtube.com/watch?v=GkjBMy5ZdG0)
* [NixOS 43: Overriding Packages That Are Within Attribute Sets - YouTube](https://www.youtube.com/watch?v=7a2Yladt0JI)
* [Hardware-Acceleration on NixOS super easy - YouTube](https://www.youtube.com/watch?v=xFsfTcFQY48)
* [Can you downgrade your Linux distro? - NixOS - YouTube](https://www.youtube.com/watch?v=fT3xjqZyacs)
* [ALASCA Tech-Talk #5: Nix and NixOS in Cloud IT - YouTube](https://www.youtube.com/watch?v=MnJnjn3QTGQ)
* [RisiOS das Internet Betriebssystem was Ubuntu und Linux Mint die Show stehlen könnte - YouTube](https://www.youtube.com/watch?v=xx66Ul7s9Yo)
* [I was WRONG! This is the BEST Package Manager. - YouTube](https://www.youtube.com/watch?v=Ty8C2B910EI)
* [NixOS - Reproduzierbares, deklaratives Linux angetestet](https://www.youtube.com/watch?v=DtXg3NoiSxM)
* [NixOS Is The Power User Distro (Now With An Easy Installer!)](https://www.youtube.com/watch?v=ck4J2Faa7Fc)
* [Build A Portable Development Environment With Nix Package Manager - YouTube](https://www.youtube.com/watch?v=70YMTHAZyy4&list=PL1C97G3GhlHdANMFUIXTcFr14R7b7EBj9)
* [Build A Portable Development Environment With Nix Package ...](https://www.youtube.com/watch?v=70YMTHAZyy4)
* [https://www.youtube.com](https://www.youtube.com/) › watch [How Nix and NixOS Get So Close to Perfect - YouTube](https://www.youtube.com/watch?v=qjq2wVEpSsA)
* [Nix Friday - poetry2nix part 1 - YouTube](https://www.youtube.com/watch?v=XfqJulSAPBQ)
* [The best of both worlds with Nix + Bazel](https://www.youtube.com/watch?v=dBru1MVKsfE&pp=ygUeRGV0ZXJtaW5pc3RpYyBzeXN0ZW1zIHdpdGggTml4)
* [Fast, correct, reproducible builds with Nix + Bazel](https://www.youtube.com/watch?v=2wI5J8XYxM8)
* [NixOS as Daily Driver?](https://www.youtube.com/watch?v=cjCFmpdarpg)
* [NixOS Installation Guide - YouTube](https://www.youtube-nocookie.com/embed/axOxLJ4BWmY?start=1642)
* [Paolo – NixOS | Lightning Talk Jugend hackt Berlin 2021](https://youtu.be/Xm2lsP7pnE4)
* [CTT on Nix](https://www.youtube.com/watch?v=Ty8C2B910EI)
* [How Nix and NixOS Get So Close to Perfect - Xe | PackagingCon 2021 https://www.youtube.com/watch?v=WwgSMgpX6TM](https://www.youtube.com/watch?v=WwgSMgpX6TM)
* [NixOS beginner guide](https://www.youtube.com/watch?v=bjTxiFLSNFA&list=PLko9chwSoP-15ZtZxu64k_CuTzXrFpxPE)
* [Nix Dev Environments | Declare Your Coding Projects](https://www.youtube.com/watch?v=yQwW8dkuHqw)
* [Nix-powered Docker Containers](https://www.youtube.com/watch?v=5XY3K8DH55M)
* [Peering into the Land of Parentheses - Guix from the Nix Perspective (NixCon 2019)](https://www.youtube.com/watch?v=bDGzCXr6VYU)
* [Nixos and Hyprland - Best Match Ever](https://www.youtube.com/watch?v=61wGzIv12Ds&t=4s)
* [A Resource for Learning Nix](https://www.youtube.com/watch?v=Nvh7A3HA_4U)
* [NixOS: Sddm, Gtk, QT5 Simple Theming Guide](https://www.youtube.com/watch?v=m_6eqpKrtxk)
* [Introduction to nix env and nix shell](https://www.youtube.com/watch?v=eW8KU6h_ZNo)
* [Nix-powered Docker Containers - YouTube](https://www.youtube.com/watch?v=5XY3K8DH55M)
* [Nix From Nothing #1 | Let's Learn Nix & NixOS! - YouTube](https://www.youtube.com/watch?v=t8ydCYe9Y3M)
* [Nixos Install and Software Install - YouTube](https://www.youtube.com/watch?v=qVg5ZJNpiqQ)
* [Informal intro to the Nix language, derivations and nixpkgs - YouTube](https://www.youtube.com/watch?v=9DJtHIpdp0Y&t=132s)
* [Gabriella Gonzalez, "How to Write a Nix Derivation" - YouTube](https://www.youtube.com/watch?v=bbW6kgB5F2M)
* [NixOS: a sales pitch - YouTube](https://www.youtube.com/watch?v=2L2qHfNnXB4)
* [NIX OS: the BEST package manager on the MOST SOLID Linux distribution - YouTube](https://www.youtube.com/watch?v=DMQWirkx5EY)
* [The Secret of Nix - YouTube](https://www.youtube.com/watch?v=sSn1svY14Ds)
* [NixOS beginner guide - YouTube](https://www.youtube.com/watch?v=bjTxiFLSNFA)
* - Config Examples
* [https://nixos.wiki/wiki/Configuration_Collection](https://nixos.wiki/wiki/Configuration_Collection)
* [@aaronjanse's flake, with packages customized using wrappers](https://github.com/aaronjanse/dotfiles)
* [@alex3rd’s config](https://github.com/wiedzmin/nixos-config)
* [@Andrew’s configuration](https://gitlab.com/Andrew/configuration)
* [@areina's NixOS config](https://github.com/areina/nixos-config)
* [@axelf4's NixOS config](https://github.com/axelf4/nixos-config)
* [@badele's NixOS homelab configuration](https://github.com/badele/nix-homelab)
* [@baitinq's NixOS config](https://github.com/baitinq/nixos-config)
* [@balsoft’s config](https://github.com/balsoft/nixos-config)
* [@barrucadu's NixOS config](https://github.com/barrucadu/nixfiles)
* [@Baughn's NixOS config](https://github.com/Baughn/machine-config)
* [@bbigras's flake configs (NixOS + Home-Manager)](https://github.com/bbigras/nix-config)
* [@bddvlpr's NixOS + home-manager + deploy-rs config](https://github.com/bddvlpr/nix-dotfiles)
* [@bennofs's NixOS config](https://github.com/bennofs/etc-nixos)
* [@bobbbay's NixOS + Home Manager + flake-utils-plus config](https://github.com/bobbbay/dotfiles)
* [@cab’s flake](https://github.com/cab404/nixos-config)
* [@casept's NixOS config](https://github.com/casept/nixos-config)
* [@coreyoconnor's NixOS configs](https://github.com/coreyoconnor/nix_configs)
* [@CrazedProgrammer's NixOS config](https://github.com/CrazedProgrammer/nix)
* [@DAlperin's NixOS flake + home-manager](https://github.com/DAlperin/dotfiles)
* [@davidak's NixOS + home-manager config](https://codeberg.org/davidak/nixos-config)
* [@davidtwco NixOS & home-manager config](https://github.com/davidtwco/veritas)
* [@dieracdelta's NixOS + home-manager config](https://github.com/DieracDelta/flakes)
* [@drupol flake configs (NixOS + Home-Manager)](https://github.com/drupol/nixos-x260)
* [@eisfunke's NixOS + home-manager + flake config](https://git.eisfunke.com/config/nixos)
* [@FedericoSchonborn's NixOS + Nix on Droid + Home Manager config](https://github.com/FedericoSchonborn/nixfiles)
* [@felschr's NixOS & home-manager config](https://gitlab.com/felschr/nixos-config)
* [@figsoda's NixOS config](https://github.com/figsoda/cfg)
* [@fufexan's NixOS + home-manager config](https://github.com/fufexan/dotfiles)
* [@gytis-ivaskevicius's NixOS + home-manager + flake-utils-plus config](https://github.com/gytis-ivaskevicius/nixfiles)
* [@hutzdog's NixOS + home-manager + flake-utils-plus literate config](https://man.sr.ht/~hutzdog/dotfiles/)
* [@hyper_ch's NixOS config](https://github.com/sjau/nixos)
* [@iammrinal0's NixOS with home-manager using flakes config](https://github.com/iammrinal0/nix-config)
* [@infinisil's NixOS config](https://github.com/Infinisil/system)
* [@ixxie's NixOS config](https://github.com/ixxie/fluxstack)
* [@jwiegley's NixOS config](https://github.com/jwiegley/nix-config)
* [@K900’s pile of configs](https://gitlab.com/K900/nix)
* [@kanashimia’s config](https://github.com/kanashimia/nixos-config)
* [@kenranunderscore's NixOS + home-manager config](https://github.com/kenranunderscore/dotfiles)
* [@l0b0's NixOS config](https://gitlab.com/engmark/root)
* [@leosbotelho's NixOS config](https://github.com/leosbotelho/cartons)
* [@Lord-Valen's Hive](https://github.com/Lord-Valen/configuration.nix)
* [@luis's NixOS config](https://github.com/Luis-Hebendanz/nix-configs)
* [@mbledkowski's NixOS (and other) config](https://github.com/mbledkowski/dotfiles)
* [@mikeyobrien's NixOS + home-manager config](https://github.com/mikeyobrien/nix-config)
* [@mjm's NixOS + nix-darwin + home-manager flake](https://git.midna.dev/mjm/nix-config)
* [@mogria's NixOS config](https://github.com/mogria/nixos-config)
* [@mxjessie's NixOS config](https://github.com/mxjessie/nixos-configs)
* [@Myhlamaeus's NixOS & home-manager config](https://gitlab.com/Myhlamaeus/nixos-config)
* [@natto1784's NixOS & home-manager config](https://github.com/natto1784/dotfiles)
* [@netcave's NixOS config](https://github.com/netcave/nix-files)
* [@nickjanus's NixOS config](https://github.com/nickjanus/nixos-config)
* [@NobbZ flake](https://github.com/NobbZ/nixos-config)
* [@Nommy’s flake](https://github.com/97nomad/nixos-config)
* [@Panadestein’s flake + home-manager](https://github.com/Panadestein/nixos-config)
* [@pSub's NixOS config](https://github.com/pSub/configs/tree/master/nixos)
* [@periklis's Nix config for macOS](https://github.com/periklis/nix-config)
* [@prikhi's NixOS config](https://github.com/prikhi/nixos-config)
* [@rasendubi's NixOS config](https://github.com/rasendubi/dotfiles)
* [@roosemberth's NixOS config](https://gitlab.com/roosemberth/dotfiles)
* [@ryan4yin's flake for NixOS + macOS + home-manager, with a beginner-friendly tutorial](https://github.com/ryan4yin/nix-config)
* [@saksmt’s config](https://github.com/saksmt/nix-config)
* [@samueldr's NixOS config](https://gitlab.com/samueldr/nixos-configuration)
* [@samuelgrf's NixOS config](https://gitlab.com/samuelgrf/nixos-config)
* [@savage42’s config](https://github.com/vyorkin/nixos-config)
* [@SeTSeR’s config](https://github.com/setser/nixos-config)
* [@selfuryon’s config](https://github.com/selfuryon/nixos-config)
* [@semigroupoids’s config](https://github.com/azahi/nixfiles)
* [@sheenobu's NixOS + home manager config](https://hg.sr.ht/~sheenobu/config)
* [@siraben's NixOS config](https://github.com/siraben/dotfiles)
* [@SnabbLab's NixOS config](https://github.com/snabblab/snabblab-nixos)
* [@Synthetica9's NixOS config](https://github.com/Synthetica9/configuration.nix)
* [@taktoa's NixOS config](https://github.com/taktoa/server-config)
* [@tejing's NixOS + home-manager flake config](https://github.com/tejing1/nixos-config)
* [@termslang’s config](https://bitbucket.org/bzz/nixos)
* [@trishume's NixOS config](https://github.com/trishume/nixfiles)
* [@utdemir NixOS & home-manager config](https://github.com/utdemir/dotfiles)
* [@Weathercold's modular NixOS & home-manager flake + package overlay](https://github.com/Weathercold/nixfiles)
* [@yurrriq's NixOS & home-manager configs](https://github.com/yurrriq/dotfiles)
* [@yusdacra's NixOS & home-manager configs](https://github.com/yusdacra/nixos-config)
* [@Zaechus's NixOS flake + home-manager config](https://github.com/Zaechus/nixos-config)
* [stockholm configuration and deployment of machines owned by the members of #krebs](http://cgit.krebsco.de/stockholm/tree/)
* [NixOS configurations of the OpenLab Augsburg](https://github.com/openlab-aux/vuizvui) (@aszlig, @devhell, @sternenseemann, @Profpatsch)User configuration [@akavel's Nixpkgs config](https://github.com/akavel/nix-config)
* [@NobbZ' Home Manager configuration in a flake](https://github.com/NobbZ/nixos-config)
* [@matthewbauer's Nixpkgs config](https://github.com/matthewbauer/nixpkgs-config)
* [@pSub's Nixpkgs config](https://github.com/pSub/configs/blob/master/nix/.config/nixpkgs/config.nix) NixOps configuration [@headcounter's NixOps config](https://github.com/headcounter/deployment)
* [@LnL7's NixOS docker config](https://github.com/LnL7/nix-docker)
* [@pSub's NixOps config](https://github.com/pSub/configs/tree/master/nixops/configurations)
* [IOHK, blockchain startup, open-sources it's NixOps infrastructure.](https://github.com/input-output-hk/iohk-nixops)
* [krops](https://cgit.krebsco.de/krops/about/) configuration [stockholm krops configuration](https://cgit.krebsco.de/stockholm/tree/krebs/krops.nix) Projects using nix ‣ - Provides an overlay for some of their projects. [Rhodecode](https://code.rhodecode.com/rhodecode-enterprise-ce/files/tip/) - Uses Nix for building their Python VCS server. [Zentralwerk Network](https://gitea.c3d2.de/zentralwerk/network) - Multi-tenant building network
* [~ben/cfg - sourcehut git](https://git.sr.ht/~ben/cfg)
* [Configuration.nix / home.nix examples - Help - NixOS Discourse](https://discourse.nixos.org/t/configuration-nix-home-nix-examples/8185)
* [Files · main · Richard Davis / Nix Dotfiles · GitLab](https://gitlab.com/davisrichard437/nix-dotfiles/-/tree/main) ***** [https://m7.rs/git/nix-config/](https://m7.rs/git/nix-config/)
* [https://github.com/misterio77/nix-config](https://github.com/misterio77/nix-config)
* [https://github.com/DavHau/nix-portable](https://github.com/DavHau/nix-portable)
* [https://github.com/alex35mil/dotfiles](https://github.com/alex35mil/dotfiles) DOTS**
* [https://github.com/chadcat7/fuyu](https://github.com/chadcat7/fuyu)
* [Reddit - Rice NixOS?](https://www.reddit.com/r/NixOS/comments/113ondu/rice_nixos/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [https://github.com/wagdav/homelab](https://github.com/wagdav/homelab)
* [infrastructure/default.nix at 706a72f151d4c0963458c1b9f05c5573df2a4b90 · devmattrick/infrastructure](https://github.com/devmattrick/infrastructure/blob/706a72f151d4c0963458c1b9f05c5573df2a4b90/nix/home/matt/profiles/desktop/default.nix)
* [dotfiles/environment.nix at 61db8b29467947be9ffab54a7c55c0593cbcb59d · akkesm/dotfiles](https://github.com/akkesm/dotfiles/blob/61db8b29467947be9ffab54a7c55c0593cbcb59d/home/configuration/environment.nix)
* [nix-config/xdg.nix at d3839ad57d9b254846d49d43f8651d1ed2966164 · MAHDTech/nix-config](https://github.com/MAHDTech/nix-config/blob/d3839ad57d9b254846d49d43f8651d1ed2966164/home/nix/files/xdg.nix)
* [dotfiles/directories.nix at d343eba77c9543b56445b399fb0e7be6eedd7edd · superwhiskers/dotfiles](https://github.com/superwhiskers/dotfiles/blob/d343eba77c9543b56445b399fb0e7be6eedd7edd/modules/users/superwhiskers/directories.nix)
* [dotfiles/default.nix at 49e5fcf1acdf5341804fbd0f9f847d057a155651 · Mikilio/dotfiles](https://github.com/Mikilio/dotfiles/blob/49e5fcf1acdf5341804fbd0f9f847d057a155651/modules/environment/default.nix)
* [nixos-config/xdg-user-dirs.nix at 73584639e55b4335c89ea26fea3863ad0734cbc1 · jnsgruk/nixos-config](https://github.com/jnsgruk/nixos-config/blob/73584639e55b4335c89ea26fea3863ad0734cbc1/home/common/global/shell/xdg-user-dirs.nix)
* [dotfiles/xdg.nix at a98fa78cabef00ca450136f30f1a8a909a60b417 · GaetanLepage/dotfiles](https://github.com/GaetanLepage/dotfiles/blob/a98fa78cabef00ca450136f30f1a8a909a60b417/home/tui/xdg.nix)
* [config/borg.nix at 21620498d35975bc4cfc79955f7a5bd3b07debab · Prillan/config](https://github.com/Prillan/config/blob/21620498d35975bc4cfc79955f7a5bd3b07debab/nixpkgs/backup/borg.nix)
* [NixOS-config/nvim.nix at 8b70128f9e74b652e12e91984622ded147ed8f41 · Simone-Alghisi/NixOS-config](https://github.com/Simone-Alghisi/NixOS-config/blob/8b70128f9e74b652e12e91984622ded147ed8f41/home-manager/modules/nvim.nix)
* [nix-dotfiles/default.nix at 011b20e05e9d954b1dbd5638fd8328ba290bf1ba · h7x4/nix-dotfiles](https://github.com/h7x4/nix-dotfiles/blob/011b20e05e9d954b1dbd5638fd8328ba290bf1ba/home/config/xdg/default.nix)
* [bbommarito/nixos-config: My Nix Flake system configuration](https://github.com/bbommarito/nixos-config)
* [suderman/nixos: system configurations & dotfiles](https://github.com/suderman/nixos)
* [reckenrode/nixos-configs: My NixOS and nix-darwin configs](https://github.com/reckenrode/nixos-configs)
* [https://github.com/gmarmstrong/dotfiles](https://github.com/gmarmstrong/dotfiles)
* [https://github.com/hxlcyxn/nixos](https://github.com/hxlcyxn/nixos)
* [https://github.com/tadfisher/flake](https://github.com/tadfisher/flake)
* [vkleen/machines: Using NixOS to configure some of my machines](https://github.com/vkleen/machines)
* [kalbasit/soxincfg: Soxin configuration](https://github.com/kalbasit/soxincfg)
* [ambroisie/nix-config: My NixOs configuration files. Only used for my self-hosted infra at the moment. - nix-config - Ambroisie's forge](https://gitea.belanyi.fr/ambroisie/nix-config/src/commit/d918bf279d8149168bde3580402306ad7523c805)
* [~ben/cfg: linux.nix - sourcehut git](https://git.sr.ht/~ben/cfg/tree/master/item/linux.nix)
* [alexpearce/dotfiles: My dotfiles.](https://github.com/alexpearce/dotfiles)
* [https://github.com/eviefp/dotfiles](https://github.com/eviefp/dotfiles)
* [lucperkins/nix-home-config: Nix configuration for my macOS laptop](https://github.com/lucperkins/nix-home-config)
* [srid/nix-config: My NixOS configuration (DEPRECATED)](https://github.com/srid/nix-config)
* [jamespwilliams/neovim-go-nix-develop: Set up a Go neovim development environment in one command using Nix](https://github.com/jamespwilliams/neovim-go-nix-develop)
* [srid/nixos-config: KISS NixOS configuration based on Flakes & flake-parts (supports macOS too)](https://github.com/srid/nixos-config)
* [https://m7.rs/git/nix-config/](https://m7.rs/git/nix-config/)
* [https://hhoeflin.github.io/blog/devtools/using_nix/](https://hhoeflin.github.io/blog/devtools/using_nix/)
* [maxhbr/myconfig: my Linux Configuration](https://github.com/maxhbr/myconfig)
* [Reddit - GREEN [Sway] Tokyonight + left waybar + nixos + AI generated wallpaper](https://www.reddit.com/r/unixporn/comments/10ugzfn/sway_tokyonight_left_waybar_nixos_ai_generated/)
* [Reddit NIXOS COLOR - [i3] First time ricing, I like transparency and blur.](https://www.reddit.com/r/unixporn/comments/wor3id/i3_first_time_ricing_i_like_transparency_and_blur/)
* [Reddit - my dotfiles for a minimalistic Xmonad / nixOS environment (btw. how do you manage your dotfiles?)](https://www.reddit.com/r/dotfiles/comments/ml7vc3/my_dotfiles_for_a_minimalistic_xmonad_nixos/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [Reddit - NIXOS GREEN [BSPWM/MATE] NixOS jungle](https://www.reddit.com/r/unixporn/comments/c0c8tf/bspwmmate_nixos_jungle/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [Reddit - [sway] hopped on the nixos train ;)](https://www.reddit.com/r/unixporn/comments/xxu2pd/sway_hopped_on_the_nixos_train/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [Reddit - [i3-gaps] finally finished™ my NixOS config. Everforest looks nice](https://www.reddit.com/r/unixporn/comments/108ybd1/i3gaps_finally_finished_my_nixos_config/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [https://github.com/abdul2906/nixos-system-config](https://github.com/abdul2906/nixos-system-config)
* [https://github.com/mcotocel/nixdots](https://github.com/mcotocel/nixdots)
* [https://github.com/SheetKey/nixos-dotfiles](https://github.com/SheetKey/nixos-dotfiles)
* [https://github.com/winston0410/nixos-dotfiles](https://github.com/winston0410/nixos-dotfiles)
* [https://git.litschi.xyz/litschi/nix-darwin](https://git.litschi.xyz/litschi/nix-darwin)
* [https://github.com/abdul2906/nixos-system-config](https://github.com/abdul2906/nixos-system-config)
* [nix-config/home.nix at master · srid/nix-config](https://github.com/srid/nix-config/blob/master/nix/home.nix)
* [nix-home/home.nix at master · yrashk/nix-home](https://github.com/yrashk/nix-home/blob/master/home.nix)
* [b/home.nix at master · burke/b](https://github.com/burke/b/blob/master/etc/nix/home.nix)
* [nixpkgs/home.nix at main - nixpkgs - Forgejo of Daniel Siepmann](https://git.daniel-siepmann.de/danielsiepmann/nixpkgs/src/branch/main/home.nix)
* [Why I Threw Out My Dotfiles • davegallant](https://davegallant.ca/blog/2021/09/08/why-i-threw-out-my-dotfiles/)
* [tadfisher/nixhome: My .nix home generator](https://github.com/tadfisher/nixhome)
* [https://github.com/AloneER0/NixFiles](https://github.com/AloneER0/NixFiles)
* sample home manager config
* { config, pkgs, ... }:
* {
* # Home Manager needs a bit of information about you and the paths it should
* # manage.
* home.username = "herisson";
* home.homeDirectory = "/home/herisson";
* # This value determines the Home Manager release that your configuration is
* # compatible with. This helps avoid breakage when a new Home Manager release
* # introduces backwards incompatible changes.
* #
* # You should not change this value, even if you update Home Manager. If you do
* # want to update the value, then make sure to first check the Home Manager
* # release notes.
* home.stateVersion = "23.05"; # Please read the comment before changing.
* nixpkgs.config.allowUnfree = true;
* # The home.packages option allows you to install Nix packages into your
* # environment.
* home.packages = with pkgs; [
* cpupower-gui
* helix
* element-desktop-wayland
* headlines
* gtkcord4
* gotktrix
* contrast
* lollypop
* fragments
* shortwave
* blanket
* btop
* htop
* zenith
* nvtop-amd
* unixtools.top
* cpu-x
* neo-cowsay
* thefuck
* du-dust
* joshuto
* celluloid
* pipes-rs
* pipes
* epiphany
* #discord
* armcord
* gnome.dconf-editor
* arti
* taplo
* boringtun
* youtube-tui
* rx
* goxel
* clipcat
* cmatrix
* uutils-coreutils
* nushell
* clipboard-jh
* #(lib.lowPrio uwufetch)
* owofetch
* pfetch
* nano
* lfs
* lf
* gnome.gnome-tweaks
* gnome.gnome-terminal
* neofetch
* hyfetch
* adw-gtk3
* gradience
* firefox-beta-bin
* micro
* blackbox-terminal
* tealdeer
* rustpython
* downonspot
* spotify-tui
* dum
* cobalt
* termusic
* skim
* dotenv-linter
* rustup
* mrustc-minicargo
* telegram-desktop
* #];
* # Home Manager is pretty good at managing dotfiles. The primary way to manage
* # plain files is through 'home.file'.
* #  home.file = {
* # # Building this configuration will create a copy of 'dotfiles/screenrc' in
* # # the Nix store. Activating the configuration will then make '~/.screenrc' a
* # # symlink to the Nix store copy.
* # ".screenrc".source = dotfiles/screenrc;
* # # You can also set the file content immediately.
* # ".gradle/gradle.properties".text = ''
* #   org.gradle.console=verbose
* #   org.gradle.daemon.idletimeout=3600000
* # '';
* #  };
* # You can also manage environment variables but you will have to manually
* # source
* #
* #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
* #
* # or
* #
* #  /etc/profiles/per-user/herisson/etc/profile.d/hm-session-vars.sh
* #
* # if you don't want to manage your shell through Home Manager.
* #home.packages = [
* (pkgs.runCommand "San-Francisco-Pro-Fonts" {
* src = pkgs.fetchFromGitHub {
* owner = "sahibjotsaggu";
* repo = "San-Francisco-Pro-Fonts";
* rev = "8bfea09aa6f1139479f80358b2e1e5c6dc991a58";
* hash = "sha256-mAXExj8n8gFHq19HfGy4UOJYKVGPYgarGd/04kUIqX4=";
* };
* } ''
* mkdir -p $out/share/fonts/{opentype,truetype}/San-Francisco-Pro-Fonts
* cp $src/*.otf $out/share/fonts/opentype/San-Francisco-Pro-Fonts
* cp $src/*.ttf $out/share/fonts/truetype/San-Francisco-Pro-Fonts
* '')
* (pkgs.runCommand "SF-mono-font" {
* src = pkgs.fetchFromGitHub {
* owner = "supercomputra";
* repo = "SF-mono-font";
* rev = "1409ae79074d204c284507fef9e479248d5367c1";
* hash = "sha256-3wG3M4Qep7MYjktzX9u8d0iDWa17FSXYnObSoTG2I/o=";
* };
* } ''
* mkdir -p $out/share/fonts/{opentype,truetype}/SF-mono-font
* cp $src/*.otf $out/share/fonts/opentype/SF-mono-font
* #  cp $src/*.ttf $out/share/fonts/truetype/SF-mono-font
* '')
* ];
* home.sessionVariables = {
* EDITOR = "micro";
* };
* fonts.fontconfig.enable = true;
* # Let Home Manager install and manage itself.
* programs.home-manager.enable = true;
* gtk = {
* enable = true;
* gtk3.extraConfig.gtk-decoration-layout = "menu:";
* theme.name = "adw-gtk3-dark";
* iconTheme = with pkgs; {
* name = "Tela-circle-dark";
* package = pkgs.tela-circle-icon-theme;
* };
* };
* }
* - 
* [https://github.com/Icy-Thought/snowflake](https://github.com/Icy-Thought/snowflake) SwayWM GREEN NixOS [https://github.com/Ruixi-rebirth/flakes](https://github.com/Ruixi-rebirth/flakes)
* [https://codeberg.org/quantenzitrone/nix-config/src/commit/4939103787da8e59f3cef8b0078718f638d8d919](https://codeberg.org/quantenzitrone/nix-config/src/commit/4939103787da8e59f3cef8b0078718f638d8d919)
* [https://github.com/qwbarch/nix-config/tree/5fa822feaae405d8e44f7dafd6c0948d54159b51](https://github.com/qwbarch/nix-config/tree/5fa822feaae405d8e44f7dafd6c0948d54159b51)
* [b/home.nix at master · burke/b](https://github.com/burke/b/blob/master/etc/nix/home.nix) vifm nix [https://git.xirion.net/0x76/nixpkgs/commit/c6588dd34103bcef573c2afaba40748076296d6f](https://git.xirion.net/0x76/nixpkgs/commit/c6588dd34103bcef573c2afaba40748076296d6f**)
* [https://github.com/solomon-b/nixos-config](https://github.com/solomon-b/nixos-config)
* [https://github.com/cprussin/dotfiles](https://github.com/cprussin/dotfiles)
* [https://github.com/jumper149/dotfiles](https://github.com/jumper149/dotfiles)
* [https://github.com/jkachmar/dotnix](https://github.com/jkachmar/dotnix)
* [https://github.com/shaunsingh/nix-darwin-dotfiles](https://github.com/shaunsingh/nix-darwin-dotfiles)
* [https://github.com/sahib/dotfiles](https://github.com/sahib/dotfiles) (nix)
* [https://github.com/astro/skyflake](https://github.com/astro/skyflake)
* [https://git.sr.ht/~trevdev/nix](https://git.sr.ht/~trevdev/nix)
* [https://github.com/zachcoyle/flake-templates](https://github.com/zachcoyle/flake-templates)
* [https://github.com/zachcoyle/nix-config](https://github.com/zachcoyle/nix-config)
* [https://github.com/Wittano/nix-repo](https://github.com/Wittano/nix-repo)
* [https://github.com/Wittano/nix-dotfiles](https://github.com/Wittano/nix-dotfiles)
* [https://github.com/ners/NixOS](https://github.com/ners/NixOS)
* [https://github.com/sarveshrulz/nixos_config](https://github.com/sarveshrulz/nixos_config)
* [https://github.com/sum-rock/just-sum-nix](https://github.com/sum-rock/just-sum-nix)
* [https://github.com/Misterio77/nix-starter-configs https://github.com/Misterio77/nix-starter-configs](https://github.com/Misterio77/nix-starter-configs)
* [https://nixos.wiki/wiki/Configuration_Collection](https://nixos.wiki/wiki/Configuration_Collection)
* [invesalius3_nix_develop/flake.nix at main · tfmoraes/invesalius3_nix_develop](https://github.com/tfmoraes/invesalius3_nix_develop/blob/main/flake.nix)
* [https://github.com/sandmuel/minigui-flake](https://github.com/sandmuel/minigui-flake)
* [https://github.com/purcell/dotfiles](https://github.com/purcell/dotfiles)
* [https://github.com/utdemir/dotfiles-nix](https://github.com/utdemir/dotfiles-nix)
* [https://github.com/Anomalocaridid/dotfiles](https://github.com/Anomalocaridid/dotfiles)
* [https://github.com/erictossell/nixflakes](https://github.com/erictossell/nixflakes)* - Config Resources*     
* [https://search.nixos.org/options](https://search.nixos.org/options)*     
* [https://github.com/yelircaasi/nix-eli5](https://github.com/yelircaasi/nix-eli5)
* [https://github.com/yelircaasi/clavix](https://github.com/yelircaasi/clavix)
* [https://github.com/yelircaasi/pictrix](https://github.com/yelircaasi/pictrix)
* [https://bmcgee.ie/posts/2023/11/nix-my-workflow/](https://bmcgee.ie/posts/2023/11/nix-my-workflow/)
* [https://www.nixhub.io/](https://www.nixhub.io/)
* [https://github.com/nix-community/NUR](https://github.com/nix-community/NUR)
* [https://media.ccc.de/v/nixcon-2023-36022-daily-driving-nixos-on-the-librem-5](https://media.ccc.de/v/nixcon-2023-36022-daily-driving-nixos-on-the-librem-5)
* [https://blog.alper-celik.dev/posts/my-first-contributions-to-nixpkgs-and-open-source/](https://blog.alper-celik.dev/posts/my-first-contributions-to-nixpkgs-and-open-source/)

Notes

Talk about pure functional programming, esp in terms of input → out and no side effects, no state

Talk about package hashing as a means of unique identification of a package and its dependencies and the guarantees that brings with it

Talk about links, soft and hard, and how they are used in Nix

Talk about what exactly Nix expressions are, as well as flakes

Then about how Nix code is organized, such as imports

Go over each point in the desiderata (still a fee to add) and talk about how each relates to pure functional programming

Do an informal proof of how each desideratum follows from and is required by the definition of pure functional programming

Then finally go over what Nix does with different commands

contrast old and new syntax

Emphasize commonalities among commands, common theme and design goals, etc

Ideas

Create tool to populate pyproject.toml with exact versiions supplied by Nix packages, with option for stable or unstable (reference: [](https://github.com/peterldowns/nix-search-cli)
    * [https://github.com/peterldowns/nix-search-cli](https://github.com/peterldowns/nix-search-cli)

Create language server / parser / highlighter for .drv files, add .drv support to bat

Look at Poetry2Nix and modify it to use pre-built: [](https://github.com/lazamar/nix-package-versions)
    * [https://github.com/lazamar/nix-package-versions](https://github.com/lazamar/nix-package-versions) →https://github.com/nix-community/pip2nix?

buildPythonPackage {

pname = "TODO";

version = "TODO";

src = fetchPypi {

inherit pname version;

sha256 = ""; # TODO

};


* related to Nix 3.0 [](https://github.com/NixOS/nix/issues/7701)
    * [https://github.com/NixOS/nix/issues/7701](https://github.com/NixOS/nix/issues/7701)
* [](https://www.tweag.io/blog/2022-08-04-tweag-and-nix-future/)
    * [https://www.tweag.io/blog/2022-08-04-tweag-and-nix-future/](https://www.tweag.io/blog/2022-08-04-tweag-and-nix-future/)
* [](https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204)
    * [https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204](https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204)
* [https://discourse.nixos.org/t/an-incremental-strategy-for-stabilizing-flakes/16323/5](https://discourse.nixos.org/t/an-incremental-strategy-for-stabilizing-flakes/16323/5)
* [https://discourse.nixos.org/t/tweag-nix-dev-update-17/15037](https://discourse.nixos.org/t/tweag-nix-dev-update-17/15037)
* [https://discourse.nixos.org/t/improving-flakes/12831/56](https://discourse.nixos.org/t/improving-flakes/12831/56)
* [https://discourse.nixos.org/t/depreciate-the-use-of-nix-env-to-install-packages/20139/22](https://discourse.nixos.org/t/depreciate-the-use-of-nix-env-to-install-packages/20139/22)
* [https://discourse.nixos.org/t/tweag-nix-dev-update-16/14379](https://discourse.nixos.org/t/tweag-nix-dev-update-16/14379)
* [https://discourse.nixos.org/t/2022-nix-survey-results/18983](https://discourse.nixos.org/t/2022-nix-survey-results/18983)
* [https://discourse.nixos.org/t/2022-10-07-nix-team-meeting-minutes-3/22369](https://discourse.nixos.org/t/2022-10-07-nix-team-meeting-minutes-3/22369)
* CAS semantics [](https://github.com/NixOS/rfcs/pull/106)
    * [https://github.com/NixOS/rfcs/pull/106](https://github.com/NixOS/rfcs/pull/106)
* [https://github.com/NixOS/nix/pull/4577](https://github.com/NixOS/nix/pull/4577)
* [https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
* [https://discourse.nixos.org/t/how-to-create-a-poetry2nix-environment-with-a-flake/23604/6](https://discourse.nixos.org/t/how-to-create-a-poetry2nix-environment-with-a-flake/23604/6)
* [https://gist.github.com/reckenrode/37fffca926001ff45c4866991c0acc34](https://gist.github.com/reckenrode/37fffca926001ff45c4866991c0acc34)
* [https://www.reddit.com/r/NixOS/comments/16cfdag/poetry2nix_can_not_get_a_flake_to_work/](https://www.reddit.com/r/NixOS/comments/16cfdag/poetry2nix_can_not_get_a_flake_to_work/)

uses niv: [](https://discourse.nixos.org/t/help-with-poetry2nix/21799/4)
    * [https://discourse.nixos.org/t/help-with-poetry2nix/21799/4](https://discourse.nixos.org/t/help-with-poetry2nix/21799/4)
* [https://github.com/nix-community/poetry2nix/blob/4f8d61cd936f853242a4ce1fd476f5488c288c26/templates/app/flake.nix](https://github.com/nix-community/poetry2nix/blob/4f8d61cd936f853242a4ce1fd476f5488c288c26/templates/app/flake.nix)
* [https://serokell.io/blog/practical-nix-flakes](https://serokell.io/blog/practical-nix-flakes)

Goal: To create a Python develop environment where everything just works

TRY THIS! [](https://github.com/mjlbach/nix-shells/tree/master/lorri_tensorflow_nixgl_poetry2nix)
    * [https://github.com/mjlbach/nix-shells/tree/master/lorri_tensorflow_nixgl_poetry2nix](https://github.com/mjlbach/nix-shells/tree/master/lorri_tensorflow_nixgl_poetry2nix)
* [2nix and Flakes](https://www.youtube.com/watch?v%3D9o_A2loSH-0)
* [Nix Hour Playlist](https://www.youtube.com/playlist?list%3DPLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in)
* [https://snowflakeos.org/](https://snowflakeos.org/)
* [https://nixos-and-flakes.thiscute.world/](https://nixos-and-flakes.thiscute.world/)
* [https://determinate.systems/](https://determinate.systems/)
* [https://tech.aufomm.com/my-nixos-journey-flakes/](https://tech.aufomm.com/my-nixos-journey-flakes/)
* [Flakes video](https://www.youtube.com/watch?v%3DDXz3FJszfo0)
* [https://jdisaacs.com/blog/nixos-config/](https://jdisaacs.com/blog/nixos-config/)
* [https://github.com/wiltaylor/dotfiles](https://github.com/wiltaylor/dotfiles)
* [](https://www.youtube.com/watch?v%3DQKoQ1gKJY5A%26list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
    * [Wil Taylor's NixOS series](https://www.youtube.com/watch?v%3DQKoQ1gKJY5A%26list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
* [https://woile.dev/posts/nix-journey-part-1-creating-a-flake/](https://woile.dev/posts/nix-journey-part-1-creating-a-flake/)
* [https://ryantm.github.io/nixpkgs/](https://ryantm.github.io/nixpkgs/)
* [https://github.com/nix-community/poetry2nix/blob/master/templates/app/flake.nix](https://github.com/nix-community/poetry2nix/blob/master/templates/app/flake.nix)
* [Is NixOS Overrated?](https://www.youtube.com/watch?v%3DsSxGEHakfuc)
* [https://www.reddit.com/r/NixOS/comments/y1xo2u/how_to_create_an_iso_with_my_config_files/](https://www.reddit.com/r/NixOS/comments/y1xo2u/how_to_create_an_iso_with_my_config_files/)
* [https://news.ycombinator.com/item?id=35208402](https://news.ycombinator.com/item?id%3D35208402)


* *** [](https://gitlab.com/librephoenix/nixos-config)
    * [https://gitlab.com/librephoenix/nixos-config](https://gitlab.com/librephoenix/nixos-config)
* [](https://github.com/librephoenix/nixos-config)
    * [https://github.com/librephoenix/nixos-config](https://github.com/librephoenix/nixos-config)
* [https://github.com/jakehamilton/config](https://github.com/jakehamilton/config)
* [https://github.com/snowfallorg/lib](https://github.com/snowfallorg/lib)
* [https://github.com/spikespaz/dotfiles](https://github.com/spikespaz/dotfiles)
* [https://discourse.nixos.org/t/install-nixos-from-existing-linux/6856/14](https://discourse.nixos.org/t/install-nixos-from-existing-linux/6856/14)
* [https://github.com/NyCodeGHG/dotfiles](https://github.com/NyCodeGHG/dotfiles)
* [https://crane.dev/](https://crane.dev/)
* [https://github.com/emmaboecker/dotfiles](https://github.com/emmaboecker/dotfiles)
* [https://github.com/DavidEGrayson/nixcrpkgs](https://github.com/DavidEGrayson/nixcrpkgs) - expressions for cross-compiling
* [https://tweag.github.io/nixpkgs/file-sets/manual.html#preface](https://tweag.github.io/nixpkgs/file-sets/manual.html%23preface)
* [https://github.com/LunNova/nixos-configs](https://github.com/LunNova/nixos-configs)

How to install and nconfigure browser extension with Nix and Home Manager?
* [https://cmacr.ae/blog/managing-firefox-on-macos-with-nix/](https://cmacr.ae/blog/managing-firefox-on-macos-with-nix/)
* [https://github.com/monadplus/old-nixos-configuration](https://github.com/monadplus/old-nixos-configuration)
* [https://wiki.nikiv.dev/package-managers/nix/](https://wiki.nikiv.dev/package-managers/nix/)
* [https://github.com/prmadev/willow](https://github.com/prmadev/willow)

Project idea: add .drv syntax highlighting to bat, or create a bat-based tool to format and display .drv all-in-one
* [https://github.com/LnL7/vim-nix/](https://github.com/LnL7/vim-nix/)
* [https://github.com/redoracle/nixos](https://github.com/redoracle/nixos) -Alpine + Nix
* [https://cbailey.co.uk/posts/a_minimal_nix_development_environment_on_wsl](https://cbailey.co.uk/posts/a_minimal_nix_development_environment_on_wsl)
* [https://adnab.me/blog/2023/2023-04-02-rootless-nixos-alpine.html](https://adnab.me/blog/2023/2023-04-02-rootless-nixos-alpine.html)
* [https://flakehub.com/](https://flakehub.com/)
* [https://community.flake.parts/](https://community.flake.parts/)
* [https://nixos.asia/en/](https://nixos.asia/en/)
* [https://daniel-siepmann.de/nix-journey-part-1.html](https://daniel-siepmann.de/nix-journey-part-1.html)


* suckless [](https://github.com/NixOS/nixpkgs/issues/23200)
    * [https://github.com/NixOS/nixpkgs/issues/23200](https://github.com/NixOS/nixpkgs/issues/23200)
* [](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
    * [https://discourse.nixos.org/t/simple-terminal-st-setup/9763](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
* [https://daniel-siepmann.de/nix-journey-part-1.html#howIFinallyStartedWithNixNotNixos](https://daniel-siepmann.de/nix-journey-part-1.html%23howIFinallyStartedWithNixNotNixos)
* [https://mynixos.com/mynixos/demo-linode-nginx](https://mynixos.com/mynixos/demo-linode-nginx)
* [https://nixcademy.com/cheatsheet.html](https://nixcademy.com/cheatsheet.html)
* [https://landscape.nixlang.wiki/](https://landscape.nixlang.wiki/)
* [https://devos.divnix.com/index.html](https://devos.divnix.com/index.html)
* [https://nixos-and-flakes.thiscute.world/](https://nixos-and-flakes.thiscute.world/)

an integer is required

In [15]: stat.S_ISLNK(os.lstat("/home/isaac/.config/wezterm").st_mode) Out[15]: False

In [16]: stat.S_ISLNK(os.lstat("/home/isaac/.config/wezterm/wezterm.lua").st_mode) Out[16]: True

In [17]: stat.S_ISLNK(os.lstat("/home/isaac/.config/nvim").st_mode) Out[17]: False

In [18]: stat.S_ISLNK(os.lstat("/home/isaac/.config/nvim/init.lua").st_mode) Out[18]: True

In [19]: os.readlink("/home/isaac/.config/wezterm/wezterm.lua") Out[19]: '/nix/store/xbbcd7ik76y7khhgn218nikazn4f447a-home-manager-files/.config/wezterm/wezterm.lua'

→ [](https://duckduckgo.com/?q%3Dcontent-addressed%2Bstorage%2Bin%2Bnix%26ia%3Dweb)
    * [https://duckduckgo.com/?q=content-addressed+storage+in+nix&ia=web](https://duckduckgo.com/?q%3Dcontent-addressed%2Bstorage%2Bin%2Bnix%26ia%3Dweb)
* [https://github.com/knoc-off/nixos](https://github.com/knoc-off/nixos)


* NixOS, Nix [](https://www.reddit.com/r/unixporn/s/ESi62fFi1j)
    * [https://www.reddit.com/r/unixporn/s/ESi62fFi1j](https://www.reddit.com/r/unixporn/s/ESi62fFi1j)
    * [https://github.com/tweag/rfcs/blob/flakes/rfcs/0049-flakes.md](https://github.com/tweag/rfcs/blob/flakes/rfcs/0049-flakes.md)
* [](https://www.tweag.io/blog/2021-12-20-nix-2.4/)
    * [https://www.tweag.io/blog/2021-12-20-nix-2.4/](https://www.tweag.io/blog/2021-12-20-nix-2.4/)
* [](https://discourse.nixos.org/t/do-gui-applications-not-work-on-non-nixos-using-nixpkgs-only/19070/16)
    * [https://discourse.nixos.org/t/do-gui-applications-not-work-on-non-nixos-using-nixpkgs-only/19070/16](https://discourse.nixos.org/t/do-gui-applications-not-work-on-non-nixos-using-nixpkgs-only/19070/16)
    * [https://www.youtube.com/watch?v=c447uYCePAo](https://www.youtube.com/watch?v%3Dc447uYCePAo)
* [](https://typednix.dev/)
    * [https://typednix.dev/](https://typednix.dev/)
* [](https://nixos.org/manual/nixpkgs/unstable/%23python)
    * [https://nixos.org/manual/nixpkgs/unstable/#python](https://nixos.org/manual/nixpkgs/unstable/%23python)
* [](https://mtlynch.io/notes/nix-dev-environment/)
    * [https://mtlynch.io/notes/nix-dev-environment/](https://mtlynch.io/notes/nix-dev-environment/)
* [](https://mynixos.com/mynixos/demo-raspberry-transmission)
    * [https://mynixos.com/mynixos/demo-raspberry-transmission](https://mynixos.com/mynixos/demo-raspberry-transmission)
* [](https://gpt4all.io/index.html)
    * [https://gpt4all.io/index.html](https://gpt4all.io/index.html)
    * [https://www.youtube.com/watch?v=6L0H92-JdHA&pp=ygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg](https://www.youtube.com/watch?v%3D6L0H92-JdHA%26pp%3DygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg)
    * [https://www.youtube.com/watch?v=M7XSp-ubCy0&pp=ygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg](https://www.youtube.com/watch?v%3DM7XSp-ubCy0%26pp%3DygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg)
* [](https://thiscute.world/en/posts/nixos-and-flake-basics/)
    * [https://thiscute.world/en/posts/nixos-and-flake-basics/](https://thiscute.world/en/posts/nixos-and-flake-basics/)
* [](https://xeiaso.net/blog/how-i-start-nix-2020-03-08/)
    * [https://xeiaso.net/blog/how-i-start-nix-2020-03-08/](https://xeiaso.net/blog/how-i-start-nix-2020-03-08/)
* [](https://dimitrije.website/posts/2023-03-04-nix-ocaml.html)
    * [https://dimitrije.website/posts/2023-03-04-nix-ocaml.html](https://dimitrije.website/posts/2023-03-04-nix-ocaml.html)
* [](https://thenewstack.io/nixos-a-combination-linux-os-and-package-manager/)
    * [https://thenewstack.io/nixos-a-combination-linux-os-and-package-manager/](https://thenewstack.io/nixos-a-combination-linux-os-and-package-manager/)
* [](https://github.com/nix-community/poetry2nix)
    * [https://github.com/nix-community/poetry2nix](https://github.com/nix-community/poetry2nix)
* [](https://github.com/linuxmobile/kaku)
    * [https://github.com/linuxmobile/kaku](https://github.com/linuxmobile/kaku)
    * [https://github.com/mikeroyal/NixOS-Guide](https://github.com/mikeroyal/NixOS-Guide)
* [](https://www.google.com/url?q=http://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
    * [http://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/](https://www.google.com/url?q=http://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
* [](https://github.com/henriquekirchheck/nixos-flake)
    * [https://github.com/henriquekirchheck/nixos-flake](https://github.com/henriquekirchheck/nixos-flake)
* [](https://github.com/simplex-chat/haskell.nix)
    * [https://github.com/simplex-chat/haskell.nix](https://github.com/simplex-chat/haskell.nix)
    * [https://www.youtube.com/watch?v=NEbzVKkjXUg](https://www.youtube.com/watch?v%3DNEbzVKkjXUg)
* [](https://mynixos.com/pricing)
    * [https://mynixos.com/pricing](https://mynixos.com/pricing)
* [](https://github.com/brainrake/nixos-tutorial)
    * [https://github.com/brainrake/nixos-tutorial](https://github.com/brainrake/nixos-tutorial)
    * [https://gist.github.com/danmack/b76ef257e0fd9dda906b4c860f94a591](https://gist.github.com/danmack/b76ef257e0fd9dda906b4c860f94a591)
    * [https://github.com/zupo/nix](https://github.com/zupo/nix)
* [](https://github.com/zupo/nix/blob/master/rpi.nix)
    * [https://github.com/zupo/nix/blob/master/rpi.nix](https://github.com/zupo/nix/blob/master/rpi.nix)
* [](https://nixos-and-flakes.thiscute.world/)
    * [https://nixos-and-flakes.thiscute.world/](https://nixos-and-flakes.thiscute.world/)
* [](https://mynixos.com/search?q%3Dgtk)
    * [https://mynixos.com/search?q=gtk](https://mynixos.com/search?q%3Dgtk)
    * [https://www.youtube.com/watch?v=1ED9b7ERTzI&pp=ygUXaG93IHRvIHJlYWxseSBsZWFybiBOaXg%3D](https://www.youtube.com/watch?v%3D1ED9b7ERTzI%26pp%3DygUXaG93IHRvIHJlYWxseSBsZWFybiBOaXg%253D)
* [](https://www.reddit.com/r/NixOS/s/isBCetb09h)
    * [https://www.reddit.com/r/NixOS/s/isBCetb09h](https://www.reddit.com/r/NixOS/s/isBCetb09h)
    * [https://www.reddit.com/r/browsers/s/7RTbiwUx4q](https://www.reddit.com/r/browsers/s/7RTbiwUx4q)
    * [https://www.reddit.com/r/unixporn/s/Fk9sUOv7FY](https://www.reddit.com/r/unixporn/s/Fk9sUOv7FY)
* [](https://www.reddit.com/r/NixOS/s/AuPlyOQFIK)
    * [https://www.reddit.com/r/NixOS/s/AuPlyOQFIK](https://www.reddit.com/r/NixOS/s/AuPlyOQFIK)
* [](https://github.com/CallMeCaleb94/KyniFlakes)
    * [https://github.com/CallMeCaleb94/KyniFlakes](https://github.com/CallMeCaleb94/KyniFlakes)
* [](https://www.tweag.io/blog/2020-06-25-eval-cache/)
    * [https://www.tweag.io/blog/2020-06-25-eval-cache/](https://www.tweag.io/blog/2020-06-25-eval-cache/)
* [](https://github.com/snowfallorg/lib)
    * [https://github.com/snowfallorg/lib](https://github.com/snowfallorg/lib)
* [](https://github.com/CallMeCaleb94/KyniFlakes)
    * [https://github.com/CallMeCaleb94/KyniFlakes](https://github.com/CallMeCaleb94/KyniFlakes)
    * [https://github.com/SoraTenshi/helix/tree/master](https://github.com/SoraTenshi/helix/tree/master)
    * [https://www.reddit.com/r/NixOS/s/0T63UgILLY](https://www.reddit.com/r/NixOS/s/0T63UgILLY)
* [](https://github.com/thomascft/dotfiles/tree/nixos)
    * [https://github.com/thomascft/dotfiles/tree/nixos](https://github.com/thomascft/dotfiles/tree/nixos)
* [](https://hg.sr.ht/~ab/)
    * [https://hg.sr.ht/~ab/](https://hg.sr.ht/~ab/)
    * [https://discourse.nixos.org/t/creating-a-cuda-enabled-development-environment-for-machine-learning-on-nixos/30637](https://discourse.nixos.org/t/creating-a-cuda-enabled-development-environment-for-machine-learning-on-nixos/30637)
    * [https://news.ycombinator.com/item?id=30917809](https://news.ycombinator.com/item?id%3D30917809)
    * [https://www.youtube.com/watch?v=utoj6annRK0&pp=ygUSbml4b3MgaG9tZSBtYW5hZ2Vy](https://www.youtube.com/watch?v%3Dutoj6annRK0%26pp%3DygUSbml4b3MgaG9tZSBtYW5hZ2Vy)
* [](https://www.slice.zone/blog/nix-in-practice)
    * [https://www.slice.zone/blog/nix-in-practice](https://www.slice.zone/blog/nix-in-practice)
* [](https://www.tweag.io/blog/2020-09-10-nix-cas/)
    * [https://www.tweag.io/blog/2020-09-10-nix-cas/](https://www.tweag.io/blog/2020-09-10-nix-cas/)
* [](https://nixos.wiki/wiki/Android)
    * [https://nixos.wiki/wiki/Android](https://nixos.wiki/wiki/Android)
* [](https://discourse.nixos.org/t/a-proposal-for-replacing-the-nix-worker-protocol/20926/5)
    * [https://discourse.nixos.org/t/a-proposal-for-replacing-the-nix-worker-protocol/20926/5](https://discourse.nixos.org/t/a-proposal-for-replacing-the-nix-worker-protocol/20926/5)
* [](https://developer.holochain.org/get-started/install-advanced/)
    * [https://developer.holochain.org/get-started/install-advanced/](https://developer.holochain.org/get-started/install-advanced/)
* [](https://github.com/RaitoBezarius/buildxyz)
    * [https://github.com/RaitoBezarius/buildxyz](https://github.com/RaitoBezarius/buildxyz)
* [](https://discourse.nixos.org/t/2023-nix-developer-dialogues-live-stream/35386)
    * [https://discourse.nixos.org/t/2023-nix-developer-dialogues-live-stream/35386](https://discourse.nixos.org/t/2023-nix-developer-dialogues-live-stream/35386)
* [](https://github.com/Hexlet/awesome-lsp-servers)
    * [https://github.com/Hexlet/awesome-lsp-servers](https://github.com/Hexlet/awesome-lsp-servers)
* [](https://news.ycombinator.com/item?id%3D38237696)
    * [dotfiles-nix/flake.nix at main · notusknot/dotfiles-nix](https://github.com/notusknot/dotfiles-nix/blob/main/flake.nix)
* [](https://search.nixos.org/packages?channel%3D23.11%26show%3Dcosmic-edit%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dcosmic)
    * [NixOS Search - Packages - cosmic](https://search.nixos.org/packages?channel%3D23.11%26show%3Dcosmic-edit%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dcosmic)
* [](https://nix-community.github.io/home-manager/)
    * [Home Manager Manual](https://nix-community.github.io/home-manager/)
* [](https://discourse.nixos.org/t/nixos-configuration-file-organisation/19612/5)
    * [NixOS Configuration File Organisation - Help - NixOS Discourse](https://discourse.nixos.org/t/nixos-configuration-file-organisation/19612/5)
* [](https://nix-community.github.io/home-manager/index.xhtml%23ch-nix-flakes)
    * [Home Manager Manual](https://nix-community.github.io/home-manager/index.xhtml%23ch-nix-flakes)
* [](https://nixos.org/manual/nixos/stable/index.html%23sec-writing-modules)
    * [NixOS 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixos/stable/index.html%23sec-writing-modules)
* [](https://www.bekk.christmas/post/2021/13/deterministic-systems-with-nix)
    * [Deterministic systems with Nix](https://www.bekk.christmas/post/2021/13/deterministic-systems-with-nix)
* [](https://github.com/nix-community/home-manager)
    * [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager)
* [](https://github.com/Misterio77/nix-starter-configs)
    * [Misterio77/nix-starter-configs: Simple and documented config templates to help you get started with NixOS + home-manager + flakes. All the boilerplate you need!](https://github.com/Misterio77/nix-starter-configs)
* [](https://github.com/yelircaasi/nixos-config/tree/main)
    * [yelircaasi/nixos-config: My NixOS configuration files. I'm new to NixOS, so take all of this with a grain of salt.](https://github.com/yelircaasi/nixos-config/tree/main)
* [](https://github.com/TLATER/dotfiles/tree/master)
    * [TLATER/dotfiles: Dotfiles deployed with nix/home-manager. Feel free to take what you like!](https://github.com/TLATER/dotfiles/tree/master)
* [](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlem)
    * [NixOS Search - Packages - lem](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlem)
* [](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
    * [Ultimate NixOS Guide | Flakes | Home-manager - YouTube](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
* [](https://ryantm.github.io/nixpkgs/functions/library/options/)
    * [lib.options: NixOS / nixpkgs option handling | nixpkgs](https://ryantm.github.io/nixpkgs/functions/library/options/)
* [](https://search.nixos.org/packages?channel%3D23.11%26show%3Djira-cli-go%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Djira)
    * [NixOS Search - Packages - jira](https://search.nixos.org/packages?channel%3D23.11%26show%3Djira-cli-go%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Djira)
* [](https://learnxinyminutes.com/docs/nix/)
    * [Learn nix in Y Minutes](https://learnxinyminutes.com/docs/nix/)
* [](https://discourse.nixos.org/t/home-stateversion-is-not-of-type-one-of-18-09-19-03-19-09-20-03-20-09-21-03-21-05-21-11/19691)
    * [home.stateVersion is not of type `one of "18.09", "19.03", "19.09", "20.03", "20.09", "21.03", "21.05", "21.11"' - Help - NixOS Discourse](https://discourse.nixos.org/t/home-stateversion-is-not-of-type-one-of-18-09-19-03-19-09-20-03-20-09-21-03-21-05-21-11/19691)
* [](https://www.bekk.christmas/post/2021/13/deterministic-systems-with-nix)
    * [Deterministic systems with Nix](https://www.bekk.christmas/post/2021/13/deterministic-systems-with-nix)
* [](https://discourse.nixos.org/t/mkif-vs-if-then/28521)
    * [mkIf vs if / then - Help - NixOS Discourse](https://discourse.nixos.org/t/mkif-vs-if-then/28521)
* [](https://mynixos.com/search?q%3Dkanata)
    * [kanata - MyNixOS](https://mynixos.com/search?q%3Dkanata)
* [](https://nix-community.github.io/home-manager/release-notes.xhtml%23sec-release-22.11-state-version-changes)
    * [Appendix D. Release Notes](https://nix-community.github.io/home-manager/release-notes.xhtml%23sec-release-22.11-state-version-changes)
* [](https://www.reddit.com/r/NixOS/comments/10ym1ed/any_documentation_on_keyd_under_nixos/)
    * [Any documentation on keyd under NixOS? : r/NixOS](https://www.reddit.com/r/NixOS/comments/10ym1ed/any_documentation_on_keyd_under_nixos/)
* [](https://github.com/morphykuffour/nix/blob/011bf23ba8bcf95c8cdd163ae746776ee4f7d00e/pkgs/keyd/default.nix)
    * [nix/pkgs/keyd/default.nix at 011bf23ba8bcf95c8cdd163ae746776ee4f7d00e · morphykuffour/nix](https://github.com/morphykuffour/nix/blob/011bf23ba8bcf95c8cdd163ae746776ee4f7d00e/pkgs/keyd/default.nix)
* [](https://www.reddit.com/r/NixOS/comments/15coxtr/homemanager_using_hostname_for_hostspecific/)
    * [Home-manager: using hostname for host-specific settings : r/NixOS](https://www.reddit.com/r/NixOS/comments/15coxtr/homemanager_using_hostname_for_hostspecific/)
* [](https://hugoreeves.com/posts/2019/nix-home/)
    * [Your home in Nix (dotfile management) - Hugo Reeves](https://hugoreeves.com/posts/2019/nix-home/)
* [](https://haseebmajid.dev/posts/2023-09-12-how-i-configure-nixos-as-part-of-my-development-workflow/)
    * [My NixOS Dotfiles Explained | Haseeb Majid](https://haseebmajid.dev/posts/2023-09-12-how-i-configure-nixos-as-part-of-my-development-workflow/)
* [](https://github.com/mrzool/unix-as-ide)
    * [mrzool/unix-as-ide: The ebook version of Tom Ryder's series on the Unix programming environment](https://github.com/mrzool/unix-as-ide)
* [](https://framagit.org/vegaelle/nix-nvim)
    * [gaelle / nix-nvim · GitLab](https://framagit.org/vegaelle/nix-nvim)
* [](https://search.nixos.org/packages?channel%3Dunstable%26show%3Dtre-command%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dtre)
    * [NixOS Search - Packages - tre](https://search.nixos.org/packages?channel%3Dunstable%26show%3Dtre-command%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dtre)
* [](https://github.com/NixOS/nixpkgs/issues/191128)
    * [How to manually replicate/reproduce/obtain the sha256 hash specified in Nix with fetchgit or fetchFromGitHub? · Issue #191128 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/issues/191128)
* [](https://www.youtube.com/watch?v%3DYZAnJ0rwREA)
    * [Neovim and Nix home-manager: Supercharge Your Development Environment - YouTube](https://www.youtube.com/watch?v%3DYZAnJ0rwREA)
* [](https://www.youtube.com/watch?v%3DS3VBi6kHw5c%26t%3D3s)
    * [Nix flakes explained - YouTube](https://www.youtube.com/watch?v%3DS3VBi6kHw5c%26t%3D3s)
* [](https://www.youtube.com/watch?v%3D4ZoBGlkMPWI)
    * [Manage Nix Flake Inputs Like a Pro - YouTube](https://www.youtube.com/watch?v%3D4ZoBGlkMPWI)
* [](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
    * [Ultimate NixOS Guide | Flakes | Home-manager - YouTube](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
* [](https://www.youtube.com/watch?v%3DIrxCiNnXG4M%26t%3D61s)
    * [Beginners Guide to Nix EP1: Flakes - YouTube](https://www.youtube.com/watch?v%3DIrxCiNnXG4M%26t%3D61s)
* [](https://www.youtube.com/watch?v%3DyQwW8dkuHqw%26t%3D1s)
    * [Nix Dev Environments | Declare Your Coding Projects - YouTube](https://www.youtube.com/watch?v%3DyQwW8dkuHqw%26t%3D1s)
* [](https://github.com/nix-community/poetry2nix%23how-to-guides)
    * [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix%23how-to-guides)
* [](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Drpds)
    * [NixOS Search - Packages - rpds](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Drpds)
* [](https://discourse.nixos.org/t/creating-nixos-iso-for-an-older-laptop-with-i686-32bit/26002)
    * [Creating NixOS iso for an older Laptop with i686 (32bit) - Help - NixOS Discourse](https://discourse.nixos.org/t/creating-nixos-iso-for-an-older-laptop-with-i686-32bit/26002)
* [](https://discourse.nixos.org/t/home-manager-installed-apps-dont-show-up-in-applications-launcher/8523)
    * [Home-manager installed apps don't show up in Applications Launcher - Help - NixOS Discourse](https://discourse.nixos.org/t/home-manager-installed-apps-dont-show-up-in-applications-launcher/8523)
* [](https://github.com/danth/stylix/)
    * [danth/stylix: System-wide colorscheming and typography for NixOS](https://github.com/danth/stylix/)
* [](https://josiahalenbrown.substack.com/p/managing-your-nixos-configuration)
    * [Managing your NixOS configuration with Flakes and Home Manager!](https://josiahalenbrown.substack.com/p/managing-your-nixos-configuration)
* [](https://hugoreeves.com/posts/2019/nix-home/)
    * [Your home in Nix (dotfile management) - Hugo Reeves](https://hugoreeves.com/posts/2019/nix-home/)
* [](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
    * [Tutorial: Getting started with Home Manager for Nix | Mattia Gheda](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [](https://determinate.systems/posts/nix-home-env)
    * [Building a highly optimized home environment with Nix](https://determinate.systems/posts/nix-home-env)
* [](https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph)
    * [How to Enable Wayland on NixOS, or: Confusion, Conquest, Triumph](https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph)
* [](https://nixcademy.com/cheatsheet.html)
    * [Nix & NixOS CheatSheet](https://nixcademy.com/cheatsheet.html)
* [](https://nixlang.wiki/)
    * [NixLang Wiki | NixLang.wiki](https://nixlang.wiki/)
* [](https://github.com/symphorien/vim-nixhash/)
    * [symphorien/vim-nixhash: neovim plugin to automate fixing fake TOFU hashes when writing nix derivations](https://github.com/symphorien/vim-nixhash/)
* [](https://github.com/DavHau/nix-portable)
    * [DavHau/nix-portable: Nix - Static, Permissionless, Installation-free, Pre-configured](https://github.com/DavHau/nix-portable)
* [](https://www.youtube.com/watch?v%3DuS8Bx8nQots)
    * [I Have Fallen In 💕 Love With ❄️ NixOS | A Basic Introduction To NixOS - YouTube](https://www.youtube.com/watch?v%3DuS8Bx8nQots)
* [](https://github.com/mikeroyal/NixOS-Guide)
    * [GitHub - mikeroyal/NixOS-Guide: NixOS Guide. Learn all about the immutable Nix Operating System and the declarative Nix Expression Language.](https://github.com/mikeroyal/NixOS-Guide)
* [](https://nixos.wiki/wiki/Nix_to_Debian_phrasebook)
    * [Nix to Debian phrasebook - NixOS Wiki](https://nixos.wiki/wiki/Nix_to_Debian_phrasebook)
* [](https://www.youtube.com/watch?v%3DbbW6kgB5F2M)
    * [Gabriella Gonzalez, "How to Write a Nix Derivation" - YouTube](https://www.youtube.com/watch?v%3DbbW6kgB5F2M)
* [](https://nixos.org/manual/nix/stable/language/constructs.html)
    * [Language Constructs - Nix Reference Manual](https://nixos.org/manual/nix/stable/language/constructs.html)
* [](https://github.com/nix-community/home-manager)
    * [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager)
* [](https://discourse.nixos.org/t/nix-syntax-for-passing-arguments-to-imported-modules/31547/2)
    * [Nix syntax for passing arguments to imported Modules - Help - NixOS Discourse](https://discourse.nixos.org/t/nix-syntax-for-passing-arguments-to-imported-modules/31547/2)
* [](https://discourse.nixos.org/t/alternative-language/5218/10)
    * [Alternative language - NixOS Discourse](https://discourse.nixos.org/t/alternative-language/5218/10)
* [](https://discourse.nixos.org/t/alternative-language/5218)
    * [Alternative language - NixOS Discourse](https://discourse.nixos.org/t/alternative-language/5218)
* [](https://www.reddit.com/r/neovim/comments/106letr/manage_neovim_plugins_and_more_with_nix_and_home/)
    * [(4) Manage Neovim plugins (and more!) with Nix and Home Manager : neovim](https://www.reddit.com/r/neovim/comments/106letr/manage_neovim_plugins_and_more_with_nix_and_home/)
* [](https://github.com/nix-community/home-manager/blob/master/modules/programs/neovim.nix%23L47)
    * [home-manager/modules/programs/neovim.nix at master · nix-community/home-manager](https://github.com/nix-community/home-manager/blob/master/modules/programs/neovim.nix%23L47)
* [](https://distrowatch.com/table.php?distribution%3Dnixos)
    * [DistroWatch.com: NixOS](https://distrowatch.com/table.php?distribution%3Dnixos)
* [](https://www.slant.co/versus/2689/2700/~ubuntu_vs_nixos)
    * [Ubuntu vs NixOS detailed comparison as of 2024 - Slant](https://www.slant.co/versus/2689/2700/~ubuntu_vs_nixos)
* [](https://www.reddit.com/r/NixOS/comments/wtweio/security_updates_in_nixos/)
    * [Security updates in Nixos : r/NixOS](https://www.reddit.com/r/NixOS/comments/wtweio/security_updates_in_nixos/)
* [](https://nixos.wiki/wiki/Ubuntu_vs._NixOS)
    * [Ubuntu vs. NixOS - NixOS Wiki](https://nixos.wiki/wiki/Ubuntu_vs._NixOS)
* [](https://github.com/nix-community/nixos-anywhere)
    * [nix-community/nixos-anywhere: install nixos everywhere via ssh [maintainer=@numtide]](https://github.com/nix-community/nixos-anywhere)
* [](https://nixos.wiki/wiki/TUXEDO_Devices)
    * [TUXEDO Devices - NixOS Wiki](https://nixos.wiki/wiki/TUXEDO_Devices)
* [](https://nixos.org/manual/nixos/unstable/index.html%23sec-luks-file-systems)
    * [NixOS 24.05 manual | Nix & NixOS](https://nixos.org/manual/nixos/unstable/index.html%23sec-luks-file-systems)
* [](https://nixos.wiki/wiki/Full_Disk_Encryption)
    * [Full Disk Encryption - NixOS Wiki](https://nixos.wiki/wiki/Full_Disk_Encryption)
* [](https://gist.github.com/mara-schulke/43e2632ce73d94028f50f438037c1578)
    * [Installing NixOS with Full Disk Encryption](https://gist.github.com/mara-schulke/43e2632ce73d94028f50f438037c1578)
* [](https://nixos.wiki/wiki/Security)
    * [Security - NixOS Wiki](https://nixos.wiki/wiki/Security)
* [](https://nixos.org/manual/nixos/unstable/%23sec-installation)
    * [NixOS 24.05 manual | Nix & NixOS](https://nixos.org/manual/nixos/unstable/%23sec-installation)
* [](https://nixos.org/manual/nixos/stable/%23sec-installing-from-other-distro)
    * [NixOS 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixos/stable/%23sec-installing-from-other-distro)
* [](https://www.reddit.com/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/)
    * [Is it possible to morph Debian into NixOS? : r/NixOS](https://www.reddit.com/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/)
* [](https://discourse.nixos.org/t/python-package-install-using-poetry-nix/10624/12)
    * [Python package install using poetry + nix - NixOS Discourse](https://discourse.nixos.org/t/python-package-install-using-poetry-nix/10624/12)
* [](https://stesie.github.io/2016/08/nixos-pt1)
    * [On Replacing Ubuntu with NixOS (part 1)](https://stesie.github.io/2016/08/nixos-pt1)
* [](https://github.com/nix-community/nixpkgs-wayland)
    * [nix-community/nixpkgs-wayland: Automated, pre-built packages for Wayland (sway/wlroots) tools for NixOS. [maintainers=@colemickens, @Artturin]](https://github.com/nix-community/nixpkgs-wayland)
* [](https://discourse.nixos.org/t/adding-non-python-dependencies-to-poetry2nix-application/26755/6)
    * [Adding non-python dependencies to poetry2nix application - Help - NixOS Discourse](https://discourse.nixos.org/t/adding-non-python-dependencies-to-poetry2nix-application/26755/6)
* [](https://github.com/nix-community/poetry2nix/issues/1337)
    * [Poetry2nix: mismatch cryptography sha256 but unable to modify · Issue #1337 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1337)
* [](https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/interpreters/python/mk-python-derivation.nix)
    * [nixpkgs/pkgs/development/interpreters/python/mk-python-derivation.nix at master · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/interpreters/python/mk-python-derivation.nix)
* [](https://github.com/nix-community/poetry2nix/issues/594)
    * [Question: How to specify runtime dependencies of python sub-dependencies · Issue #594 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/594)
* [](https://github.com/NixOS/nixpkgs/pull/176950/commits/4a9a41af7b33472c5d5c0dd443f350f4e9cb6599)
    * [fetchFromGitLab: support for private repositories by panicgh · Pull Request #176950 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/pull/176950/commits/4a9a41af7b33472c5d5c0dd443f350f4e9cb6599)
* [](https://github.com/nix-community/poetry2nix/issues/1423)
    * [Private Repository Authentication not working for new nix-commands and flakes (pure mode) · Issue #1423 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1423)
* [](https://github.com/nix-community/poetry2nix/issues/1244)
    * [netrc FileNotFoundError for private PyPI server · Issue #1244 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1244)
* [](https://github.com/tweag/jupyenv)
    * [tweag/jupyenv: Declarative and reproducible Jupyter environments - powered by Nix](https://github.com/tweag/jupyenv)
* [](https://github.com/nix-community/poetry2nix/pull/390/files%23diff-25f00f391a440414afdc84d7191b5892db3492e1c0b9a45f9063be83e21d75e4R154)
    * [Enable private pypi repositories with credentials by rskew · Pull Request #390 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/pull/390/files%23diff-25f00f391a440414afdc84d7191b5892db3492e1c0b9a45f9063be83e21d75e4R154)
* [](https://github.com/NixOS/nixpkgs/issues/105593)
    * [Editable install with poetry · Issue #105593 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/issues/105593)
* [](https://peppe.rs/posts/novice_nix:_flake_templates/)
    * [Novice Nix: Flake Templates · peppe.rs](https://peppe.rs/posts/novice_nix:_flake_templates/)
* [](https://dev.to/serokell/practical-nix-flakes-5e6p)
    * [Practical Nix Flakes - DEV Community](https://dev.to/serokell/practical-nix-flakes-5e6p)
* [](https://github.com/nampdn/my-cheatsheet/blob/802116b02deffdf33e1e4dc63dff56b0b8998b71/nix/setup-nix.md?plain%3D1%23L490)
    * [my-cheatsheet/nix/setup-nix.md at 802116b02deffdf33e1e4dc63dff56b0b8998b71 · nampdn/my-cheatsheet](https://github.com/nampdn/my-cheatsheet/blob/802116b02deffdf33e1e4dc63dff56b0b8998b71/nix/setup-nix.md?plain%3D1%23L490)
* [](https://github.com/thiagokokada/nix-alien)
    * [thiagokokada/nix-alien: Run unpatched binaries on Nix/NixOS](https://github.com/thiagokokada/nix-alien)
* [](https://search.nixos.org/packages?channel%3D23.11%26show%3Dihaskell%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dipython)
    * [NixOS Search - Packages - ipython](https://search.nixos.org/packages?channel%3D23.11%26show%3Dihaskell%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dipython)
* [](https://search.nixos.org/packages?channel%3D23.11%26show%3DvimPlugins.lazy-lsp-nvim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlazy-lsp)
    * [NixOS Search - Packages - lazy-lsp](https://search.nixos.org/packages?channel%3D23.11%26show%3DvimPlugins.lazy-lsp-nvim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlazy-lsp)
* [](https://blog.eigenvalue.net/2023-nix-fetch-with-authentication/)
    * [Peter Kolloch - Blog - Nix: Authenticated Fetches from GitLab - Reading about Related Work](https://blog.eigenvalue.net/2023-nix-fetch-with-authentication/)
* [](https://discourse.nixos.org/t/how-to-fetchurl-with-credentials/11994)
    * [How to fetchurl with credentials - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-fetchurl-with-credentials/11994)
* [](https://github.com/NixOS/nixpkgs/blob/nixos-23.11/pkgs/development/python-modules/halo/default.nix%23L28)
    * [nixpkgs/pkgs/development/python-modules/halo/default.nix at nixos-23.11 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-23.11/pkgs/development/python-modules/halo/default.nix%23L28)
* [](https://nixos.org/manual/nixpkgs/stable/%23chap-pkgs-fetchers)
    * [Nixpkgs 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixpkgs/stable/%23chap-pkgs-fetchers)
* [](https://github.com/NixNeovim/NixNeovim/blob/main/flake.nix)
    * [NixNeovim/flake.nix at main · NixNeovim/NixNeovim](https://github.com/NixNeovim/NixNeovim/blob/main/flake.nix)
* [](https://github.com/nix-community/poetry2nix?tab%3Dreadme-ov-file%23mkpoetryeditablepackage)
    * [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix?tab%3Dreadme-ov-file%23mkpoetryeditablepackage)
* [](https://discourse.nixos.org/t/devshells-and-poetry2nix/26837)
    * [devShells and poetry2nix - Development - NixOS Discourse](https://discourse.nixos.org/t/devshells-and-poetry2nix/26837)
* [](https://discourse.nixos.org/t/accessing-a-private-github-repo-using-builtins-fetchgit/29610)
    * [Accessing a private GitHub repo using builtins.fetchGit? - Help - NixOS Discourse](https://discourse.nixos.org/t/accessing-a-private-github-repo-using-builtins-fetchgit/29610)
* [](https://discourse.nixos.org/t/unable-to-use-fetchgit-on-private-git-repo/24280)
    * [Unable to use fetchgit on private git repo - Help - NixOS Discourse](https://discourse.nixos.org/t/unable-to-use-fetchgit-on-private-git-repo/24280)
* [](https://github.com/NixOS/nixpkgs/pull/176950)
    * [fetchFromGitLab: support for private repositories by panicgh · Pull Request #176950 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/pull/176950)
* [](https://nixos.org/manual/nix/stable/package-management/garbage-collection.html)
    * [Garbage Collection - Nix Reference Manual](https://nixos.org/manual/nix/stable/package-management/garbage-collection.html)
* [](https://jade.fyi/blog/flakes-arent-real/)
    * [Flakes aren't real and cannot hurt you: a guide to using Nix flakes the non-flake way - jade's www site](https://jade.fyi/blog/flakes-arent-real/)
* [](https://ipetkov.dev/blog/tips-and-tricks-for-nix-flakes/)
    * [Tips and Tricks for Nix Flakes | Ivan Petkov](https://ipetkov.dev/blog/tips-and-tricks-for-nix-flakes/)
* [](https://serokell.io/blog/practical-nix-flakes)
    * [Practical Nix Flakes](https://serokell.io/blog/practical-nix-flakes)
* [](https://ghedam.at/a-tour-of-nix-flakes)
    * [A Tour of Nix Flakes | Mattia Gheda](https://ghedam.at/a-tour-of-nix-flakes)
* [](https://xeiaso.net/blog/nix-flakes-3-2022-04-07/)
    * [Nix Flakes: Exposing and using NixOS Modules - Xe Iaso](https://xeiaso.net/blog/nix-flakes-3-2022-04-07/)
* [](https://github.com/nix-community/poetry2nix/blob/master/tests/editable/default.nix)
    * [poetry2nix/tests/editable/default.nix at master · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/blob/master/tests/editable/default.nix)
* [](https://discourse.nixos.org/c/learn/9)
    * [Latest Help topics - NixOS Discourse](https://discourse.nixos.org/c/learn/9)
* [](https://discourse.nixos.org/t/fetchfromgitlab-support-for-private-repositories/22900)
    * [fetchFromGitLab: support for private repositories - Development - NixOS Discourse](https://discourse.nixos.org/t/fetchfromgitlab-support-for-private-repositories/22900)
* [](https://discourse.nixos.org/t/preparing-a-nix-flake-for-a-python-program-migra-using-poetry/12030)
    * [Preparing a Nix flake for a Python program (Migra, using Poetry) - Help - NixOS Discourse](https://discourse.nixos.org/t/preparing-a-nix-flake-for-a-python-program-migra-using-poetry/12030)
* [](https://gitlab.com/javimarsal/devtec-guides/-/blob/main/Set%2520a%2520consistent%2520cursor%2520theme%2520for%2520nix%2520UI%2520packages/guide-english/README.md?ref_type%3Dheads)
    * [Set a consistent cursor theme for nix UI packages/guide-english/README.md · main · Javier Martínez / devtec-guides · GitLab](https://gitlab.com/javimarsal/devtec-guides/-/blob/main/Set%2520a%2520consistent%2520cursor%2520theme%2520for%2520nix%2520UI%2520packages/guide-english/README.md?ref_type%3Dheads)
* [](https://github.com/carlthome/poetry2nix-example)
    * [carlthome/poetry2nix-example: Playing around with poetry2nix to learn more about Nix for Python development](https://github.com/carlthome/poetry2nix-example)
* [](https://www.youtube.com/watch?v%3DS3VBi6kHw5c%26t%3D3s)
    * [Nix flakes explained - YouTube](https://www.youtube.com/watch?v%3DS3VBi6kHw5c%26t%3D3s)
* [](https://www.youtube.com/watch?v%3D4ZoBGlkMPWI)
    * [Manage Nix Flake Inputs Like a Pro - YouTube](https://www.youtube.com/watch?v%3D4ZoBGlkMPWI)
* [](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
    * [Ultimate NixOS Guide | Flakes | Home-manager - YouTube](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
* [](https://www.youtube.com/watch?v%3DIrxCiNnXG4M%26t%3D61s)
    * [Beginners Guide to Nix EP1: Flakes - YouTube](https://www.youtube.com/watch?v%3DIrxCiNnXG4M%26t%3D61s)
* [](https://www.youtube.com/watch?v%3DyQwW8dkuHqw%26t%3D1s)
    * [Nix Dev Environments | Declare Your Coding Projects - YouTube](https://www.youtube.com/watch?v%3DyQwW8dkuHqw%26t%3D1s)
* [](https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html)
    * [Installing NixOS on a Raspberry Pi — nix.dev documentation](https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html)
* [](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_4)
    * [NixOS on ARM/Raspberry Pi 4 - NixOS Wiki](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_4)
* [](https://www.reddit.com/r/NixOS/comments/18skfx9/introducing_lazynixhelper_use_your_existing/)
    * [(3) Introducing Lazy-Nix-Helper: use your existing (Lazy-based) neovim config on NixOS : NixOS](https://www.reddit.com/r/NixOS/comments/18skfx9/introducing_lazynixhelper_use_your_existing/)
* [](https://github.com/b-src/lazy-nix-helper.nvim)
    * [b-src/lazy-nix-helper.nvim: Neovim plugin allowing a single neovim configuration with the Lazy plugin manager to be used on NixOS and other platforms](https://github.com/b-src/lazy-nix-helper.nvim)
* [](https://github.com/NixOS/nixpkgs-channels/blob/nixos-unstable/pkgs/misc/vim-plugins/build-vim-plugin.nix)
    * [nixpkgs-channels/pkgs/misc/vim-plugins/build-vim-plugin.nix at nixos-unstable · NixOS/nixpkgs-channels](https://github.com/NixOS/nixpkgs-channels/blob/nixos-unstable/pkgs/misc/vim-plugins/build-vim-plugin.nix)
* [](https://github.com/NixOS/nixpkgs/blob/8b735381322a1f8fff46add535f1fb5aea71e2da/pkgs/applications/editors/vim/plugins/vim-clap/default.nix%23L58)
    * [nixpkgs/pkgs/applications/editors/vim/plugins/vim-clap/default.nix at 8b735381322a1f8fff46add535f1fb5aea71e2da · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/8b735381322a1f8fff46add535f1fb5aea71e2da/pkgs/applications/editors/vim/plugins/vim-clap/default.nix%23L58)
* [](https://github.com/nix-community/rnix-parser)
    * [nix-community/rnix-parser: A Nix parser written in Rust [maintainer=@oberblastmeister]](https://github.com/nix-community/rnix-parser)
* [](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi)
    * [NixOS on ARM/Raspberry Pi - NixOS Wiki](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi)
* [](https://github.com/lucernae/nixos-pi/)
    * [lucernae/nixos-pi: How to install NixOS on raspberry PI](https://github.com/lucernae/nixos-pi/)
* [](https://eipi.xyz/blog/installing-nixos-on-a-raspberry-pi-3/)
    * [Installing NixOS on a Raspberry Pi | eipi.xyz](https://eipi.xyz/blog/installing-nixos-on-a-raspberry-pi-3/)
* [](https://duckduckgo.com/?q%3Dconfigure%2Bemacs%2Bon%2Bnixos%26ia%3Dweb)
    * [configure emacs on nixos at DuckDuckGo](https://duckduckgo.com/?q%3Dconfigure%2Bemacs%2Bon%2Bnixos%26ia%3Dweb)
* [](https://www.youtube.com/watch?v%3DWZBfPbpGDOU)
    * [Setting up Emacs on NixOS - YouTube](https://www.youtube.com/watch?v%3DWZBfPbpGDOU)
* [](https://www.heinrichhartmann.com/posts/2021-08-08-nix-emacs/)
    * [First Steps with Nix - Building emacs](https://www.heinrichhartmann.com/posts/2021-08-08-nix-emacs/)
* [](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064)
    * [GitHub - numtide/system-manager: Manage system config using nix on any distro - Links - NixOS Discourse](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064)
* [](https://aldoborrero.com/posts/2022/12/02/learn-how-to-use-the-nix-repl-effectively/)
    * [Learn how to use the Nix REPL effectively - Aldo Borrero](https://aldoborrero.com/posts/2022/12/02/learn-how-to-use-the-nix-repl-effectively/)
* [](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/8)
    * [GitHub - numtide/system-manager: Manage system config using nix on any distro - Links - NixOS Discourse](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/8)
* [](https://discourse.nixos.org/t/feature-discussion-declarative-flatpak-configuration/26767/3)
    * [[Feature Discussion] Declarative Flatpak Configuration? - Development - NixOS Discourse](https://discourse.nixos.org/t/feature-discussion-declarative-flatpak-configuration/26767/3)
* [](https://www.youtube.com/watch?v%3DUC2StObYQIc)
    * [[Tech Maid] Running Software On NixOS - YouTube](https://www.youtube.com/watch?v%3DUC2StObYQIc)
* [](https://www.youtube.com/watch?v%3DACybVzRvDhs)
    * [You Should Use Flakes Right Away in NixOS! - YouTube](https://www.youtube.com/watch?v%3DACybVzRvDhs)
* [](https://www.youtube.com/watch?v%3Dt8ydCYe9Y3M)
    * [Nix From Nothing #1 | Let's Learn Nix & NixOS! - YouTube](https://www.youtube.com/watch?v%3Dt8ydCYe9Y3M)
* [](https://news.ycombinator.com/item?id%3D35170465)
    * [What advantages does Flatpak offer over Nix? The](https://news.ycombinator.com/item?id%3D35170465)
* [](https://www.youtube.com/watch?v%3D9o_A2loSH-0)
    * [The Nix Hour #30 [2nix tooling differences, flakes motivation] - YouTube](https://www.youtube.com/watch?v%3D9o_A2loSH-0)
* [](https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs)
    * [packaging - How to package my software in nix or write my own package derivation for nixpkgs - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs)
* [](https://jvns.ca/blog/2023/02/28/some-notes-on-using-nix/)
    * [Some notes on using nix](https://jvns.ca/blog/2023/02/28/some-notes-on-using-nix/)
* [](https://jvns.ca/blog/2023/03/03/how-do-nix-builds-work-/)
    * [How do Nix builds work?](https://jvns.ca/blog/2023/03/03/how-do-nix-builds-work-/)
* [](https://www.youtube.com/watch?v%3DsSxGEHakfuc)
    * [Is NixOS Overrated? The Linux Cast The Linux Cast • • 4,1 K visualizaciones hace 4 días Nuevo](https://www.youtube.com/watch?v%3DsSxGEHakfuc)
* [](https://www.youtube.com/watch?v%3DACybVzRvDhs)
    * [You Should Use Flakes Right Away in NixOS! - YouTube](https://www.youtube.com/watch?v%3DACybVzRvDhs)
* [](https://discourse.nixos.org/)
    * [NixOS Discourse - NixOS community forum](https://discourse.nixos.org/)
* [](https://discourse.nixos.org/t/creating-nixos-iso-for-an-older-laptop-with-i686-32bit/26002/2)
    * [Creating NixOS iso for an older Laptop with i686 (32bit) - Help - NixOS Discourse](https://discourse.nixos.org/t/creating-nixos-iso-for-an-older-laptop-with-i686-32bit/26002/2)
* [](https://www.youtube.com/watch?v%3DTR0C76I59AI)
    * [NixOS Live Coding: Using our Flake's Nixpkgs for Nix-Shell, Building Systems on GitHub Actions - YouTube](https://www.youtube.com/watch?v%3DTR0C76I59AI)
* [](https://gist.github.com/danmack/b76ef257e0fd9dda906b4c860f94a591)
    * [install NIX package manager on Alpine Linux · GitHub](https://gist.github.com/danmack/b76ef257e0fd9dda906b4c860f94a591)
* [](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
    * [Simple Terminal (st) setup - Guides - NixOS Discourse](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
* [](https://github.com/cachix/nixpkgs-python)
    * [GitHub - cachix/nixpkgs-python: All Python versions, kept up-to-date on hourly basis using Nix.](https://github.com/cachix/nixpkgs-python)
* [](https://www.youtube.com/watch?v%3DSzyuLVzS5Fg)
    * [Writing your own NixOS modules for fun and (hopefully) profit - YouTube](https://www.youtube.com/watch?v%3DSzyuLVzS5Fg)
* [](https://www.youtube.com/watch?v%3D1ED9b7ERTzI)
    * [HOW to REALLY learn NixOS - YouTube](https://www.youtube.com/watch?v%3D1ED9b7ERTzI)
* [](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
    * [Simple Terminal (st) setup - Guides - NixOS Discourse](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
* [](https://www.cyberciti.biz/faq/debian-ubuntu-linux-binbash-vs-bindash-vs-binshshell/)
    * [Linux: What is Dash ( /bin/dash ) Shell? - nixCraft](https://www.cyberciti.biz/faq/debian-ubuntu-linux-binbash-vs-bindash-vs-binshshell/)
* [](https://viniciusmuller.github.io/blog/nix-flakes-cheat-sheet.html)
    * [Nix Flakes Cheat Sheet - Vinícius Müller's blog](https://viniciusmuller.github.io/blog/nix-flakes-cheat-sheet.html)
* [](https://yuanwang.ca/posts/getting-started-with-flakes.html)
    * [Getting started with Nix Flakes and devshell](https://yuanwang.ca/posts/getting-started-with-flakes.html)
* [](https://www.reddit.com/r/neovim/comments/196fqno/neovim_on_nixos/)
    * [(3) Neovim on NixOS? : neovim](https://www.reddit.com/r/neovim/comments/196fqno/neovim_on_nixos/)
* [](https://en.wikipedia.org/wiki/NixOS)
    * [NixOS - Wikipedia](https://en.wikipedia.org/wiki/NixOS)
* [](https://www.reddit.com/r/NixOS/comments/xrgszw/nixos_full_disk_encryption_with_tpm_and_secure/)
    * [NixOS: Full disk encryption with TPM and Secure Boot ? : r/NixOS](https://www.reddit.com/r/NixOS/comments/xrgszw/nixos_full_disk_encryption_with_tpm_and_secure/)
* [](https://github.com/elitak/nixos-infect/blob/master/nixos-infect)
    * [nixos-infect/nixos-infect at master · elitak/nixos-infect](https://github.com/elitak/nixos-infect/blob/master/nixos-infect)
* [](https://stackshare.io/stackups/nixos-vs-ubuntu)
    * [NixOS vs Ubuntu | What are the differences?](https://stackshare.io/stackups/nixos-vs-ubuntu)
* [](https://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
    * [NixOS: the good, the bad, and the ugly](https://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
* [](https://www.reddit.com/r/NixOS/comments/15ivyr3/anyone_got_poetry2nix_working_with_a_private_pypi/)
    * [Anyone got poetry2nix working with a private PyPI server? : r/NixOS](https://www.reddit.com/r/NixOS/comments/15ivyr3/anyone_got_poetry2nix_working_with_a_private_pypi/)
* [](https://github.com/seirl/seirl-nixos/blob/2d95c686c6b2d3b65d25f17731ddfab0509579df/pkgs/epiquote.nix%23L4)
    * [seirl-nixos/pkgs/epiquote.nix at 2d95c686c6b2d3b65d25f17731ddfab0509579df · seirl/seirl-nixos](https://github.com/seirl/seirl-nixos/blob/2d95c686c6b2d3b65d25f17731ddfab0509579df/pkgs/epiquote.nix%23L4)
* [](https://www.youtube.com/watch?v%3DtQ446LjIv7k)
    * [NixOS Explained - YouTube](https://www.youtube.com/watch?v%3DtQ446LjIv7k)
* [](https://github.com/LamprosPitsillos/nixos-config/blob/main/home-manager/programs/nvim/nvim.nix)
    * [nixos-config/home-manager/programs/nvim/nvim.nix at main · LamprosPitsillos/nixos-config](https://github.com/LamprosPitsillos/nixos-config/blob/main/home-manager/programs/nvim/nvim.nix)
* [](https://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dneovim)
    * [NixOS Search - Packages - neovim](https://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dneovim)
* [](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dharpoon)
    * [NixOS Search - Packages - harpoon](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dharpoon)
* [](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dkeymap-amend)
    * [NixOS Search - Packages - keymap-amend](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dkeymap-amend)
* [](https://search.nixos.org/packages?channel%3D23.11%26show%3DvimPlugins.lazy-nvim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlazy-nvim)
    * [NixOS Search - Packages - lazy-nvim](https://search.nixos.org/packages?channel%3D23.11%26show%3DvimPlugins.lazy-nvim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlazy-nvim)
* [](https://www.youtube.com/watch?v%3DAGVXJ-TIv3Y)
    * [NixOS Setup Guide - Configuration / Home-Manager / Flakes - YouTube](https://www.youtube.com/watch?v%3DAGVXJ-TIv3Y)
* [](https://www.youtube.com/watch?v%3D61wGzIv12Ds%26t%3D5s)
    * [Nixos and Hyprland - Best Match Ever - YouTube](https://www.youtube.com/watch?v%3D61wGzIv12Ds%26t%3D5s)
* [](https://discourse.nixos.org/t/nixos-flakes-with-home-manager/18476)
    * [Nixos Flakes with Home-Manager - Help - NixOS Discourse](https://discourse.nixos.org/t/nixos-flakes-with-home-manager/18476)
* [](https://www.youtube.com/results?search_query%3Dintro%2Bto%2Bhome%2Bmanager)
    * [intro to home manager - YouTube](https://www.youtube.com/results?search_query%3Dintro%2Bto%2Bhome%2Bmanager)
* [](https://nix-community.github.io/home-manager/index.html%23ch-usage)
    * [Home Manager Manual](https://nix-community.github.io/home-manager/index.html%23ch-usage)
* [](https://www.youtube.com/watch?v%3DIiyBeR-Guqw)
    * [Manage Your Dotfiles with Home Manager! - YouTube](https://www.youtube.com/watch?v%3DIiyBeR-Guqw)
* [](https://mipmip.github.io/home-manager-option-search/?query%3Dhyprland)
    * [Home Manager - Option Search](https://mipmip.github.io/home-manager-option-search/?query%3Dhyprland)
* [](https://github.com/schuelermine/xhmm)
    * [schuelermine/xhmm: Extra home manager modules](https://github.com/schuelermine/xhmm)
* [](https://nix-community.github.io/home-manager/options.xhtml)
    * [Appendix A. Home Manager Configuration Options](https://nix-community.github.io/home-manager/options.xhtml)
* [](https://nix-community.github.io/home-manager/index.xhtml%23_why_are_the_session_variables_not_set)
    * [Home Manager Manual](https://nix-community.github.io/home-manager/index.xhtml%23_why_are_the_session_variables_not_set)
* [](https://rycee.gitlab.io/home-manager/options.html)
    * [Appendix A. Configuration Options](https://rycee.gitlab.io/home-manager/options.html)
* [](https://www.youtube.com/watch?v%3DWJZgzwB3ziE)
    * [Nix for Startups (full course) - YouTube](https://www.youtube.com/watch?v%3DWJZgzwB3ziE)
* [](https://www.youtube.com/watch?v%3DWJZgzwB3ziE)
    * [Nix for Startups (full course) - YouTube](https://www.youtube.com/watch?v%3DWJZgzwB3ziE)
* [](https://github.com/colemickens/nixcfg/blob/cdd9929d5d36ce5b4d64cf80bdeb1df3f2cba332/mixins/nvidia.nix)
    * [nixcfg/mixins/nvidia.nix at cdd9929d5d36ce5b4d64cf80bdeb1df3f2cba332 · colemickens/nixcfg](https://github.com/colemickens/nixcfg/blob/cdd9929d5d36ce5b4d64cf80bdeb1df3f2cba332/mixins/nvidia.nix)
* [](https://np.reddit.com/r/unixporn/comments/obak1a/awesome_still_in_love_with_alpine/h3o2uuh/)
    * [https://np.reddit.com/r/unixporn/comments/obak1a/awesome_still_in_love_with_alpine/h3o2uuh/](https://np.reddit.com/r/unixporn/comments/obak1a/awesome_still_in_love_with_alpine/h3o2uuh/)
    * [JupyterWith Next - Tweag](https://www.tweag.io/blog/2022-11-17-jupyter-with-next/)
* [](https://github.com/tweag/jupyenv/issues/133)
    * [poetry2nix error · Issue #133 · tweag/jupyenv](https://github.com/tweag/jupyenv/issues/133)
* [](https://github.com/fastapi-mvc/fastapi-mvc/blob/master/flake.nix)
    * [fastapi-mvc/flake.nix at master · fastapi-mvc/fastapi-mvc](https://github.com/fastapi-mvc/fastapi-mvc/blob/master/flake.nix)
* [](https://gist.github.com/reckenrode/37fffca926001ff45c4866991c0acc34)
    * [flake.nix for poetry2nix](https://gist.github.com/reckenrode/37fffca926001ff45c4866991c0acc34)
* [](https://github.com/lovesegfault/beautysh/blob/9845efc3ea3e86cc0d41465d720a47f521b2799c/flake.nix%23L63)
    * [beautysh/flake.nix at 9845efc3ea3e86cc0d41465d720a47f521b2799c · lovesegfault/beautysh](https://github.com/lovesegfault/beautysh/blob/9845efc3ea3e86cc0d41465d720a47f521b2799c/flake.nix%23L63)
* [](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
    * [Developing Python with Poetry & Poetry2nix: Reproducible flexible Python environments - Tweag](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
* [](https://github.com/Nebucatnetzer/network_inventory/blob/dev/flake.nix)
    * [network_inventory/flake.nix at dev · Nebucatnetzer/network_inventory](https://github.com/Nebucatnetzer/network_inventory/blob/dev/flake.nix)
* [](https://stackoverflow.com/questions/77296068/nix-darwin-home-manager-and-flakes-how-to-set-environment-variables-for-the-m)
    * [Nix-darwin, home-manager, and flakes: how to set environment variables for the main user? - Stack Overflow](https://stackoverflow.com/questions/77296068/nix-darwin-home-manager-and-flakes-how-to-set-environment-variables-for-the-m)
* [](https://github.com/fusion44/blitz_api/blob/6edad7ac48c80cd40f595b5eab99c0968b5d8b8a/flake.nix%23L52)
    * [blitz_api/flake.nix at 6edad7ac48c80cd40f595b5eab99c0968b5d8b8a · fusion44/blitz_api](https://github.com/fusion44/blitz_api/blob/6edad7ac48c80cd40f595b5eab99c0968b5d8b8a/flake.nix%23L52)
* [](https://github.com/dpausp/pycryptpad-tools/blob/b2500775710205af92d72ded68d213f38190a8fb/nix/deps.nix%23L20)
    * [pycryptpad-tools/nix/deps.nix at b2500775710205af92d72ded68d213f38190a8fb · dpausp/pycryptpad-tools](https://github.com/dpausp/pycryptpad-tools/blob/b2500775710205af92d72ded68d213f38190a8fb/nix/deps.nix%23L20)
* [](https://github.com/vlktomas/nix-examples/blob/0ebd762662c42270309e01b8f96161a3376f7ddf/web/FastAPI/fastapi/app.nix%23L8)
    * [nix-examples/web/FastAPI/fastapi/app.nix at 0ebd762662c42270309e01b8f96161a3376f7ddf · vlktomas/nix-examples](https://github.com/vlktomas/nix-examples/blob/0ebd762662c42270309e01b8f96161a3376f7ddf/web/FastAPI/fastapi/app.nix%23L8)
* [](https://cheat.readthedocs.io/en/latest/nixos/nix_lang.html)
    * [Nix language — Dan's Cheat Sheets 1 documentation](https://cheat.readthedocs.io/en/latest/nixos/nix_lang.html)
* [](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
    * [configuration - How to pin a package version with](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
* [nix-shell](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
    * [? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
* [](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/)
    * [Nix from First Principles: Flake Edition - Tony Finn](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/)
* [](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
    * [Flakes and Developer Environments (Nix From First Principles: Flake Edition #8) - Tony Finn](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
* [](https://emacs-ng.github.io/emacs-ng/build/nix-develop/)
    * [Nix Build / Develop - Emacs NG - A new approach to Emacs](https://emacs-ng.github.io/emacs-ng/build/nix-develop/)
* [](https://github.com/numtide/system-manager/blob/main/examples/example.nix)
    * [system-manager/examples/example.nix at main · numtide/system-manager](https://github.com/numtide/system-manager/blob/main/examples/example.nix)
* [](https://nixos.wiki/wiki/St)
    * [https://nixos.wiki/wiki/St](https://nixos.wiki/wiki/St)
* [](https://www.google.com/url?q=http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
    * [http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix](https://www.google.com/url?q=http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [](https://daniel-siepmann.de/nix-journey-part-1.html)
    * [https://daniel-siepmann.de/nix-journey-part-1.html](https://daniel-siepmann.de/nix-journey-part-1.html)
* [](https://neuron.zettel.page/install-systemd)
    * [home-manager systemd service - Neuron Zettelkasten](https://neuron.zettel.page/install-systemd)
* [](https://bmcgee.ie/posts/2022/11/getting-nixos-to-keep-a-secret/)
    * [https://bmcgee.ie/posts/2022/11/getting-nixos-to-keep-a-secret/](https://bmcgee.ie/posts/2022/11/getting-nixos-to-keep-a-secret/)
* [](https://mjones.network/articles/declarative-desktop-env-config-with-nix.html)
    * [https://mjones.network/articles/declarative-desktop-env-config-with-nix.html](https://mjones.network/articles/declarative-desktop-env-config-with-nix.html)
* [](https://www.google.com/url?q=http://reign-studios.com/wallpapers/nixos/NixOS_1440p.png)
    * [http://reign-studios.com/wallpapers/nixos/NixOS_1440p.png](https://www.google.com/url?q=http://reign-studios.com/wallpapers/nixos/NixOS_1440p.png)
* [](https://www.reddit.com/r/NixOS/comments/rg6tnl/tokyonight_colorscheme_nixos_wallpaper/)
    * [https://www.reddit.com/r/NixOS/comments/rg6tnl/tokyonight_colorscheme_nixos_wallpaper/](https://www.reddit.com/r/NixOS/comments/rg6tnl/tokyonight_colorscheme_nixos_wallpaper/)
* [](https://www.reddit.com/r/NixOS/comments/14dm7e6/everforest_themed_nixos_wallpaper_i_made_which/)
    * [https://www.reddit.com/r/NixOS/comments/14dm7e6/everforest_themed_nixos_wallpaper_i_made_which/](https://www.reddit.com/r/NixOS/comments/14dm7e6/everforest_themed_nixos_wallpaper_i_made_which/)
* [](https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph)
    * [https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph](https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph)
    * [https://fictionbecomesfact.com/nixos-installation-luks](https://fictionbecomesfact.com/nixos-installation-luks)
    * [https://www.reddit.com/r/NixOS/comments/z16mt8/cant_seem_to_set_default_shell_using_homemanager/?rdt=48798](https://www.reddit.com/r/NixOS/comments/z16mt8/cant_seem_to_set_default_shell_using_homemanager/?rdt%3D48798)
    * [https://youtu.be/G5f6GC7SnhU?si=hdXcvu9BgqSDQx1H](https://youtu.be/G5f6GC7SnhU?si%3DhdXcvu9BgqSDQx1H)
* [](https://www.youtube.com/watch?v%3D_Z32SYFbxpw)
    * [CT NixOS Install Video](https://www.youtube.com/watch?v%3D_Z32SYFbxpw)
* [](https://discourse.nixos.org/t/using-imports-attribute-with-import-function/36357/2)
    * [https://discourse.nixos.org/t/using-imports-attribute-with-import-function/36357/2](https://discourse.nixos.org/t/using-imports-attribute-with-import-function/36357/2)
* [](https://book.divnix.com/ch02-00-introduction.html)
    * [https://book.divnix.com/ch02-00-introduction.html](https://book.divnix.com/ch02-00-introduction.html)
    * [https://cola-gang.industries/nixos-for-the-confused-part-v](https://cola-gang.industries/nixos-for-the-confused-part-v)
* [](https://cola-gang.industries/)
    * [https://cola-gang.industries/](https://cola-gang.industries/)
    * [https://snowflakeos.org/](https://snowflakeos.org/)
* [](https://snowflakeos.org/)
    * [https://snowflakeos.org/](https://snowflakeos.org/)
* [](https://github.com/exploitoverload/PwNixOS)
    * [https://github.com/exploitoverload/PwNixOS](https://github.com/exploitoverload/PwNixOS)
* [](https://github.com/notusknot/dotfiles-nix)
    * [https://github.com/notusknot/dotfiles-nix](https://github.com/notusknot/dotfiles-nix)
* [](https://github.com/rubyowo/dotfiles)
    * [https://github.com/rubyowo/dotfiles](https://github.com/rubyowo/dotfiles)
* [](https://ghuntley.com/)
    * [Geoffrey Huntley](https://ghuntley.com/)
* [](https://dev.jmgilman.com/environment/tools/nix/home-manager/)
    * [Home-Manager - Dev Handbook](https://dev.jmgilman.com/environment/tools/nix/home-manager/)
* [](https://repology.org/repositories/packages)
    * [Raw repository package counts - Repology](https://repology.org/repositories/packages)
* [](https://github.com/search?q%3DmkPoetryApplication%26type%3Dcode)
    * [Code search results](https://github.com/search?q%3DmkPoetryApplication%26type%3Dcode)
* [](https://stackoverflow.com/questions/77558055/using-poetry-to-install-from-a-private-repository-with-a-token)
    * [python - Using poetry to install from a private repository with a token - Stack Overflow](https://stackoverflow.com/questions/77558055/using-poetry-to-install-from-a-private-repository-with-a-token)
* [](https://github.com/cachix/devenv)
    * [cachix/devenv: Fast, Declarative, Reproducible, and Composable Developer Environments](https://github.com/cachix/devenv)
* [](https://stackoverflow.com/questions/50468951/credentials-in-pip-conf-for-private-pypi)
    * [python - Credentials in pip.conf for private PyPI - Stack Overflow](https://stackoverflow.com/questions/50468951/credentials-in-pip-conf-for-private-pypi)
* [](https://python-poetry.org/docs/configuration/)
    * [Configuration | Documentation | Poetry - Python dependency management and packaging made easy](https://python-poetry.org/docs/configuration/)
* [](https://github.com/python-poetry/poetry/issues/8443)
    * [.netrc](https://github.com/python-poetry/poetry/issues/8443)
* [credentials take precedence over](https://github.com/python-poetry/poetry/issues/8443)
* [poetry config http-basic](https://github.com/python-poetry/poetry/issues/8443)
* [· Issue #8443 · python-poetry/poetry](https://github.com/python-poetry/poetry/issues/8443)
* [](https://snowfall.org/guides/lib/quickstart/)
    * [Quickstart](https://snowfall.org/guides/lib/quickstart/)
* [](https://github.com/nycodeghg)
    * [NyCodeGHG (Marie)](https://github.com/nycodeghg)
* [](https://github.com/NyCodeGHG/dotfiles)
    * [https://github.com/NyCodeGHG/dotfiles](https://github.com/NyCodeGHG/dotfiles)
* [](https://github.com/NyCodeGHG/awesome-prometheus-alerts.nix)
    * [https://github.com/NyCodeGHG/awesome-prometheus-alerts.nix](https://github.com/NyCodeGHG/awesome-prometheus-alerts.nix)
* [](https://www.phind.com/search?cache%3Dsosi2xj2u74wie4ci17udny0)
    * [What if the source requires authentification?](https://www.phind.com/search?cache%3Dsosi2xj2u74wie4ci17udny0)
* [](https://medium.com/@seifeddinerajhi/the-sops-way-the-only-way-to-keep-your-secrets-safe-in-git-4a17e83ef6c6)
    * [The SOPS Way: The Only Way to Keep Your Secrets Safe in Git | by Seifeddine Rajhi | Medium](https://medium.com/@seifeddinerajhi/the-sops-way-the-only-way-to-keep-your-secrets-safe-in-git-4a17e83ef6c6)
* [](https://ubuntu.com/landscape/docs/managing-computers%23heading--access-information-about-computers)
    * [How to manage computers in Landscape | Ubuntu](https://ubuntu.com/landscape/docs/managing-computers%23heading--access-information-about-computers)
* [](https://nixified.ai/)
    * [https://nixified.ai/](https://nixified.ai/)
* [](https://www.reddit.com/user/matthew-croughan/)
    * [https://www.reddit.com/user/matthew-croughan/](https://www.reddit.com/user/matthew-croughan/)
* [](https://gitlab.com/MatthewCroughan/darkflake/-/tree/master)
    * [https://gitlab.com/MatthewCroughan/darkflake/-/tree/master](https://gitlab.com/MatthewCroughan/darkflake/-/tree/master)
* [](https://github.com/NixOS/nixos-hardware)
    * [https://github.com/NixOS/nixos-hardware](https://github.com/NixOS/nixos-hardware)
* [](https://ahoneybun.net/blog/)
    * [https://ahoneybun.net/blog/](https://ahoneybun.net/blog/)
    * [https://news.ycombinator.com/item?id=37105524](https://news.ycombinator.com/item?id%3D37105524)
* [https://www.nixhub.io/](https://www.nixhub.io/)
* [https://nix4noobs.com/](https://nix4noobs.com/)
* [https://github.com/haslersn/any-nix-shell](https://github.com/haslersn/any-nix-shell)


* sops [](https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/)
    * [https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/](https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/)
* [https://determinate.systems/posts/nuenv](https://determinate.systems/posts/nuenv)
* [https://github.com/mikeroyal/NixOS-Guide](https://github.com/mikeroyal/NixOS-Guide)


* nix and shellls -a /etc/skel [](https://nixos.wiki/wiki/Command_Shell)
    * [https://nixos.wiki/wiki/Command_Shell](https://nixos.wiki/wiki/Command_Shell)
* [](https://nix4noobs.com/flakes/devshells/)
    * [https://nix4noobs.com/flakes/devshells/](https://nix4noobs.com/flakes/devshells/)
* [](https://wiki.nikiv.dev/unix/shell/fish)
    * [https://wiki.nikiv.dev/unix/shell/fish](https://wiki.nikiv.dev/unix/shell/fish)
* [](https://stackoverflow.com/questions/61262216/configuring-fish-shell-prompt-inside-nix-shell)
    * [https://stackoverflow.com/questions/61262216/configuring-fish-shell-prompt-inside-nix-shell](https://stackoverflow.com/questions/61262216/configuring-fish-shell-prompt-inside-nix-shell)
* [](https://mjhart.netlify.app/posts/2020-03-14-nix-and-fish.html)
    * [https://mjhart.netlify.app/posts/2020-03-14-nix-and-fish.html](https://mjhart.netlify.app/posts/2020-03-14-nix-and-fish.html)
* [](https://www.nixhub.io/packages/nushell)
    * [https://www.nixhub.io/packages/nushell](https://www.nixhub.io/packages/nushell)
* [](https://www.reddit.com/r/NixOS/comments/fjbnhp/using_fish_with_nix/)
    * [https://www.reddit.com/r/NixOS/comments/fjbnhp/using_fish_with_nix/](https://www.reddit.com/r/NixOS/comments/fjbnhp/using_fish_with_nix/)
* [](https://nixos-and-flakes.thiscute.world/development/intro)
    * [https://nixos-and-flakes.thiscute.world/development/intro](https://nixos-and-flakes.thiscute.world/development/intro)
* [](https://www.nushell.sh/book/)
    * [https://www.nushell.sh/book/](https://www.nushell.sh/book/)
* [](https://elv.sh/learn/)
    * [https://elv.sh/learn/](https://elv.sh/learn/)
* [](https://nix.dev/tutorials/first-steps/ad-hoc-shell-environments.html)
    * [https://nix.dev/tutorials/first-steps/ad-hoc-shell-environments.html](https://nix.dev/tutorials/first-steps/ad-hoc-shell-environments.html)
* [](https://nix.dev/tutorials/first-steps/declarative-shell.html)
    * [https://nix.dev/tutorials/first-steps/declarative-shell.html](https://nix.dev/tutorials/first-steps/declarative-shell.html)
* [](https://github.com/search?q%3Drepo%253Anumtide%252Fsystem-manager)
    * [https://github.com/search?q=repo%3Anumtide%2Fsystem-manager](https://github.com/search?q%3Drepo%253Anumtide%252Fsystem-manager)
    * [https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/13](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/13)
* [](https://superuser.com/questions/651308/whats-the-difference-between-chsh-s-and-export-shell)
    * [https://superuser.com/questions/651308/whats-the-difference-between-chsh-s-and-export-shell](https://superuser.com/questions/651308/whats-the-difference-between-chsh-s-and-export-shell)
* [https://discourse.nixos.org/t/home-manager-doesnt-seem-to-recognize-sessionvariables/8488/9](https://discourse.nixos.org/t/home-manager-doesnt-seem-to-recognize-sessionvariables/8488/9)
* [https://jameswillia.ms/posts/flake-line-by-line.html](https://jameswillia.ms/posts/flake-line-by-line.html)

make Github issue for bcrypt
* [https://github.com/corps/nix-kernel](https://github.com/corps/nix-kernel) - need to create
* [https://blog.eigenvalue.net/2023-nix-fetch-with-authentication/](https://blog.eigenvalue.net/2023-nix-fetch-with-authentication/)
* [https://blog.eigenvalue.net/2023-nix-s3-store-authentication/](https://blog.eigenvalue.net/2023-nix-s3-store-authentication/)
* [https://discourse.nixos.org/t/nix-authenticated-fetches-from-gitlab-reading-about-related-work/35708](https://discourse.nixos.org/t/nix-authenticated-fetches-from-gitlab-reading-about-related-work/35708)
* [https://duckduckgo.com/?q=pre-built+pytorch+for+nixos&ia=web](https://duckduckgo.com/?q%3Dpre-built%2Bpytorch%2Bfor%2Bnixos%26ia%3Dweb)

→ make script to pull relevant system-specific infor from output of nixos-generate-config command

sudo nixos-rebuild switch —extra-experimental-features “nix-command flakes” —flake .#hank

figure out audio config

remove all traces of snaps; raise issue on nix-snap

→ solve the mystery of $PATH

package landscape-client with nix → how to look inside .deb and .snap packages?

try landscape-client in distrobox?

→ build iridium browser for Nix

→ build waveterm for Nix


* Flake CLI QuestionHow can I add a CLI functionality to a Nix flake?ChatGPTChatGPT To add command-line interface (CLI) functionality to a Nix flake, you can use the programs attribute in the flake's outputs section. Here's a step-by-step guide:

Create a directory structure: In your flake's directory, create a directory for your CLI program. For example:plaintextCopy code

my-flake/

├── flake.nix

└── src/

└── my-cli/

└── Main.hs

1. 

Write your CLI program: Write your CLI program in the Main.hs file. For example:haskellCopy code


* - src/my-cli/Main.hs

module Main where

import System.Environment

main :: IO ()

main = do

args <- getArgs

putStrLn $ "Hello, CLI! Args: " ++ show args

1. 

Update your flake.nix file: Update your flake.nix file to include the programs attribute. Here's an example:nixCopy code

{

description = "My Flake with CLI";

inputs = {

nixpkgs.url = "github:nixos/nixpkgs/nixos-21.11";

};

outputs = { self, nixpkgs }: {

defaultPackage.x86_64-linux = self.packages.haskellPackages.callPackage ./src/my-cli {};

programs.hello-cli = {

enable = true;

package = self.defaultPackage.x86_64-linux;

};

};

}

1. In this example, hello-cli is the name of your CLI program. The package attribute points to the Haskell package generated from your source code.

Build and run your CLI program: Run the following commands to build and run your CLI program:bashCopy code

nix build

./result/bin/hello-cli

1. Replace hello-cli with the name you specified in your programs attribute.
* Now, your Nix flake includes a CLI program that can be easily built and run. You can customize the programs attribute further based on your specific requirements. [](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c)
    * [https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA=s96-c](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c) You What are the possible values for the atributes of the output of a flake?ChatGPTChatGPT In a Nix flake, the outputs attribute is used to specify the outputs that will be produced by the flake. Each output can have its own set of attributes. Here are some common attributes that can be used in the outputs section of a flake:

defaultPackage: This attribute specifies the default output for the flake. It usually points to the main result produced by the flake. For example:nixCopy code

outputs = { self, nixpkgs }: {

defaultPackage.x86_64-linux = self.packages.x86_64-linux.myPackage;

};

1. 

packages: This attribute is used to define one or more packages produced by the flake. Each package can have its own set of attributes like packagePrefix, meta, etc.nixCopy code

outputs = { self, nixpkgs }: {

packages.x86_64-linux.myPackage = self.packages.haskellPackages.myHaskellPackage;

};

1. 

programs: This attribute is used to define executable programs produced by the flake. It allows you to specify which packages to use and whether the program should be enabled or not.nixCopy code

outputs = { self, nixpkgs }: {

programs.myProgram = {

enable = true;

package = self.packages.x86_64-linux.myPackage;

};

};

1. 

documentation: This attribute is used to specify documentation generated by the flake. It can include attributes like html, man, etc.nixCopy code

outputs = { self, nixpkgs }: {

documentation.html = self.defaultPackage.x86_64-linux + "/share/doc/myPackage/html";

};

1. 

dev: This attribute is used to specify development files produced by the flake.nixCopy code

outputs = { self, nixpkgs }: {

dev = self.defaultPackage.x86_64-linux + "/lib/myPackage-dev";

};

1. 

These are just examples, and the actual attributes you use will depend on the nature of your flake and the kind of outputs you want to produce. The key is to define the outputs you need and customize their attributes accordingly. Always refer to the Nixpkgs manual or Nix documentation for the most up-to-date and detailed information on available attributes. [](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c)
    * [https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA=s96-c](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c) You How could I print out a tree representation of the imports of a given output?ChatGPTChatGPT To print out a tree representation of the imports of a given output in a Nix flake, you can leverage the nixpkgs attribute set and the buildInputs attribute of the derivation for the specified output. You can create a recursive function to traverse the import tree and print it in a tree-like structure.Here's an example script in Nix that demonstrates how you can achieve this:nixCopy code


# tree.nix

{ lib, nixpkgs ? import <nixpkgs> {} }:

let


# Function to print a tree structure

printTree = prefix: node: tree:

if lib.isAttrs node

then

let

attrs = lib.attrValues node;

attrNames = lib.attrNames node;

lines = lib.mapAttrsToList (name: value: "${name}: ${value}") node;

subtree = lib.mapAttrsToList (name: value: printTree (prefix + "  ") value tree) node;

in

if lib.length attrs > 0

then "${prefix}${lib.concatStringsSep "\\n" (lib.mapAttrsToList (name: value: "${name}: ${value}") node)}"

else

"${prefix}${lib.concatStringsSep "\\n" (lib.mapAttrsToList (name: value: "${value}") node)}"

+ (lib.concatStringsSep "\\n" subtree)

else "${prefix}${node}";


# Function to build the import tree

buildImportTree = derivation:

let

buildTree = drv:

let

inputs = lib.foldl' (acc: input: acc + [input])
* [] drv.buildInputs;

in

{ ${lib.foldl' (acc: input: acc + [input]) "" inputs} } // (lib.foldl' (acc: input: acc + buildTree input) {} inputs);

importTree = buildTree derivation;

in

printTree "" importTree importTree;

in

{ buildImportTree, printTree }

This script defines two functions: printTree for printing the tree structure and buildImportTree for building the import tree. The example assumes you have the nixpkgs attribute set available.To use this script, you can import it into another Nix expression and call the buildImportTree function, passing the derivation for the desired output. For example:nixCopy code


# example.nix

{ lib, nixpkgs ? import <nixpkgs> {}, tree ? import ./tree.nix { nixpkgs = nixpkgs; } }:

let

myOutput = nixpkgs.myPackage.outputs.defaultPackage.x86_64-linux;

importTree = tree.buildImportTree myOutput;

in

tree.printTree "" importTree importTree


* Replace myPackage with the actual package name or output you want to inspect. Running the example.nix script should print the import tree structure for the specified output.

Ly:
* [https://github.com/the-argus/nixsys/tree/b234fe6f3bd71ce07725cf6b0ca0d46335858619](https://github.com/the-argus/nixsys/tree/b234fe6f3bd71ce07725cf6b0ca0d46335858619)
* [https://github.com/the-argus/nixsys/blob/b234fe6f3bd71ce07725cf6b0ca0d46335858619/modules/ly.nix#L11](https://github.com/the-argus/nixsys/blob/b234fe6f3bd71ce07725cf6b0ca0d46335858619/modules/ly.nix%23L11)
* [https://github.com/meatcar/dots/blob/26581bf4440fbc30db95cef57fc70d737cfc7cf4/modules/ly.nix#L8](https://github.com/meatcar/dots/blob/26581bf4440fbc30db95cef57fc70d737cfc7cf4/modules/ly.nix%23L8)
* [https://github.com/nix-community/nur-combined/blob/85ece5ad820302eaf1a541142942559deaa33ad7/repos/fgaz/modules/ly/default.nix#L120](https://github.com/nix-community/nur-combined/blob/85ece5ad820302eaf1a541142942559deaa33ad7/repos/fgaz/modules/ly/default.nix%23L120)
* [https://github.com/dmayle/dotfiles/blob/b67d63022cf3002bbc4c7eaa651c8625b1006dfc/nixos-backup/configuration_old.nix#L1176](https://github.com/dmayle/dotfiles/blob/b67d63022cf3002bbc4c7eaa651c8625b1006dfc/nixos-backup/configuration_old.nix%23L1176)

create script: nixos-report: like ls for all relevant directories, following all links to real file; also other important information

greetd config examples
* [https://github.com/iharh/nixcfg/tree/6fab8a06850f47df37bd3cb0f027ecf11782cff4/hw](https://github.com/iharh/nixcfg/tree/6fab8a06850f47df37bd3cb0f027ecf11782cff4/hw)
* [https://github.com/lokeshmohanty/nix-config/blob/main/nixos/desktop-environment.nix](https://github.com/lokeshmohanty/nix-config/blob/main/nixos/desktop-environment.nix)

use! [](https://github.com/zhaofengli/colmena)
    * [https://github.com/zhaofengli/colmena](https://github.com/zhaofengli/colmena)
    * [https://github.com/divnix/digga?)](https://github.com/divnix/digga?))

If you suspect a race condition, where kernel modules may not be loaded fast enough to start the display manager, you can take a few steps to investigate and potentially address the issue:

1. Delay Display Manager Start:
* One approach is to introduce a delay in the startup process of the display manager. This can be achieved by modifying the service or init script that launches the display manager. However, this is a workaround and not a definitive solution.

1. Check Module Loading:
* Examine the logs to see if there are any messages related to the loading of kernel modules. You can use the dmesg command or check specific log files for module loading information. Look for any errors or delays in loading the necessary modules.

1. Adjust Module Loading Configuration:
* Depending on your distribution, you may have a configuration file specifying which modules to load during the boot process. This file is often located in /etc/modules or /etc/modules-load.d/. Review the contents of these files to ensure that the required modules are listed.

1. Check Dependencies:
* Ensure that the display manager service has proper dependencies set, especially dependencies related to the availability of necessary kernel modules. Adjust the dependencies if needed.

1. Systemd Service Unit:
* If your system uses systemd, check the service unit for the display manager (lightdm.service, gdm.service, etc.). You can find these unit files in /etc/systemd/system/ or /lib/systemd/system/. Look for dependencies and ordering directives and adjust them if necessary.

1. Investigate Startup Scripts:
* Examine any scripts or systemd units responsible for the initialization of the system, display manager, or relevant components. Check if they explicitly wait for certain conditions before proceeding.

1. Kernel Module Auto-Loading:
* Ensure that the necessary kernel modules are set to load automatically during boot. This is often configured in files such as /etc/modules or /etc/modules-load.d/*.conf.

1. Check for Module Load Errors:
* Look for any errors related to module loading in the logs. Use commands like dmesg | grep -i 'error\\|module' to identify potential issues.

By investigating these areas, you may be able to identify the cause of the race condition and take appropriate measures to address it. If the issue persists, consider seeking assistance from your distribution's community forums or support channels, as they may have insights specific to the distribution and display manager you are using.

hyprland sddm config examples
* [https://github.com/eekrain/dotfiles/blob/7c948066821437f79521ba78e8e9042dfb090b13/nixos/hyprland/default.nix#L24](https://github.com/eekrain/dotfiles/blob/7c948066821437f79521ba78e8e9042dfb090b13/nixos/hyprland/default.nix%23L24) - may be the solution
* [https://github.com/paulcomte/dotfiles/blob/14419839ccea1a7bd495d9cd9ee4cee388df8403/nixos/services.nix#L44](https://github.com/paulcomte/dotfiles/blob/14419839ccea1a7bd495d9cd9ee4cee388df8403/nixos/services.nix%23L44) - look into logind extraConfig
* [https://github.com/elkebirmed/dotfiles_nixos/blob/main/hosts/optional/sddm.nix](https://github.com/elkebirmed/dotfiles_nixos/blob/main/hosts/optional/sddm.nix)
    * [https://github.com/elkebirmed/dotfiles_nixos/blob/main/hosts/optional/hyprland.nix](https://github.com/elkebirmed/dotfiles_nixos/blob/main/hosts/optional/hyprland.nix) good examples
* [https://github.com/Azeved00/.files/blob/5c00de90d9a770dd44a331a89bef03142ae22c03/nixos/modules/wayland.nix#L14](https://github.com/Azeved00/.files/blob/5c00de90d9a770dd44a331a89bef03142ae22c03/nixos/modules/wayland.nix%23L14) - simple config
* [https://github.com/mslxl/nix-config/tree/main/modules/nixos/desktop/desktop-env](https://github.com/mslxl/nix-config/tree/main/modules/nixos/desktop/desktop-env)
* [https://github.com/A7R7/nixos-config/blob/baae8a1be5566a8863aed2f9de897cfba0b6a538/host/configuration.nix](https://github.com/A7R7/nixos-config/blob/baae8a1be5566a8863aed2f9de897cfba0b6a538/host/configuration.nix)
* [https://github.com/GGORG0/nix-config/blob/9dd592385f632851a0ce825855638ac4105ffcb7/modules/nixos/sddm.nix](https://github.com/GGORG0/nix-config/blob/9dd592385f632851a0ce825855638ac4105ffcb7/modules/nixos/sddm.nix)
* [https://github.com/LichHunter/nixos-dotfiles/blob/f27d2e58cbacb59aad2ca4dbfa0e7be7b7bf1bc9/modules/rice/Frost-Phoenix/hyprland/hyprland.nix](https://github.com/LichHunter/nixos-dotfiles/blob/f27d2e58cbacb59aad2ca4dbfa0e7be7b7bf1bc9/modules/rice/Frost-Phoenix/hyprland/hyprland.nix)
* [https://github.com/richtigerkiko/nixos-hyprland/blob/main/nixos/configuration.nix](https://github.com/richtigerkiko/nixos-hyprland/blob/main/nixos/configuration.nix)
* [https://github.com/ryan4yin/nix-config/blob/77bd038f3295fee21f8f3842639e5b93fa9272ab/home/linux/desktop/hyprland/values/hyprland.nix#L9](https://github.com/ryan4yin/nix-config/blob/77bd038f3295fee21f8f3842639e5b93fa9272ab/home/linux/desktop/hyprland/values/hyprland.nix%23L9)
    * [https://github.com/ryan4yin/nix-config/blob/77bd038f3295fee21f8f3842639e5b93fa9272ab/modules/nixos/desktop.nix#L74](https://github.com/ryan4yin/nix-config/blob/77bd038f3295fee21f8f3842639e5b93fa9272ab/modules/nixos/desktop.nix%23L74)
* [https://github.com/simonrw/nix-config/blob/main/system/nixos/astoria/wm/hyprland.nix](https://github.com/simonrw/nix-config/blob/main/system/nixos/astoria/wm/hyprland.nix)
    * [https://github.com/simonrw/nix-config/blob/main/system/nixos/astoria/wm/sway.nix](https://github.com/simonrw/nix-config/blob/main/system/nixos/astoria/wm/sway.nix)
* [https://github.com/baracunatana/santuario/blob/main/flake.nix](https://github.com/baracunatana/santuario/blob/main/flake.nix)
* [https://github.com/darichey/my-nix-config/blob/4015b7f0d3724a2848fc2c6423a5df627be92d8c/system/common.nix#L52](https://github.com/darichey/my-nix-config/blob/4015b7f0d3724a2848fc2c6423a5df627be92d8c/system/common.nix%23L52)
* [https://github.com/Jan130/nixos-config/blob/main/system/wm/hyprland.nix](https://github.com/Jan130/nixos-config/blob/main/system/wm/hyprland.nix)
* [https://github.com/Builditluc/dotnix/blob/52ea85bbbbeddf3de5642cb9a8ee40c09762eaa7/system/wm/hyprland.nix#L4](https://github.com/Builditluc/dotnix/blob/52ea85bbbbeddf3de5642cb9a8ee40c09762eaa7/system/wm/hyprland.nix%23L4) nice and simple
* [https://github.com/deadendpl/dotfiles/blob/f0986be75c675397543afbc46e841021a1515d40/nixos/README.org#graphical-environment](https://github.com/deadendpl/dotfiles/blob/f0986be75c675397543afbc46e841021a1515d40/nixos/README.org%23graphical-environment)
* [https://github.com/Vagahbond/nix-config/blob/9ab6b278c1d0ebc7726421fcfa41a3f5e8cf7417/modules/desktop/hyprland/default.nix#L13](https://github.com/Vagahbond/nix-config/blob/9ab6b278c1d0ebc7726421fcfa41a3f5e8cf7417/modules/desktop/hyprland/default.nix%23L13)
* [https://github.com/michaelkeates/nixos-config/blob/1bb37ce52ab4e71743e7a07dfaed210941634ef7/templates/default/nixos/default.nix#L124](https://github.com/michaelkeates/nixos-config/blob/1bb37ce52ab4e71743e7a07dfaed210941634ef7/templates/default/nixos/default.nix%23L124)
* [https://github.com/mjschwenne/dotfiles/blob/main/system/graphical.nix](https://github.com/mjschwenne/dotfiles/blob/main/system/graphical.nix) - good example of custom config
* [https://github.com/nyawox/nixboxes/blob/2af52077059e9d38a327c42f3843d373a272668c/modules/nixos/desktop/sddm.nix#L23](https://github.com/nyawox/nixboxes/blob/2af52077059e9d38a327c42f3843d373a272668c/modules/nixos/desktop/sddm.nix%23L23)
* [https://github.com/iynaix/dotfiles/blob/5c2eca4e184df332b06373007248457ae4cb9d69/nixos/hyprland.nix#L7](https://github.com/iynaix/dotfiles/blob/5c2eca4e184df332b06373007248457ae4cb9d69/nixos/hyprland.nix%23L7)
* [https://github.com/vulpi/viperML-dotfiles/blob/0e0dacf03489596359d97fd8292da4921f902f29/modules/nixos/desktop-hyprland.nix#L9](https://github.com/vulpi/viperML-dotfiles/blob/0e0dacf03489596359d97fd8292da4921f902f29/modules/nixos/desktop-hyprland.nix%23L9)
* [https://github.com/owatta/dotfiles/blob/94bff267af7cd8b6e3342d7b586e6db622cdeaa5/nixos/licorice.nix#L18](https://github.com/owatta/dotfiles/blob/94bff267af7cd8b6e3342d7b586e6db622cdeaa5/nixos/licorice.nix%23L18)
* [https://github.com/mkeco/dotfile/blob/2783c3325a9459bedbdcaa36bbf60cee046e25c7/desk-nixos/configuration.nix#L23](https://github.com/mkeco/dotfile/blob/2783c3325a9459bedbdcaa36bbf60cee046e25c7/desk-nixos/configuration.nix%23L23)
* [https://github.com/Liberontissauri/NixOS-Config-/blob/e1c91582fbffc82bba0088ca06b9d2202635d8c1/modules/nixos/desktop.nix#L9](https://github.com/Liberontissauri/NixOS-Config-/blob/e1c91582fbffc82bba0088ca06b9d2202635d8c1/modules/nixos/desktop.nix%23L9)
* [https://github.com/benvonh/.snowflake/blob/9d617835ad63699259513a6ff784c038174966a3/systems/share/hyprland/default.nix#L4](https://github.com/benvonh/.snowflake/blob/9d617835ad63699259513a6ff784c038174966a3/systems/share/hyprland/default.nix%23L4)
* [https://github.com/gabyx/dotfiles/blob/6421270138b40c26a93011e7e20082ab965c253c/modules/nixos/windowing.nix#L13](https://github.com/gabyx/dotfiles/blob/6421270138b40c26a93011e7e20082ab965c253c/modules/nixos/windowing.nix%23L13)
* [](https://github.com/JosiahABrown/nixdots/blob/main/system/base.nix)
    * [https://github.com/JosiahABrown/nixdots/blob/main/system/base.nix](https://github.com/JosiahABrown/nixdots/blob/main/system/base.nix)
* [https://github.com/adamgoose/nixpkgs/blob/440e787cb769c44ed0ff0390c5010f9e29bc7f4f/nix/nixos/nixosModules/hyprland.nix#L17](https://github.com/adamgoose/nixpkgs/blob/440e787cb769c44ed0ff0390c5010f9e29bc7f4f/nix/nixos/nixosModules/hyprland.nix%23L17)

review gdm settings via dconf: [](https://github.com/search?q%3Dprograms.dconf.profiles%26type%3Dcode)
    * [https://github.com/search?q=programs.dconf.profiles&type=code](https://github.com/search?q%3Dprograms.dconf.profiles%26type%3Dcode)
* [https://unix.stackexchange.com/questions/517759/how-to-fix-service-start-request-repeated-too-quickly-on-custom-service](https://unix.stackexchange.com/questions/517759/how-to-fix-service-start-request-repeated-too-quickly-on-custom-service)
* [https://github.com/search?q=lightdm.enable+%3D+true&type=code](https://github.com/search?q%3Dlightdm.enable%2B%253D%2Btrue%26type%3Dcode)

Use greetd:
* [https://github.com/search?q=greetd+language%3Anix&type=code](https://github.com/search?q%3Dgreetd%2Blanguage%253Anix%26type%3Dcode)


* [https://github.com/yelircaasi/nix-eli5](https://github.com/yelircaasi/nix-eli5)
* [https://github.com/yelircaasi/clavix](https://github.com/yelircaasi/clavix)
* [https://github.com/yelircaasi/pictrix](https://github.com/yelircaasi/pictrix)
* [https://bmcgee.ie/posts/2023/11/nix-my-workflow/](https://bmcgee.ie/posts/2023/11/nix-my-workflow/)
* [https://www.nixhub.io/](https://www.nixhub.io/)
* [https://github.com/nix-community/NUR](https://github.com/nix-community/NUR)
* [https://media.ccc.de/v/nixcon-2023-36022-daily-driving-nixos-on-the-librem-5](https://media.ccc.de/v/nixcon-2023-36022-daily-driving-nixos-on-the-librem-5)
* [https://blog.alper-celik.dev/posts/my-first-contributions-to-nixpkgs-and-open-source/](https://blog.alper-celik.dev/posts/my-first-contributions-to-nixpkgs-and-open-source/)

Notes

Talk about pure functional programming, esp in terms of input → out and no side effects, no state

Talk about package hashing as a means of unique identification of a package and its dependencies and the guarantees that brings with it

Talk about links, soft and hard, and how they are used in Nix

Talk about what exactly Nix expressions are, as well as flakes

Then about how Nix code is organized, such as imports

Go over each point in the desiderata (still a fee to add) and talk about how each relates to pure functional programming

Do an informal proof of how each desideratum follows from and is required by the definition of pure functional programming

Then finally go over what Nix does with different commands

contrast old and new syntax

Emphasize commonalities among commands, common theme and design goals, etc

Ideas

Create tool to populate pyproject.toml with exact versiions supplied by Nix packages, with option for stable or unstable (reference: [](https://github.com/peterldowns/nix-search-cli)
    * [https://github.com/peterldowns/nix-search-cli](https://github.com/peterldowns/nix-search-cli)

Create language server / parser / highlighter for .drv files, add .drv support to bat

Look at Poetry2Nix and modify it to use pre-built: [](https://github.com/lazamar/nix-package-versions)
    * [https://github.com/lazamar/nix-package-versions](https://github.com/lazamar/nix-package-versions) →https://github.com/nix-community/pip2nix?

buildPythonPackage {

pname = "TODO";

version = "TODO";

src = fetchPypi {

inherit pname version;

sha256 = ""; # TODO

};


* related to Nix 3.0 [](https://github.com/NixOS/nix/issues/7701)
    * [https://github.com/NixOS/nix/issues/7701](https://github.com/NixOS/nix/issues/7701)
* [](https://www.tweag.io/blog/2022-08-04-tweag-and-nix-future/)
    * [https://www.tweag.io/blog/2022-08-04-tweag-and-nix-future/](https://www.tweag.io/blog/2022-08-04-tweag-and-nix-future/)
* [](https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204)
    * [https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204](https://discourse.nixos.org/t/nix-release-schedule-and-roadmap/14204)
* [https://discourse.nixos.org/t/an-incremental-strategy-for-stabilizing-flakes/16323/5](https://discourse.nixos.org/t/an-incremental-strategy-for-stabilizing-flakes/16323/5)
* [https://discourse.nixos.org/t/tweag-nix-dev-update-17/15037](https://discourse.nixos.org/t/tweag-nix-dev-update-17/15037)
* [https://discourse.nixos.org/t/improving-flakes/12831/56](https://discourse.nixos.org/t/improving-flakes/12831/56)
* [https://discourse.nixos.org/t/depreciate-the-use-of-nix-env-to-install-packages/20139/22](https://discourse.nixos.org/t/depreciate-the-use-of-nix-env-to-install-packages/20139/22)
* [https://discourse.nixos.org/t/tweag-nix-dev-update-16/14379](https://discourse.nixos.org/t/tweag-nix-dev-update-16/14379)
* [https://discourse.nixos.org/t/2022-nix-survey-results/18983](https://discourse.nixos.org/t/2022-nix-survey-results/18983)
* [https://discourse.nixos.org/t/2022-10-07-nix-team-meeting-minutes-3/22369](https://discourse.nixos.org/t/2022-10-07-nix-team-meeting-minutes-3/22369)
* CAS semantics [](https://github.com/NixOS/rfcs/pull/106)
    * [https://github.com/NixOS/rfcs/pull/106](https://github.com/NixOS/rfcs/pull/106)
* [https://github.com/NixOS/nix/pull/4577](https://github.com/NixOS/nix/pull/4577)
* [https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
* [https://discourse.nixos.org/t/how-to-create-a-poetry2nix-environment-with-a-flake/23604/6](https://discourse.nixos.org/t/how-to-create-a-poetry2nix-environment-with-a-flake/23604/6)
* [https://gist.github.com/reckenrode/37fffca926001ff45c4866991c0acc34](https://gist.github.com/reckenrode/37fffca926001ff45c4866991c0acc34)
* [https://www.reddit.com/r/NixOS/comments/16cfdag/poetry2nix_can_not_get_a_flake_to_work/](https://www.reddit.com/r/NixOS/comments/16cfdag/poetry2nix_can_not_get_a_flake_to_work/)

uses niv: [](https://discourse.nixos.org/t/help-with-poetry2nix/21799/4)
    * [https://discourse.nixos.org/t/help-with-poetry2nix/21799/4](https://discourse.nixos.org/t/help-with-poetry2nix/21799/4)
* [https://github.com/nix-community/poetry2nix/blob/4f8d61cd936f853242a4ce1fd476f5488c288c26/templates/app/flake.nix](https://github.com/nix-community/poetry2nix/blob/4f8d61cd936f853242a4ce1fd476f5488c288c26/templates/app/flake.nix)
* [https://serokell.io/blog/practical-nix-flakes](https://serokell.io/blog/practical-nix-flakes)

Goal: To create a Python develop environment where everything just works

TRY THIS! [](https://github.com/mjlbach/nix-shells/tree/master/lorri_tensorflow_nixgl_poetry2nix)
    * [https://github.com/mjlbach/nix-shells/tree/master/lorri_tensorflow_nixgl_poetry2nix](https://github.com/mjlbach/nix-shells/tree/master/lorri_tensorflow_nixgl_poetry2nix)
* [2nix and Flakes](https://www.youtube.com/watch?v%3D9o_A2loSH-0)
* [Nix Hour Playlist](https://www.youtube.com/playlist?list%3DPLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in)
* [https://snowflakeos.org/](https://snowflakeos.org/)
* [https://nixos-and-flakes.thiscute.world/](https://nixos-and-flakes.thiscute.world/)
* [https://determinate.systems/](https://determinate.systems/)
* [https://tech.aufomm.com/my-nixos-journey-flakes/](https://tech.aufomm.com/my-nixos-journey-flakes/)
* [Flakes video](https://www.youtube.com/watch?v%3DDXz3FJszfo0)
* [https://jdisaacs.com/blog/nixos-config/](https://jdisaacs.com/blog/nixos-config/)
* [https://github.com/wiltaylor/dotfiles](https://github.com/wiltaylor/dotfiles)
* [](https://www.youtube.com/watch?v%3DQKoQ1gKJY5A%26list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
    * [Wil Taylor's NixOS series](https://www.youtube.com/watch?v%3DQKoQ1gKJY5A%26list%3DPL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)
* [https://woile.dev/posts/nix-journey-part-1-creating-a-flake/](https://woile.dev/posts/nix-journey-part-1-creating-a-flake/)
* [https://ryantm.github.io/nixpkgs/](https://ryantm.github.io/nixpkgs/)
* [https://github.com/nix-community/poetry2nix/blob/master/templates/app/flake.nix](https://github.com/nix-community/poetry2nix/blob/master/templates/app/flake.nix)
* [Is NixOS Overrated?](https://www.youtube.com/watch?v%3DsSxGEHakfuc)
* [https://www.reddit.com/r/NixOS/comments/y1xo2u/how_to_create_an_iso_with_my_config_files/](https://www.reddit.com/r/NixOS/comments/y1xo2u/how_to_create_an_iso_with_my_config_files/)
* [https://news.ycombinator.com/item?id=35208402](https://news.ycombinator.com/item?id%3D35208402)


* *** [](https://gitlab.com/librephoenix/nixos-config)
    * [https://gitlab.com/librephoenix/nixos-config](https://gitlab.com/librephoenix/nixos-config)
* [](https://github.com/librephoenix/nixos-config)
    * [https://github.com/librephoenix/nixos-config](https://github.com/librephoenix/nixos-config)
* [https://github.com/jakehamilton/config](https://github.com/jakehamilton/config)
* [https://github.com/snowfallorg/lib](https://github.com/snowfallorg/lib)
* [https://github.com/spikespaz/dotfiles](https://github.com/spikespaz/dotfiles)
* [https://discourse.nixos.org/t/install-nixos-from-existing-linux/6856/14](https://discourse.nixos.org/t/install-nixos-from-existing-linux/6856/14)
* [https://github.com/NyCodeGHG/dotfiles](https://github.com/NyCodeGHG/dotfiles)
* [https://crane.dev/](https://crane.dev/)
* [https://github.com/emmaboecker/dotfiles](https://github.com/emmaboecker/dotfiles)
* [https://github.com/DavidEGrayson/nixcrpkgs](https://github.com/DavidEGrayson/nixcrpkgs) - expressions for cross-compiling
* [https://tweag.github.io/nixpkgs/file-sets/manual.html#preface](https://tweag.github.io/nixpkgs/file-sets/manual.html%23preface)
* [https://github.com/LunNova/nixos-configs](https://github.com/LunNova/nixos-configs)

How to install and nconfigure browser extension with Nix and Home Manager?
* [https://cmacr.ae/blog/managing-firefox-on-macos-with-nix/](https://cmacr.ae/blog/managing-firefox-on-macos-with-nix/)
* [https://github.com/monadplus/old-nixos-configuration](https://github.com/monadplus/old-nixos-configuration)
* [https://wiki.nikiv.dev/package-managers/nix/](https://wiki.nikiv.dev/package-managers/nix/)
* [https://github.com/prmadev/willow](https://github.com/prmadev/willow)

Project idea: add .drv syntax highlighting to bat, or create a bat-based tool to format and display .drv all-in-one
* [https://github.com/LnL7/vim-nix/](https://github.com/LnL7/vim-nix/)
* [https://github.com/redoracle/nixos](https://github.com/redoracle/nixos) -Alpine + Nix
* [https://cbailey.co.uk/posts/a_minimal_nix_development_environment_on_wsl](https://cbailey.co.uk/posts/a_minimal_nix_development_environment_on_wsl)
* [https://adnab.me/blog/2023/2023-04-02-rootless-nixos-alpine.html](https://adnab.me/blog/2023/2023-04-02-rootless-nixos-alpine.html)
* [https://flakehub.com/](https://flakehub.com/)
* [https://community.flake.parts/](https://community.flake.parts/)
* [https://nixos.asia/en/](https://nixos.asia/en/)
* [https://daniel-siepmann.de/nix-journey-part-1.html](https://daniel-siepmann.de/nix-journey-part-1.html)


* suckless [](https://github.com/NixOS/nixpkgs/issues/23200)
    * [https://github.com/NixOS/nixpkgs/issues/23200](https://github.com/NixOS/nixpkgs/issues/23200)
* [](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
    * [https://discourse.nixos.org/t/simple-terminal-st-setup/9763](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
* [https://daniel-siepmann.de/nix-journey-part-1.html#howIFinallyStartedWithNixNotNixos](https://daniel-siepmann.de/nix-journey-part-1.html%23howIFinallyStartedWithNixNotNixos)
* [https://mynixos.com/mynixos/demo-linode-nginx](https://mynixos.com/mynixos/demo-linode-nginx)
* [https://nixcademy.com/cheatsheet.html](https://nixcademy.com/cheatsheet.html)
* [https://landscape.nixlang.wiki/](https://landscape.nixlang.wiki/)
* [https://devos.divnix.com/index.html](https://devos.divnix.com/index.html)
* [https://nixos-and-flakes.thiscute.world/](https://nixos-and-flakes.thiscute.world/)

an integer is required

In [15]: stat.S_ISLNK(os.lstat("/home/isaac/.config/wezterm").st_mode) Out[15]: False

In [16]: stat.S_ISLNK(os.lstat("/home/isaac/.config/wezterm/wezterm.lua").st_mode) Out[16]: True

In [17]: stat.S_ISLNK(os.lstat("/home/isaac/.config/nvim").st_mode) Out[17]: False

In [18]: stat.S_ISLNK(os.lstat("/home/isaac/.config/nvim/init.lua").st_mode) Out[18]: True

In [19]: os.readlink("/home/isaac/.config/wezterm/wezterm.lua") Out[19]: '/nix/store/xbbcd7ik76y7khhgn218nikazn4f447a-home-manager-files/.config/wezterm/wezterm.lua'

→ [](https://duckduckgo.com/?q%3Dcontent-addressed%2Bstorage%2Bin%2Bnix%26ia%3Dweb)
    * [https://duckduckgo.com/?q=content-addressed+storage+in+nix&ia=web](https://duckduckgo.com/?q%3Dcontent-addressed%2Bstorage%2Bin%2Bnix%26ia%3Dweb)
* [https://github.com/knoc-off/nixos](https://github.com/knoc-off/nixos)


* NixOS, Nix [](https://www.reddit.com/r/unixporn/s/ESi62fFi1j)
    * [https://www.reddit.com/r/unixporn/s/ESi62fFi1j](https://www.reddit.com/r/unixporn/s/ESi62fFi1j)
    * [https://github.com/tweag/rfcs/blob/flakes/rfcs/0049-flakes.md](https://github.com/tweag/rfcs/blob/flakes/rfcs/0049-flakes.md)
* [](https://www.tweag.io/blog/2021-12-20-nix-2.4/)
    * [https://www.tweag.io/blog/2021-12-20-nix-2.4/](https://www.tweag.io/blog/2021-12-20-nix-2.4/)
* [](https://discourse.nixos.org/t/do-gui-applications-not-work-on-non-nixos-using-nixpkgs-only/19070/16)
    * [https://discourse.nixos.org/t/do-gui-applications-not-work-on-non-nixos-using-nixpkgs-only/19070/16](https://discourse.nixos.org/t/do-gui-applications-not-work-on-non-nixos-using-nixpkgs-only/19070/16)
    * [https://www.youtube.com/watch?v=c447uYCePAo](https://www.youtube.com/watch?v%3Dc447uYCePAo)
* [](https://typednix.dev/)
    * [https://typednix.dev/](https://typednix.dev/)
* [](https://nixos.org/manual/nixpkgs/unstable/%23python)
    * [https://nixos.org/manual/nixpkgs/unstable/#python](https://nixos.org/manual/nixpkgs/unstable/%23python)
* [](https://mtlynch.io/notes/nix-dev-environment/)
    * [https://mtlynch.io/notes/nix-dev-environment/](https://mtlynch.io/notes/nix-dev-environment/)
* [](https://mynixos.com/mynixos/demo-raspberry-transmission)
    * [https://mynixos.com/mynixos/demo-raspberry-transmission](https://mynixos.com/mynixos/demo-raspberry-transmission)
* [](https://gpt4all.io/index.html)
    * [https://gpt4all.io/index.html](https://gpt4all.io/index.html)
    * [https://www.youtube.com/watch?v=6L0H92-JdHA&pp=ygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg](https://www.youtube.com/watch?v%3D6L0H92-JdHA%26pp%3DygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg)
    * [https://www.youtube.com/watch?v=M7XSp-ubCy0&pp=ygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg](https://www.youtube.com/watch?v%3DM7XSp-ubCy0%26pp%3DygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg)
* [](https://thiscute.world/en/posts/nixos-and-flake-basics/)
    * [https://thiscute.world/en/posts/nixos-and-flake-basics/](https://thiscute.world/en/posts/nixos-and-flake-basics/)
* [](https://xeiaso.net/blog/how-i-start-nix-2020-03-08/)
    * [https://xeiaso.net/blog/how-i-start-nix-2020-03-08/](https://xeiaso.net/blog/how-i-start-nix-2020-03-08/)
* [](https://dimitrije.website/posts/2023-03-04-nix-ocaml.html)
    * [https://dimitrije.website/posts/2023-03-04-nix-ocaml.html](https://dimitrije.website/posts/2023-03-04-nix-ocaml.html)
* [](https://thenewstack.io/nixos-a-combination-linux-os-and-package-manager/)
    * [https://thenewstack.io/nixos-a-combination-linux-os-and-package-manager/](https://thenewstack.io/nixos-a-combination-linux-os-and-package-manager/)
* [](https://github.com/nix-community/poetry2nix)
    * [https://github.com/nix-community/poetry2nix](https://github.com/nix-community/poetry2nix)
* [](https://github.com/linuxmobile/kaku)
    * [https://github.com/linuxmobile/kaku](https://github.com/linuxmobile/kaku)
    * [https://github.com/mikeroyal/NixOS-Guide](https://github.com/mikeroyal/NixOS-Guide)
* [](https://www.google.com/url?q=http://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
    * [http://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/](https://www.google.com/url?q=http://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
* [](https://github.com/henriquekirchheck/nixos-flake)
    * [https://github.com/henriquekirchheck/nixos-flake](https://github.com/henriquekirchheck/nixos-flake)
* [](https://github.com/simplex-chat/haskell.nix)
    * [https://github.com/simplex-chat/haskell.nix](https://github.com/simplex-chat/haskell.nix)
    * [https://www.youtube.com/watch?v=NEbzVKkjXUg](https://www.youtube.com/watch?v%3DNEbzVKkjXUg)
* [](https://mynixos.com/pricing)
    * [https://mynixos.com/pricing](https://mynixos.com/pricing)
* [](https://github.com/brainrake/nixos-tutorial)
    * [https://github.com/brainrake/nixos-tutorial](https://github.com/brainrake/nixos-tutorial)
    * [https://gist.github.com/danmack/b76ef257e0fd9dda906b4c860f94a591](https://gist.github.com/danmack/b76ef257e0fd9dda906b4c860f94a591)
    * [https://github.com/zupo/nix](https://github.com/zupo/nix)
* [](https://github.com/zupo/nix/blob/master/rpi.nix)
    * [https://github.com/zupo/nix/blob/master/rpi.nix](https://github.com/zupo/nix/blob/master/rpi.nix)
* [](https://nixos-and-flakes.thiscute.world/)
    * [https://nixos-and-flakes.thiscute.world/](https://nixos-and-flakes.thiscute.world/)
* [](https://mynixos.com/search?q%3Dgtk)
    * [https://mynixos.com/search?q=gtk](https://mynixos.com/search?q%3Dgtk)
    * [https://www.youtube.com/watch?v=1ED9b7ERTzI&pp=ygUXaG93IHRvIHJlYWxseSBsZWFybiBOaXg%3D](https://www.youtube.com/watch?v%3D1ED9b7ERTzI%26pp%3DygUXaG93IHRvIHJlYWxseSBsZWFybiBOaXg%253D)
* [](https://www.reddit.com/r/NixOS/s/isBCetb09h)
    * [https://www.reddit.com/r/NixOS/s/isBCetb09h](https://www.reddit.com/r/NixOS/s/isBCetb09h)
    * [https://www.reddit.com/r/browsers/s/7RTbiwUx4q](https://www.reddit.com/r/browsers/s/7RTbiwUx4q)
    * [https://www.reddit.com/r/unixporn/s/Fk9sUOv7FY](https://www.reddit.com/r/unixporn/s/Fk9sUOv7FY)
* [](https://www.reddit.com/r/NixOS/s/AuPlyOQFIK)
    * [https://www.reddit.com/r/NixOS/s/AuPlyOQFIK](https://www.reddit.com/r/NixOS/s/AuPlyOQFIK)
* [](https://github.com/CallMeCaleb94/KyniFlakes)
    * [https://github.com/CallMeCaleb94/KyniFlakes](https://github.com/CallMeCaleb94/KyniFlakes)
* [](https://www.tweag.io/blog/2020-06-25-eval-cache/)
    * [https://www.tweag.io/blog/2020-06-25-eval-cache/](https://www.tweag.io/blog/2020-06-25-eval-cache/)
* [](https://github.com/snowfallorg/lib)
    * [https://github.com/snowfallorg/lib](https://github.com/snowfallorg/lib)
* [](https://github.com/CallMeCaleb94/KyniFlakes)
    * [https://github.com/CallMeCaleb94/KyniFlakes](https://github.com/CallMeCaleb94/KyniFlakes)
    * [https://github.com/SoraTenshi/helix/tree/master](https://github.com/SoraTenshi/helix/tree/master)
    * [https://www.reddit.com/r/NixOS/s/0T63UgILLY](https://www.reddit.com/r/NixOS/s/0T63UgILLY)
* [](https://github.com/thomascft/dotfiles/tree/nixos)
    * [https://github.com/thomascft/dotfiles/tree/nixos](https://github.com/thomascft/dotfiles/tree/nixos)
* [](https://hg.sr.ht/~ab/)
    * [https://hg.sr.ht/~ab/](https://hg.sr.ht/~ab/)
    * [https://discourse.nixos.org/t/creating-a-cuda-enabled-development-environment-for-machine-learning-on-nixos/30637](https://discourse.nixos.org/t/creating-a-cuda-enabled-development-environment-for-machine-learning-on-nixos/30637)
    * [https://news.ycombinator.com/item?id=30917809](https://news.ycombinator.com/item?id%3D30917809)
    * [https://www.youtube.com/watch?v=utoj6annRK0&pp=ygUSbml4b3MgaG9tZSBtYW5hZ2Vy](https://www.youtube.com/watch?v%3Dutoj6annRK0%26pp%3DygUSbml4b3MgaG9tZSBtYW5hZ2Vy)
* [](https://www.slice.zone/blog/nix-in-practice)
    * [https://www.slice.zone/blog/nix-in-practice](https://www.slice.zone/blog/nix-in-practice)
* [](https://www.tweag.io/blog/2020-09-10-nix-cas/)
    * [https://www.tweag.io/blog/2020-09-10-nix-cas/](https://www.tweag.io/blog/2020-09-10-nix-cas/)
* [](https://nixos.wiki/wiki/Android)
    * [https://nixos.wiki/wiki/Android](https://nixos.wiki/wiki/Android)
* [](https://discourse.nixos.org/t/a-proposal-for-replacing-the-nix-worker-protocol/20926/5)
    * [https://discourse.nixos.org/t/a-proposal-for-replacing-the-nix-worker-protocol/20926/5](https://discourse.nixos.org/t/a-proposal-for-replacing-the-nix-worker-protocol/20926/5)
* [](https://developer.holochain.org/get-started/install-advanced/)
    * [https://developer.holochain.org/get-started/install-advanced/](https://developer.holochain.org/get-started/install-advanced/)
* [](https://github.com/RaitoBezarius/buildxyz)
    * [https://github.com/RaitoBezarius/buildxyz](https://github.com/RaitoBezarius/buildxyz)
* [](https://discourse.nixos.org/t/2023-nix-developer-dialogues-live-stream/35386)
    * [https://discourse.nixos.org/t/2023-nix-developer-dialogues-live-stream/35386](https://discourse.nixos.org/t/2023-nix-developer-dialogues-live-stream/35386)
* [](https://github.com/Hexlet/awesome-lsp-servers)
    * [https://github.com/Hexlet/awesome-lsp-servers](https://github.com/Hexlet/awesome-lsp-servers)
* [](https://news.ycombinator.com/item?id%3D38237696)
    * [dotfiles-nix/flake.nix at main · notusknot/dotfiles-nix](https://github.com/notusknot/dotfiles-nix/blob/main/flake.nix)
* [](https://search.nixos.org/packages?channel%3D23.11%26show%3Dcosmic-edit%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dcosmic)
    * [NixOS Search - Packages - cosmic](https://search.nixos.org/packages?channel%3D23.11%26show%3Dcosmic-edit%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dcosmic)
* [](https://nix-community.github.io/home-manager/)
    * [Home Manager Manual](https://nix-community.github.io/home-manager/)
* [](https://discourse.nixos.org/t/nixos-configuration-file-organisation/19612/5)
    * [NixOS Configuration File Organisation - Help - NixOS Discourse](https://discourse.nixos.org/t/nixos-configuration-file-organisation/19612/5)
* [](https://nix-community.github.io/home-manager/index.xhtml%23ch-nix-flakes)
    * [Home Manager Manual](https://nix-community.github.io/home-manager/index.xhtml%23ch-nix-flakes)
* [](https://nixos.org/manual/nixos/stable/index.html%23sec-writing-modules)
    * [NixOS 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixos/stable/index.html%23sec-writing-modules)
* [](https://www.bekk.christmas/post/2021/13/deterministic-systems-with-nix)
    * [Deterministic systems with Nix](https://www.bekk.christmas/post/2021/13/deterministic-systems-with-nix)
* [](https://github.com/nix-community/home-manager)
    * [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager)
* [](https://github.com/Misterio77/nix-starter-configs)
    * [Misterio77/nix-starter-configs: Simple and documented config templates to help you get started with NixOS + home-manager + flakes. All the boilerplate you need!](https://github.com/Misterio77/nix-starter-configs)
* [](https://github.com/yelircaasi/nixos-config/tree/main)
    * [yelircaasi/nixos-config: My NixOS configuration files. I'm new to NixOS, so take all of this with a grain of salt.](https://github.com/yelircaasi/nixos-config/tree/main)
* [](https://github.com/TLATER/dotfiles/tree/master)
    * [TLATER/dotfiles: Dotfiles deployed with nix/home-manager. Feel free to take what you like!](https://github.com/TLATER/dotfiles/tree/master)
* [](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlem)
    * [NixOS Search - Packages - lem](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlem)
* [](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
    * [Ultimate NixOS Guide | Flakes | Home-manager - YouTube](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
* [](https://ryantm.github.io/nixpkgs/functions/library/options/)
    * [lib.options: NixOS / nixpkgs option handling | nixpkgs](https://ryantm.github.io/nixpkgs/functions/library/options/)
* [](https://search.nixos.org/packages?channel%3D23.11%26show%3Djira-cli-go%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Djira)
    * [NixOS Search - Packages - jira](https://search.nixos.org/packages?channel%3D23.11%26show%3Djira-cli-go%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Djira)
* [](https://learnxinyminutes.com/docs/nix/)
    * [Learn nix in Y Minutes](https://learnxinyminutes.com/docs/nix/)
* [](https://discourse.nixos.org/t/home-stateversion-is-not-of-type-one-of-18-09-19-03-19-09-20-03-20-09-21-03-21-05-21-11/19691)
    * [home.stateVersion is not of type `one of "18.09", "19.03", "19.09", "20.03", "20.09", "21.03", "21.05", "21.11"' - Help - NixOS Discourse](https://discourse.nixos.org/t/home-stateversion-is-not-of-type-one-of-18-09-19-03-19-09-20-03-20-09-21-03-21-05-21-11/19691)
* [](https://www.bekk.christmas/post/2021/13/deterministic-systems-with-nix)
    * [Deterministic systems with Nix](https://www.bekk.christmas/post/2021/13/deterministic-systems-with-nix)
* [](https://discourse.nixos.org/t/mkif-vs-if-then/28521)
    * [mkIf vs if / then - Help - NixOS Discourse](https://discourse.nixos.org/t/mkif-vs-if-then/28521)
* [](https://mynixos.com/search?q%3Dkanata)
    * [kanata - MyNixOS](https://mynixos.com/search?q%3Dkanata)
* [](https://nix-community.github.io/home-manager/release-notes.xhtml%23sec-release-22.11-state-version-changes)
    * [Appendix D. Release Notes](https://nix-community.github.io/home-manager/release-notes.xhtml%23sec-release-22.11-state-version-changes)
* [](https://www.reddit.com/r/NixOS/comments/10ym1ed/any_documentation_on_keyd_under_nixos/)
    * [Any documentation on keyd under NixOS? : r/NixOS](https://www.reddit.com/r/NixOS/comments/10ym1ed/any_documentation_on_keyd_under_nixos/)
* [](https://github.com/morphykuffour/nix/blob/011bf23ba8bcf95c8cdd163ae746776ee4f7d00e/pkgs/keyd/default.nix)
    * [nix/pkgs/keyd/default.nix at 011bf23ba8bcf95c8cdd163ae746776ee4f7d00e · morphykuffour/nix](https://github.com/morphykuffour/nix/blob/011bf23ba8bcf95c8cdd163ae746776ee4f7d00e/pkgs/keyd/default.nix)
* [](https://www.reddit.com/r/NixOS/comments/15coxtr/homemanager_using_hostname_for_hostspecific/)
    * [Home-manager: using hostname for host-specific settings : r/NixOS](https://www.reddit.com/r/NixOS/comments/15coxtr/homemanager_using_hostname_for_hostspecific/)
* [](https://hugoreeves.com/posts/2019/nix-home/)
    * [Your home in Nix (dotfile management) - Hugo Reeves](https://hugoreeves.com/posts/2019/nix-home/)
* [](https://haseebmajid.dev/posts/2023-09-12-how-i-configure-nixos-as-part-of-my-development-workflow/)
    * [My NixOS Dotfiles Explained | Haseeb Majid](https://haseebmajid.dev/posts/2023-09-12-how-i-configure-nixos-as-part-of-my-development-workflow/)
* [](https://github.com/mrzool/unix-as-ide)
    * [mrzool/unix-as-ide: The ebook version of Tom Ryder's series on the Unix programming environment](https://github.com/mrzool/unix-as-ide)
* [](https://framagit.org/vegaelle/nix-nvim)
    * [gaelle / nix-nvim · GitLab](https://framagit.org/vegaelle/nix-nvim)
* [](https://search.nixos.org/packages?channel%3Dunstable%26show%3Dtre-command%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dtre)
    * [NixOS Search - Packages - tre](https://search.nixos.org/packages?channel%3Dunstable%26show%3Dtre-command%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dtre)
* [](https://github.com/NixOS/nixpkgs/issues/191128)
    * [How to manually replicate/reproduce/obtain the sha256 hash specified in Nix with fetchgit or fetchFromGitHub? · Issue #191128 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/issues/191128)
* [](https://www.youtube.com/watch?v%3DYZAnJ0rwREA)
    * [Neovim and Nix home-manager: Supercharge Your Development Environment - YouTube](https://www.youtube.com/watch?v%3DYZAnJ0rwREA)
* [](https://www.youtube.com/watch?v%3DS3VBi6kHw5c%26t%3D3s)
    * [Nix flakes explained - YouTube](https://www.youtube.com/watch?v%3DS3VBi6kHw5c%26t%3D3s)
* [](https://www.youtube.com/watch?v%3D4ZoBGlkMPWI)
    * [Manage Nix Flake Inputs Like a Pro - YouTube](https://www.youtube.com/watch?v%3D4ZoBGlkMPWI)
* [](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
    * [Ultimate NixOS Guide | Flakes | Home-manager - YouTube](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
* [](https://www.youtube.com/watch?v%3DIrxCiNnXG4M%26t%3D61s)
    * [Beginners Guide to Nix EP1: Flakes - YouTube](https://www.youtube.com/watch?v%3DIrxCiNnXG4M%26t%3D61s)
* [](https://www.youtube.com/watch?v%3DyQwW8dkuHqw%26t%3D1s)
    * [Nix Dev Environments | Declare Your Coding Projects - YouTube](https://www.youtube.com/watch?v%3DyQwW8dkuHqw%26t%3D1s)
* [](https://github.com/nix-community/poetry2nix%23how-to-guides)
    * [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix%23how-to-guides)
* [](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Drpds)
    * [NixOS Search - Packages - rpds](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Drpds)
* [](https://discourse.nixos.org/t/creating-nixos-iso-for-an-older-laptop-with-i686-32bit/26002)
    * [Creating NixOS iso for an older Laptop with i686 (32bit) - Help - NixOS Discourse](https://discourse.nixos.org/t/creating-nixos-iso-for-an-older-laptop-with-i686-32bit/26002)
* [](https://discourse.nixos.org/t/home-manager-installed-apps-dont-show-up-in-applications-launcher/8523)
    * [Home-manager installed apps don't show up in Applications Launcher - Help - NixOS Discourse](https://discourse.nixos.org/t/home-manager-installed-apps-dont-show-up-in-applications-launcher/8523)
* [](https://github.com/danth/stylix/)
    * [danth/stylix: System-wide colorscheming and typography for NixOS](https://github.com/danth/stylix/)
* [](https://josiahalenbrown.substack.com/p/managing-your-nixos-configuration)
    * [Managing your NixOS configuration with Flakes and Home Manager!](https://josiahalenbrown.substack.com/p/managing-your-nixos-configuration)
* [](https://hugoreeves.com/posts/2019/nix-home/)
    * [Your home in Nix (dotfile management) - Hugo Reeves](https://hugoreeves.com/posts/2019/nix-home/)
* [](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
    * [Tutorial: Getting started with Home Manager for Nix | Mattia Gheda](https://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [](https://determinate.systems/posts/nix-home-env)
    * [Building a highly optimized home environment with Nix](https://determinate.systems/posts/nix-home-env)
* [](https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph)
    * [How to Enable Wayland on NixOS, or: Confusion, Conquest, Triumph](https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph)
* [](https://nixcademy.com/cheatsheet.html)
    * [Nix & NixOS CheatSheet](https://nixcademy.com/cheatsheet.html)
* [](https://nixlang.wiki/)
    * [NixLang Wiki | NixLang.wiki](https://nixlang.wiki/)
* [](https://github.com/symphorien/vim-nixhash/)
    * [symphorien/vim-nixhash: neovim plugin to automate fixing fake TOFU hashes when writing nix derivations](https://github.com/symphorien/vim-nixhash/)
* [](https://github.com/DavHau/nix-portable)
    * [DavHau/nix-portable: Nix - Static, Permissionless, Installation-free, Pre-configured](https://github.com/DavHau/nix-portable)
* [](https://www.youtube.com/watch?v%3DuS8Bx8nQots)
    * [I Have Fallen In 💕 Love With ❄️ NixOS | A Basic Introduction To NixOS - YouTube](https://www.youtube.com/watch?v%3DuS8Bx8nQots)
* [](https://github.com/mikeroyal/NixOS-Guide)
    * [GitHub - mikeroyal/NixOS-Guide: NixOS Guide. Learn all about the immutable Nix Operating System and the declarative Nix Expression Language.](https://github.com/mikeroyal/NixOS-Guide)
* [](https://nixos.wiki/wiki/Nix_to_Debian_phrasebook)
    * [Nix to Debian phrasebook - NixOS Wiki](https://nixos.wiki/wiki/Nix_to_Debian_phrasebook)
* [](https://www.youtube.com/watch?v%3DbbW6kgB5F2M)
    * [Gabriella Gonzalez, "How to Write a Nix Derivation" - YouTube](https://www.youtube.com/watch?v%3DbbW6kgB5F2M)
* [](https://nixos.org/manual/nix/stable/language/constructs.html)
    * [Language Constructs - Nix Reference Manual](https://nixos.org/manual/nix/stable/language/constructs.html)
* [](https://github.com/nix-community/home-manager)
    * [nix-community/home-manager: Manage a user environment using Nix [maintainer=@rycee]](https://github.com/nix-community/home-manager)
* [](https://discourse.nixos.org/t/nix-syntax-for-passing-arguments-to-imported-modules/31547/2)
    * [Nix syntax for passing arguments to imported Modules - Help - NixOS Discourse](https://discourse.nixos.org/t/nix-syntax-for-passing-arguments-to-imported-modules/31547/2)
* [](https://discourse.nixos.org/t/alternative-language/5218/10)
    * [Alternative language - NixOS Discourse](https://discourse.nixos.org/t/alternative-language/5218/10)
* [](https://discourse.nixos.org/t/alternative-language/5218)
    * [Alternative language - NixOS Discourse](https://discourse.nixos.org/t/alternative-language/5218)
* [](https://www.reddit.com/r/neovim/comments/106letr/manage_neovim_plugins_and_more_with_nix_and_home/)
    * [(4) Manage Neovim plugins (and more!) with Nix and Home Manager : neovim](https://www.reddit.com/r/neovim/comments/106letr/manage_neovim_plugins_and_more_with_nix_and_home/)
* [](https://github.com/nix-community/home-manager/blob/master/modules/programs/neovim.nix%23L47)
    * [home-manager/modules/programs/neovim.nix at master · nix-community/home-manager](https://github.com/nix-community/home-manager/blob/master/modules/programs/neovim.nix%23L47)
* [](https://distrowatch.com/table.php?distribution%3Dnixos)
    * [DistroWatch.com: NixOS](https://distrowatch.com/table.php?distribution%3Dnixos)
* [](https://www.slant.co/versus/2689/2700/~ubuntu_vs_nixos)
    * [Ubuntu vs NixOS detailed comparison as of 2024 - Slant](https://www.slant.co/versus/2689/2700/~ubuntu_vs_nixos)
* [](https://www.reddit.com/r/NixOS/comments/wtweio/security_updates_in_nixos/)
    * [Security updates in Nixos : r/NixOS](https://www.reddit.com/r/NixOS/comments/wtweio/security_updates_in_nixos/)
* [](https://nixos.wiki/wiki/Ubuntu_vs._NixOS)
    * [Ubuntu vs. NixOS - NixOS Wiki](https://nixos.wiki/wiki/Ubuntu_vs._NixOS)
* [](https://github.com/nix-community/nixos-anywhere)
    * [nix-community/nixos-anywhere: install nixos everywhere via ssh [maintainer=@numtide]](https://github.com/nix-community/nixos-anywhere)
* [](https://nixos.wiki/wiki/TUXEDO_Devices)
    * [TUXEDO Devices - NixOS Wiki](https://nixos.wiki/wiki/TUXEDO_Devices)
* [](https://nixos.org/manual/nixos/unstable/index.html%23sec-luks-file-systems)
    * [NixOS 24.05 manual | Nix & NixOS](https://nixos.org/manual/nixos/unstable/index.html%23sec-luks-file-systems)
* [](https://nixos.wiki/wiki/Full_Disk_Encryption)
    * [Full Disk Encryption - NixOS Wiki](https://nixos.wiki/wiki/Full_Disk_Encryption)
* [](https://gist.github.com/mara-schulke/43e2632ce73d94028f50f438037c1578)
    * [Installing NixOS with Full Disk Encryption](https://gist.github.com/mara-schulke/43e2632ce73d94028f50f438037c1578)
* [](https://nixos.wiki/wiki/Security)
    * [Security - NixOS Wiki](https://nixos.wiki/wiki/Security)
* [](https://nixos.org/manual/nixos/unstable/%23sec-installation)
    * [NixOS 24.05 manual | Nix & NixOS](https://nixos.org/manual/nixos/unstable/%23sec-installation)
* [](https://nixos.org/manual/nixos/stable/%23sec-installing-from-other-distro)
    * [NixOS 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixos/stable/%23sec-installing-from-other-distro)
* [](https://www.reddit.com/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/)
    * [Is it possible to morph Debian into NixOS? : r/NixOS](https://www.reddit.com/r/NixOS/comments/140tvls/is_it_possible_to_morph_debian_into_nixos/)
* [](https://discourse.nixos.org/t/python-package-install-using-poetry-nix/10624/12)
    * [Python package install using poetry + nix - NixOS Discourse](https://discourse.nixos.org/t/python-package-install-using-poetry-nix/10624/12)
* [](https://stesie.github.io/2016/08/nixos-pt1)
    * [On Replacing Ubuntu with NixOS (part 1)](https://stesie.github.io/2016/08/nixos-pt1)
* [](https://github.com/nix-community/nixpkgs-wayland)
    * [nix-community/nixpkgs-wayland: Automated, pre-built packages for Wayland (sway/wlroots) tools for NixOS. [maintainers=@colemickens, @Artturin]](https://github.com/nix-community/nixpkgs-wayland)
* [](https://discourse.nixos.org/t/adding-non-python-dependencies-to-poetry2nix-application/26755/6)
    * [Adding non-python dependencies to poetry2nix application - Help - NixOS Discourse](https://discourse.nixos.org/t/adding-non-python-dependencies-to-poetry2nix-application/26755/6)
* [](https://github.com/nix-community/poetry2nix/issues/1337)
    * [Poetry2nix: mismatch cryptography sha256 but unable to modify · Issue #1337 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1337)
* [](https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/interpreters/python/mk-python-derivation.nix)
    * [nixpkgs/pkgs/development/interpreters/python/mk-python-derivation.nix at master · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/interpreters/python/mk-python-derivation.nix)
* [](https://github.com/nix-community/poetry2nix/issues/594)
    * [Question: How to specify runtime dependencies of python sub-dependencies · Issue #594 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/594)
* [](https://github.com/NixOS/nixpkgs/pull/176950/commits/4a9a41af7b33472c5d5c0dd443f350f4e9cb6599)
    * [fetchFromGitLab: support for private repositories by panicgh · Pull Request #176950 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/pull/176950/commits/4a9a41af7b33472c5d5c0dd443f350f4e9cb6599)
* [](https://github.com/nix-community/poetry2nix/issues/1423)
    * [Private Repository Authentication not working for new nix-commands and flakes (pure mode) · Issue #1423 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1423)
* [](https://github.com/nix-community/poetry2nix/issues/1244)
    * [netrc FileNotFoundError for private PyPI server · Issue #1244 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/issues/1244)
* [](https://github.com/tweag/jupyenv)
    * [tweag/jupyenv: Declarative and reproducible Jupyter environments - powered by Nix](https://github.com/tweag/jupyenv)
* [](https://github.com/nix-community/poetry2nix/pull/390/files%23diff-25f00f391a440414afdc84d7191b5892db3492e1c0b9a45f9063be83e21d75e4R154)
    * [Enable private pypi repositories with credentials by rskew · Pull Request #390 · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/pull/390/files%23diff-25f00f391a440414afdc84d7191b5892db3492e1c0b9a45f9063be83e21d75e4R154)
* [](https://github.com/NixOS/nixpkgs/issues/105593)
    * [Editable install with poetry · Issue #105593 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/issues/105593)
* [](https://peppe.rs/posts/novice_nix:_flake_templates/)
    * [Novice Nix: Flake Templates · peppe.rs](https://peppe.rs/posts/novice_nix:_flake_templates/)
* [](https://dev.to/serokell/practical-nix-flakes-5e6p)
    * [Practical Nix Flakes - DEV Community](https://dev.to/serokell/practical-nix-flakes-5e6p)
* [](https://github.com/nampdn/my-cheatsheet/blob/802116b02deffdf33e1e4dc63dff56b0b8998b71/nix/setup-nix.md?plain%3D1%23L490)
    * [my-cheatsheet/nix/setup-nix.md at 802116b02deffdf33e1e4dc63dff56b0b8998b71 · nampdn/my-cheatsheet](https://github.com/nampdn/my-cheatsheet/blob/802116b02deffdf33e1e4dc63dff56b0b8998b71/nix/setup-nix.md?plain%3D1%23L490)
* [](https://github.com/thiagokokada/nix-alien)
    * [thiagokokada/nix-alien: Run unpatched binaries on Nix/NixOS](https://github.com/thiagokokada/nix-alien)
* [](https://search.nixos.org/packages?channel%3D23.11%26show%3Dihaskell%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dipython)
    * [NixOS Search - Packages - ipython](https://search.nixos.org/packages?channel%3D23.11%26show%3Dihaskell%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dipython)
* [](https://search.nixos.org/packages?channel%3D23.11%26show%3DvimPlugins.lazy-lsp-nvim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlazy-lsp)
    * [NixOS Search - Packages - lazy-lsp](https://search.nixos.org/packages?channel%3D23.11%26show%3DvimPlugins.lazy-lsp-nvim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlazy-lsp)
* [](https://blog.eigenvalue.net/2023-nix-fetch-with-authentication/)
    * [Peter Kolloch - Blog - Nix: Authenticated Fetches from GitLab - Reading about Related Work](https://blog.eigenvalue.net/2023-nix-fetch-with-authentication/)
* [](https://discourse.nixos.org/t/how-to-fetchurl-with-credentials/11994)
    * [How to fetchurl with credentials - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-fetchurl-with-credentials/11994)
* [](https://github.com/NixOS/nixpkgs/blob/nixos-23.11/pkgs/development/python-modules/halo/default.nix%23L28)
    * [nixpkgs/pkgs/development/python-modules/halo/default.nix at nixos-23.11 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/nixos-23.11/pkgs/development/python-modules/halo/default.nix%23L28)
* [](https://nixos.org/manual/nixpkgs/stable/%23chap-pkgs-fetchers)
    * [Nixpkgs 23.11 manual | Nix & NixOS](https://nixos.org/manual/nixpkgs/stable/%23chap-pkgs-fetchers)
* [](https://github.com/NixNeovim/NixNeovim/blob/main/flake.nix)
    * [NixNeovim/flake.nix at main · NixNeovim/NixNeovim](https://github.com/NixNeovim/NixNeovim/blob/main/flake.nix)
* [](https://github.com/nix-community/poetry2nix?tab%3Dreadme-ov-file%23mkpoetryeditablepackage)
    * [nix-community/poetry2nix: Convert poetry projects to nix automagically [maintainer=@adisbladis]](https://github.com/nix-community/poetry2nix?tab%3Dreadme-ov-file%23mkpoetryeditablepackage)
* [](https://discourse.nixos.org/t/devshells-and-poetry2nix/26837)
    * [devShells and poetry2nix - Development - NixOS Discourse](https://discourse.nixos.org/t/devshells-and-poetry2nix/26837)
* [](https://discourse.nixos.org/t/accessing-a-private-github-repo-using-builtins-fetchgit/29610)
    * [Accessing a private GitHub repo using builtins.fetchGit? - Help - NixOS Discourse](https://discourse.nixos.org/t/accessing-a-private-github-repo-using-builtins-fetchgit/29610)
* [](https://discourse.nixos.org/t/unable-to-use-fetchgit-on-private-git-repo/24280)
    * [Unable to use fetchgit on private git repo - Help - NixOS Discourse](https://discourse.nixos.org/t/unable-to-use-fetchgit-on-private-git-repo/24280)
* [](https://github.com/NixOS/nixpkgs/pull/176950)
    * [fetchFromGitLab: support for private repositories by panicgh · Pull Request #176950 · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/pull/176950)
* [](https://nixos.org/manual/nix/stable/package-management/garbage-collection.html)
    * [Garbage Collection - Nix Reference Manual](https://nixos.org/manual/nix/stable/package-management/garbage-collection.html)
* [](https://jade.fyi/blog/flakes-arent-real/)
    * [Flakes aren't real and cannot hurt you: a guide to using Nix flakes the non-flake way - jade's www site](https://jade.fyi/blog/flakes-arent-real/)
* [](https://ipetkov.dev/blog/tips-and-tricks-for-nix-flakes/)
    * [Tips and Tricks for Nix Flakes | Ivan Petkov](https://ipetkov.dev/blog/tips-and-tricks-for-nix-flakes/)
* [](https://serokell.io/blog/practical-nix-flakes)
    * [Practical Nix Flakes](https://serokell.io/blog/practical-nix-flakes)
* [](https://ghedam.at/a-tour-of-nix-flakes)
    * [A Tour of Nix Flakes | Mattia Gheda](https://ghedam.at/a-tour-of-nix-flakes)
* [](https://xeiaso.net/blog/nix-flakes-3-2022-04-07/)
    * [Nix Flakes: Exposing and using NixOS Modules - Xe Iaso](https://xeiaso.net/blog/nix-flakes-3-2022-04-07/)
* [](https://github.com/nix-community/poetry2nix/blob/master/tests/editable/default.nix)
    * [poetry2nix/tests/editable/default.nix at master · nix-community/poetry2nix](https://github.com/nix-community/poetry2nix/blob/master/tests/editable/default.nix)
* [](https://discourse.nixos.org/c/learn/9)
    * [Latest Help topics - NixOS Discourse](https://discourse.nixos.org/c/learn/9)
* [](https://discourse.nixos.org/t/fetchfromgitlab-support-for-private-repositories/22900)
    * [fetchFromGitLab: support for private repositories - Development - NixOS Discourse](https://discourse.nixos.org/t/fetchfromgitlab-support-for-private-repositories/22900)
* [](https://discourse.nixos.org/t/preparing-a-nix-flake-for-a-python-program-migra-using-poetry/12030)
    * [Preparing a Nix flake for a Python program (Migra, using Poetry) - Help - NixOS Discourse](https://discourse.nixos.org/t/preparing-a-nix-flake-for-a-python-program-migra-using-poetry/12030)
* [](https://gitlab.com/javimarsal/devtec-guides/-/blob/main/Set%2520a%2520consistent%2520cursor%2520theme%2520for%2520nix%2520UI%2520packages/guide-english/README.md?ref_type%3Dheads)
    * [Set a consistent cursor theme for nix UI packages/guide-english/README.md · main · Javier Martínez / devtec-guides · GitLab](https://gitlab.com/javimarsal/devtec-guides/-/blob/main/Set%2520a%2520consistent%2520cursor%2520theme%2520for%2520nix%2520UI%2520packages/guide-english/README.md?ref_type%3Dheads)
* [](https://github.com/carlthome/poetry2nix-example)
    * [carlthome/poetry2nix-example: Playing around with poetry2nix to learn more about Nix for Python development](https://github.com/carlthome/poetry2nix-example)
* [](https://www.youtube.com/watch?v%3DS3VBi6kHw5c%26t%3D3s)
    * [Nix flakes explained - YouTube](https://www.youtube.com/watch?v%3DS3VBi6kHw5c%26t%3D3s)
* [](https://www.youtube.com/watch?v%3D4ZoBGlkMPWI)
    * [Manage Nix Flake Inputs Like a Pro - YouTube](https://www.youtube.com/watch?v%3D4ZoBGlkMPWI)
* [](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
    * [Ultimate NixOS Guide | Flakes | Home-manager - YouTube](https://www.youtube.com/watch?v%3Da67Sv4Mbxmc)
* [](https://www.youtube.com/watch?v%3DIrxCiNnXG4M%26t%3D61s)
    * [Beginners Guide to Nix EP1: Flakes - YouTube](https://www.youtube.com/watch?v%3DIrxCiNnXG4M%26t%3D61s)
* [](https://www.youtube.com/watch?v%3DyQwW8dkuHqw%26t%3D1s)
    * [Nix Dev Environments | Declare Your Coding Projects - YouTube](https://www.youtube.com/watch?v%3DyQwW8dkuHqw%26t%3D1s)
* [](https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html)
    * [Installing NixOS on a Raspberry Pi — nix.dev documentation](https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html)
* [](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_4)
    * [NixOS on ARM/Raspberry Pi 4 - NixOS Wiki](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_4)
* [](https://www.reddit.com/r/NixOS/comments/18skfx9/introducing_lazynixhelper_use_your_existing/)
    * [(3) Introducing Lazy-Nix-Helper: use your existing (Lazy-based) neovim config on NixOS : NixOS](https://www.reddit.com/r/NixOS/comments/18skfx9/introducing_lazynixhelper_use_your_existing/)
* [](https://github.com/b-src/lazy-nix-helper.nvim)
    * [b-src/lazy-nix-helper.nvim: Neovim plugin allowing a single neovim configuration with the Lazy plugin manager to be used on NixOS and other platforms](https://github.com/b-src/lazy-nix-helper.nvim)
* [](https://github.com/NixOS/nixpkgs-channels/blob/nixos-unstable/pkgs/misc/vim-plugins/build-vim-plugin.nix)
    * [nixpkgs-channels/pkgs/misc/vim-plugins/build-vim-plugin.nix at nixos-unstable · NixOS/nixpkgs-channels](https://github.com/NixOS/nixpkgs-channels/blob/nixos-unstable/pkgs/misc/vim-plugins/build-vim-plugin.nix)
* [](https://github.com/NixOS/nixpkgs/blob/8b735381322a1f8fff46add535f1fb5aea71e2da/pkgs/applications/editors/vim/plugins/vim-clap/default.nix%23L58)
    * [nixpkgs/pkgs/applications/editors/vim/plugins/vim-clap/default.nix at 8b735381322a1f8fff46add535f1fb5aea71e2da · NixOS/nixpkgs](https://github.com/NixOS/nixpkgs/blob/8b735381322a1f8fff46add535f1fb5aea71e2da/pkgs/applications/editors/vim/plugins/vim-clap/default.nix%23L58)
* [](https://github.com/nix-community/rnix-parser)
    * [nix-community/rnix-parser: A Nix parser written in Rust [maintainer=@oberblastmeister]](https://github.com/nix-community/rnix-parser)
* [](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi)
    * [NixOS on ARM/Raspberry Pi - NixOS Wiki](https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi)
* [](https://github.com/lucernae/nixos-pi/)
    * [lucernae/nixos-pi: How to install NixOS on raspberry PI](https://github.com/lucernae/nixos-pi/)
* [](https://eipi.xyz/blog/installing-nixos-on-a-raspberry-pi-3/)
    * [Installing NixOS on a Raspberry Pi | eipi.xyz](https://eipi.xyz/blog/installing-nixos-on-a-raspberry-pi-3/)
* [](https://duckduckgo.com/?q%3Dconfigure%2Bemacs%2Bon%2Bnixos%26ia%3Dweb)
    * [configure emacs on nixos at DuckDuckGo](https://duckduckgo.com/?q%3Dconfigure%2Bemacs%2Bon%2Bnixos%26ia%3Dweb)
* [](https://www.youtube.com/watch?v%3DWZBfPbpGDOU)
    * [Setting up Emacs on NixOS - YouTube](https://www.youtube.com/watch?v%3DWZBfPbpGDOU)
* [](https://www.heinrichhartmann.com/posts/2021-08-08-nix-emacs/)
    * [First Steps with Nix - Building emacs](https://www.heinrichhartmann.com/posts/2021-08-08-nix-emacs/)
* [](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064)
    * [GitHub - numtide/system-manager: Manage system config using nix on any distro - Links - NixOS Discourse](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064)
* [](https://aldoborrero.com/posts/2022/12/02/learn-how-to-use-the-nix-repl-effectively/)
    * [Learn how to use the Nix REPL effectively - Aldo Borrero](https://aldoborrero.com/posts/2022/12/02/learn-how-to-use-the-nix-repl-effectively/)
* [](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/8)
    * [GitHub - numtide/system-manager: Manage system config using nix on any distro - Links - NixOS Discourse](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/8)
* [](https://discourse.nixos.org/t/feature-discussion-declarative-flatpak-configuration/26767/3)
    * [[Feature Discussion] Declarative Flatpak Configuration? - Development - NixOS Discourse](https://discourse.nixos.org/t/feature-discussion-declarative-flatpak-configuration/26767/3)
* [](https://www.youtube.com/watch?v%3DUC2StObYQIc)
    * [[Tech Maid] Running Software On NixOS - YouTube](https://www.youtube.com/watch?v%3DUC2StObYQIc)
* [](https://www.youtube.com/watch?v%3DACybVzRvDhs)
    * [You Should Use Flakes Right Away in NixOS! - YouTube](https://www.youtube.com/watch?v%3DACybVzRvDhs)
* [](https://www.youtube.com/watch?v%3Dt8ydCYe9Y3M)
    * [Nix From Nothing #1 | Let's Learn Nix & NixOS! - YouTube](https://www.youtube.com/watch?v%3Dt8ydCYe9Y3M)
* [](https://news.ycombinator.com/item?id%3D35170465)
    * [What advantages does Flatpak offer over Nix? The](https://news.ycombinator.com/item?id%3D35170465)
* [](https://www.youtube.com/watch?v%3D9o_A2loSH-0)
    * [The Nix Hour #30 [2nix tooling differences, flakes motivation] - YouTube](https://www.youtube.com/watch?v%3D9o_A2loSH-0)
* [](https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs)
    * [packaging - How to package my software in nix or write my own package derivation for nixpkgs - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs)
* [](https://jvns.ca/blog/2023/02/28/some-notes-on-using-nix/)
    * [Some notes on using nix](https://jvns.ca/blog/2023/02/28/some-notes-on-using-nix/)
* [](https://jvns.ca/blog/2023/03/03/how-do-nix-builds-work-/)
    * [How do Nix builds work?](https://jvns.ca/blog/2023/03/03/how-do-nix-builds-work-/)
* [](https://www.youtube.com/watch?v%3DsSxGEHakfuc)
    * [Is NixOS Overrated? The Linux Cast The Linux Cast • • 4,1 K visualizaciones hace 4 días Nuevo](https://www.youtube.com/watch?v%3DsSxGEHakfuc)
* [](https://www.youtube.com/watch?v%3DACybVzRvDhs)
    * [You Should Use Flakes Right Away in NixOS! - YouTube](https://www.youtube.com/watch?v%3DACybVzRvDhs)
* [](https://discourse.nixos.org/)
    * [NixOS Discourse - NixOS community forum](https://discourse.nixos.org/)
* [](https://discourse.nixos.org/t/creating-nixos-iso-for-an-older-laptop-with-i686-32bit/26002/2)
    * [Creating NixOS iso for an older Laptop with i686 (32bit) - Help - NixOS Discourse](https://discourse.nixos.org/t/creating-nixos-iso-for-an-older-laptop-with-i686-32bit/26002/2)
* [](https://www.youtube.com/watch?v%3DTR0C76I59AI)
    * [NixOS Live Coding: Using our Flake's Nixpkgs for Nix-Shell, Building Systems on GitHub Actions - YouTube](https://www.youtube.com/watch?v%3DTR0C76I59AI)
* [](https://gist.github.com/danmack/b76ef257e0fd9dda906b4c860f94a591)
    * [install NIX package manager on Alpine Linux · GitHub](https://gist.github.com/danmack/b76ef257e0fd9dda906b4c860f94a591)
* [](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
    * [Simple Terminal (st) setup - Guides - NixOS Discourse](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
* [](https://github.com/cachix/nixpkgs-python)
    * [GitHub - cachix/nixpkgs-python: All Python versions, kept up-to-date on hourly basis using Nix.](https://github.com/cachix/nixpkgs-python)
* [](https://www.youtube.com/watch?v%3DSzyuLVzS5Fg)
    * [Writing your own NixOS modules for fun and (hopefully) profit - YouTube](https://www.youtube.com/watch?v%3DSzyuLVzS5Fg)
* [](https://www.youtube.com/watch?v%3D1ED9b7ERTzI)
    * [HOW to REALLY learn NixOS - YouTube](https://www.youtube.com/watch?v%3D1ED9b7ERTzI)
* [](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
    * [Simple Terminal (st) setup - Guides - NixOS Discourse](https://discourse.nixos.org/t/simple-terminal-st-setup/9763)
* [](https://www.cyberciti.biz/faq/debian-ubuntu-linux-binbash-vs-bindash-vs-binshshell/)
    * [Linux: What is Dash ( /bin/dash ) Shell? - nixCraft](https://www.cyberciti.biz/faq/debian-ubuntu-linux-binbash-vs-bindash-vs-binshshell/)
* [](https://viniciusmuller.github.io/blog/nix-flakes-cheat-sheet.html)
    * [Nix Flakes Cheat Sheet - Vinícius Müller's blog](https://viniciusmuller.github.io/blog/nix-flakes-cheat-sheet.html)
* [](https://yuanwang.ca/posts/getting-started-with-flakes.html)
    * [Getting started with Nix Flakes and devshell](https://yuanwang.ca/posts/getting-started-with-flakes.html)
* [](https://www.reddit.com/r/neovim/comments/196fqno/neovim_on_nixos/)
    * [(3) Neovim on NixOS? : neovim](https://www.reddit.com/r/neovim/comments/196fqno/neovim_on_nixos/)
* [](https://en.wikipedia.org/wiki/NixOS)
    * [NixOS - Wikipedia](https://en.wikipedia.org/wiki/NixOS)
* [](https://www.reddit.com/r/NixOS/comments/xrgszw/nixos_full_disk_encryption_with_tpm_and_secure/)
    * [NixOS: Full disk encryption with TPM and Secure Boot ? : r/NixOS](https://www.reddit.com/r/NixOS/comments/xrgszw/nixos_full_disk_encryption_with_tpm_and_secure/)
* [](https://github.com/elitak/nixos-infect/blob/master/nixos-infect)
    * [nixos-infect/nixos-infect at master · elitak/nixos-infect](https://github.com/elitak/nixos-infect/blob/master/nixos-infect)
* [](https://stackshare.io/stackups/nixos-vs-ubuntu)
    * [NixOS vs Ubuntu | What are the differences?](https://stackshare.io/stackups/nixos-vs-ubuntu)
* [](https://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
    * [NixOS: the good, the bad, and the ugly](https://www.willghatch.net/blog/2020/06/27/nixos-the-good-the-bad-and-the-ugly/)
* [](https://www.reddit.com/r/NixOS/comments/15ivyr3/anyone_got_poetry2nix_working_with_a_private_pypi/)
    * [Anyone got poetry2nix working with a private PyPI server? : r/NixOS](https://www.reddit.com/r/NixOS/comments/15ivyr3/anyone_got_poetry2nix_working_with_a_private_pypi/)
* [](https://github.com/seirl/seirl-nixos/blob/2d95c686c6b2d3b65d25f17731ddfab0509579df/pkgs/epiquote.nix%23L4)
    * [seirl-nixos/pkgs/epiquote.nix at 2d95c686c6b2d3b65d25f17731ddfab0509579df · seirl/seirl-nixos](https://github.com/seirl/seirl-nixos/blob/2d95c686c6b2d3b65d25f17731ddfab0509579df/pkgs/epiquote.nix%23L4)
* [](https://www.youtube.com/watch?v%3DtQ446LjIv7k)
    * [NixOS Explained - YouTube](https://www.youtube.com/watch?v%3DtQ446LjIv7k)
* [](https://github.com/LamprosPitsillos/nixos-config/blob/main/home-manager/programs/nvim/nvim.nix)
    * [nixos-config/home-manager/programs/nvim/nvim.nix at main · LamprosPitsillos/nixos-config](https://github.com/LamprosPitsillos/nixos-config/blob/main/home-manager/programs/nvim/nvim.nix)
* [](https://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dneovim)
    * [NixOS Search - Packages - neovim](https://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dneovim)
* [](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dharpoon)
    * [NixOS Search - Packages - harpoon](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dharpoon)
* [](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dkeymap-amend)
    * [NixOS Search - Packages - keymap-amend](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dkeymap-amend)
* [](https://search.nixos.org/packages?channel%3D23.11%26show%3DvimPlugins.lazy-nvim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlazy-nvim)
    * [NixOS Search - Packages - lazy-nvim](https://search.nixos.org/packages?channel%3D23.11%26show%3DvimPlugins.lazy-nvim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlazy-nvim)
* [](https://www.youtube.com/watch?v%3DAGVXJ-TIv3Y)
    * [NixOS Setup Guide - Configuration / Home-Manager / Flakes - YouTube](https://www.youtube.com/watch?v%3DAGVXJ-TIv3Y)
* [](https://www.youtube.com/watch?v%3D61wGzIv12Ds%26t%3D5s)
    * [Nixos and Hyprland - Best Match Ever - YouTube](https://www.youtube.com/watch?v%3D61wGzIv12Ds%26t%3D5s)
* [](https://discourse.nixos.org/t/nixos-flakes-with-home-manager/18476)
    * [Nixos Flakes with Home-Manager - Help - NixOS Discourse](https://discourse.nixos.org/t/nixos-flakes-with-home-manager/18476)
* [](https://www.youtube.com/results?search_query%3Dintro%2Bto%2Bhome%2Bmanager)
    * [intro to home manager - YouTube](https://www.youtube.com/results?search_query%3Dintro%2Bto%2Bhome%2Bmanager)
* [](https://nix-community.github.io/home-manager/index.html%23ch-usage)
    * [Home Manager Manual](https://nix-community.github.io/home-manager/index.html%23ch-usage)
* [](https://www.youtube.com/watch?v%3DIiyBeR-Guqw)
    * [Manage Your Dotfiles with Home Manager! - YouTube](https://www.youtube.com/watch?v%3DIiyBeR-Guqw)
* [](https://mipmip.github.io/home-manager-option-search/?query%3Dhyprland)
    * [Home Manager - Option Search](https://mipmip.github.io/home-manager-option-search/?query%3Dhyprland)
* [](https://github.com/schuelermine/xhmm)
    * [schuelermine/xhmm: Extra home manager modules](https://github.com/schuelermine/xhmm)
* [](https://nix-community.github.io/home-manager/options.xhtml)
    * [Appendix A. Home Manager Configuration Options](https://nix-community.github.io/home-manager/options.xhtml)
* [](https://nix-community.github.io/home-manager/index.xhtml%23_why_are_the_session_variables_not_set)
    * [Home Manager Manual](https://nix-community.github.io/home-manager/index.xhtml%23_why_are_the_session_variables_not_set)
* [](https://rycee.gitlab.io/home-manager/options.html)
    * [Appendix A. Configuration Options](https://rycee.gitlab.io/home-manager/options.html)
* [](https://www.youtube.com/watch?v%3DWJZgzwB3ziE)
    * [Nix for Startups (full course) - YouTube](https://www.youtube.com/watch?v%3DWJZgzwB3ziE)
* [](https://www.youtube.com/watch?v%3DWJZgzwB3ziE)
    * [Nix for Startups (full course) - YouTube](https://www.youtube.com/watch?v%3DWJZgzwB3ziE)
* [](https://github.com/colemickens/nixcfg/blob/cdd9929d5d36ce5b4d64cf80bdeb1df3f2cba332/mixins/nvidia.nix)
    * [nixcfg/mixins/nvidia.nix at cdd9929d5d36ce5b4d64cf80bdeb1df3f2cba332 · colemickens/nixcfg](https://github.com/colemickens/nixcfg/blob/cdd9929d5d36ce5b4d64cf80bdeb1df3f2cba332/mixins/nvidia.nix)
* [](https://np.reddit.com/r/unixporn/comments/obak1a/awesome_still_in_love_with_alpine/h3o2uuh/)
    * [https://np.reddit.com/r/unixporn/comments/obak1a/awesome_still_in_love_with_alpine/h3o2uuh/](https://np.reddit.com/r/unixporn/comments/obak1a/awesome_still_in_love_with_alpine/h3o2uuh/)
    * [JupyterWith Next - Tweag](https://www.tweag.io/blog/2022-11-17-jupyter-with-next/)
* [](https://github.com/tweag/jupyenv/issues/133)
    * [poetry2nix error · Issue #133 · tweag/jupyenv](https://github.com/tweag/jupyenv/issues/133)
* [](https://github.com/fastapi-mvc/fastapi-mvc/blob/master/flake.nix)
    * [fastapi-mvc/flake.nix at master · fastapi-mvc/fastapi-mvc](https://github.com/fastapi-mvc/fastapi-mvc/blob/master/flake.nix)
* [](https://gist.github.com/reckenrode/37fffca926001ff45c4866991c0acc34)
    * [flake.nix for poetry2nix](https://gist.github.com/reckenrode/37fffca926001ff45c4866991c0acc34)
* [](https://github.com/lovesegfault/beautysh/blob/9845efc3ea3e86cc0d41465d720a47f521b2799c/flake.nix%23L63)
    * [beautysh/flake.nix at 9845efc3ea3e86cc0d41465d720a47f521b2799c · lovesegfault/beautysh](https://github.com/lovesegfault/beautysh/blob/9845efc3ea3e86cc0d41465d720a47f521b2799c/flake.nix%23L63)
* [](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
    * [Developing Python with Poetry & Poetry2nix: Reproducible flexible Python environments - Tweag](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
* [](https://github.com/Nebucatnetzer/network_inventory/blob/dev/flake.nix)
    * [network_inventory/flake.nix at dev · Nebucatnetzer/network_inventory](https://github.com/Nebucatnetzer/network_inventory/blob/dev/flake.nix)
* [](https://stackoverflow.com/questions/77296068/nix-darwin-home-manager-and-flakes-how-to-set-environment-variables-for-the-m)
    * [Nix-darwin, home-manager, and flakes: how to set environment variables for the main user? - Stack Overflow](https://stackoverflow.com/questions/77296068/nix-darwin-home-manager-and-flakes-how-to-set-environment-variables-for-the-m)
* [](https://github.com/fusion44/blitz_api/blob/6edad7ac48c80cd40f595b5eab99c0968b5d8b8a/flake.nix%23L52)
    * [blitz_api/flake.nix at 6edad7ac48c80cd40f595b5eab99c0968b5d8b8a · fusion44/blitz_api](https://github.com/fusion44/blitz_api/blob/6edad7ac48c80cd40f595b5eab99c0968b5d8b8a/flake.nix%23L52)
* [](https://github.com/dpausp/pycryptpad-tools/blob/b2500775710205af92d72ded68d213f38190a8fb/nix/deps.nix%23L20)
    * [pycryptpad-tools/nix/deps.nix at b2500775710205af92d72ded68d213f38190a8fb · dpausp/pycryptpad-tools](https://github.com/dpausp/pycryptpad-tools/blob/b2500775710205af92d72ded68d213f38190a8fb/nix/deps.nix%23L20)
* [](https://github.com/vlktomas/nix-examples/blob/0ebd762662c42270309e01b8f96161a3376f7ddf/web/FastAPI/fastapi/app.nix%23L8)
    * [nix-examples/web/FastAPI/fastapi/app.nix at 0ebd762662c42270309e01b8f96161a3376f7ddf · vlktomas/nix-examples](https://github.com/vlktomas/nix-examples/blob/0ebd762662c42270309e01b8f96161a3376f7ddf/web/FastAPI/fastapi/app.nix%23L8)
* [](https://cheat.readthedocs.io/en/latest/nixos/nix_lang.html)
    * [Nix language — Dan's Cheat Sheets 1 documentation](https://cheat.readthedocs.io/en/latest/nixos/nix_lang.html)
* [](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
    * [configuration - How to pin a package version with](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
* [nix-shell](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
    * [? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/741682/how-to-pin-a-package-version-with-nix-shell)
* [](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/)
    * [Nix from First Principles: Flake Edition - Tony Finn](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/)
* [](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
    * [Flakes and Developer Environments (Nix From First Principles: Flake Edition #8) - Tony Finn](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
* [](https://emacs-ng.github.io/emacs-ng/build/nix-develop/)
    * [Nix Build / Develop - Emacs NG - A new approach to Emacs](https://emacs-ng.github.io/emacs-ng/build/nix-develop/)
* [](https://github.com/numtide/system-manager/blob/main/examples/example.nix)
    * [system-manager/examples/example.nix at main · numtide/system-manager](https://github.com/numtide/system-manager/blob/main/examples/example.nix)
* [](https://nixos.wiki/wiki/St)
    * [https://nixos.wiki/wiki/St](https://nixos.wiki/wiki/St)
* [](https://www.google.com/url?q=http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
    * [http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix](https://www.google.com/url?q=http://ghedam.at/24353/tutorial-getting-started-with-home-manager-for-nix)
* [](https://daniel-siepmann.de/nix-journey-part-1.html)
    * [https://daniel-siepmann.de/nix-journey-part-1.html](https://daniel-siepmann.de/nix-journey-part-1.html)
* [](https://neuron.zettel.page/install-systemd)
    * [home-manager systemd service - Neuron Zettelkasten](https://neuron.zettel.page/install-systemd)
* [](https://bmcgee.ie/posts/2022/11/getting-nixos-to-keep-a-secret/)
    * [https://bmcgee.ie/posts/2022/11/getting-nixos-to-keep-a-secret/](https://bmcgee.ie/posts/2022/11/getting-nixos-to-keep-a-secret/)
* [](https://mjones.network/articles/declarative-desktop-env-config-with-nix.html)
    * [https://mjones.network/articles/declarative-desktop-env-config-with-nix.html](https://mjones.network/articles/declarative-desktop-env-config-with-nix.html)
* [](https://www.google.com/url?q=http://reign-studios.com/wallpapers/nixos/NixOS_1440p.png)
    * [http://reign-studios.com/wallpapers/nixos/NixOS_1440p.png](https://www.google.com/url?q=http://reign-studios.com/wallpapers/nixos/NixOS_1440p.png)
* [](https://www.reddit.com/r/NixOS/comments/rg6tnl/tokyonight_colorscheme_nixos_wallpaper/)
    * [https://www.reddit.com/r/NixOS/comments/rg6tnl/tokyonight_colorscheme_nixos_wallpaper/](https://www.reddit.com/r/NixOS/comments/rg6tnl/tokyonight_colorscheme_nixos_wallpaper/)
* [](https://www.reddit.com/r/NixOS/comments/14dm7e6/everforest_themed_nixos_wallpaper_i_made_which/)
    * [https://www.reddit.com/r/NixOS/comments/14dm7e6/everforest_themed_nixos_wallpaper_i_made_which/](https://www.reddit.com/r/NixOS/comments/14dm7e6/everforest_themed_nixos_wallpaper_i_made_which/)
* [](https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph)
    * [https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph](https://drakerossman.com/blog/wayland-on-nixos-confusion-conquest-triumph)
    * [https://fictionbecomesfact.com/nixos-installation-luks](https://fictionbecomesfact.com/nixos-installation-luks)
    * [https://www.reddit.com/r/NixOS/comments/z16mt8/cant_seem_to_set_default_shell_using_homemanager/?rdt=48798](https://www.reddit.com/r/NixOS/comments/z16mt8/cant_seem_to_set_default_shell_using_homemanager/?rdt%3D48798)
    * [https://youtu.be/G5f6GC7SnhU?si=hdXcvu9BgqSDQx1H](https://youtu.be/G5f6GC7SnhU?si%3DhdXcvu9BgqSDQx1H)
* [](https://www.youtube.com/watch?v%3D_Z32SYFbxpw)
    * [CT NixOS Install Video](https://www.youtube.com/watch?v%3D_Z32SYFbxpw)
* [](https://discourse.nixos.org/t/using-imports-attribute-with-import-function/36357/2)
    * [https://discourse.nixos.org/t/using-imports-attribute-with-import-function/36357/2](https://discourse.nixos.org/t/using-imports-attribute-with-import-function/36357/2)
* [](https://book.divnix.com/ch02-00-introduction.html)
    * [https://book.divnix.com/ch02-00-introduction.html](https://book.divnix.com/ch02-00-introduction.html)
    * [https://cola-gang.industries/nixos-for-the-confused-part-v](https://cola-gang.industries/nixos-for-the-confused-part-v)
* [](https://cola-gang.industries/)
    * [https://cola-gang.industries/](https://cola-gang.industries/)
    * [https://snowflakeos.org/](https://snowflakeos.org/)
* [](https://snowflakeos.org/)
    * [https://snowflakeos.org/](https://snowflakeos.org/)
* [](https://github.com/exploitoverload/PwNixOS)
    * [https://github.com/exploitoverload/PwNixOS](https://github.com/exploitoverload/PwNixOS)
* [](https://github.com/notusknot/dotfiles-nix)
    * [https://github.com/notusknot/dotfiles-nix](https://github.com/notusknot/dotfiles-nix)
* [](https://github.com/rubyowo/dotfiles)
    * [https://github.com/rubyowo/dotfiles](https://github.com/rubyowo/dotfiles)
* [](https://ghuntley.com/)
    * [Geoffrey Huntley](https://ghuntley.com/)
* [](https://dev.jmgilman.com/environment/tools/nix/home-manager/)
    * [Home-Manager - Dev Handbook](https://dev.jmgilman.com/environment/tools/nix/home-manager/)
* [](https://repology.org/repositories/packages)
    * [Raw repository package counts - Repology](https://repology.org/repositories/packages)
* [](https://github.com/search?q%3DmkPoetryApplication%26type%3Dcode)
    * [Code search results](https://github.com/search?q%3DmkPoetryApplication%26type%3Dcode)
* [](https://stackoverflow.com/questions/77558055/using-poetry-to-install-from-a-private-repository-with-a-token)
    * [python - Using poetry to install from a private repository with a token - Stack Overflow](https://stackoverflow.com/questions/77558055/using-poetry-to-install-from-a-private-repository-with-a-token)
* [](https://github.com/cachix/devenv)
    * [cachix/devenv: Fast, Declarative, Reproducible, and Composable Developer Environments](https://github.com/cachix/devenv)
* [](https://stackoverflow.com/questions/50468951/credentials-in-pip-conf-for-private-pypi)
    * [python - Credentials in pip.conf for private PyPI - Stack Overflow](https://stackoverflow.com/questions/50468951/credentials-in-pip-conf-for-private-pypi)
* [](https://python-poetry.org/docs/configuration/)
    * [Configuration | Documentation | Poetry - Python dependency management and packaging made easy](https://python-poetry.org/docs/configuration/)
* [](https://github.com/python-poetry/poetry/issues/8443)
    * [.netrc](https://github.com/python-poetry/poetry/issues/8443)
* [credentials take precedence over](https://github.com/python-poetry/poetry/issues/8443)
* [poetry config http-basic](https://github.com/python-poetry/poetry/issues/8443)
* [· Issue #8443 · python-poetry/poetry](https://github.com/python-poetry/poetry/issues/8443)
* [](https://snowfall.org/guides/lib/quickstart/)
    * [Quickstart](https://snowfall.org/guides/lib/quickstart/)
* [](https://github.com/nycodeghg)
    * [NyCodeGHG (Marie)](https://github.com/nycodeghg)
* [](https://github.com/NyCodeGHG/dotfiles)
    * [https://github.com/NyCodeGHG/dotfiles](https://github.com/NyCodeGHG/dotfiles)
* [](https://github.com/NyCodeGHG/awesome-prometheus-alerts.nix)
    * [https://github.com/NyCodeGHG/awesome-prometheus-alerts.nix](https://github.com/NyCodeGHG/awesome-prometheus-alerts.nix)
* [](https://www.phind.com/search?cache%3Dsosi2xj2u74wie4ci17udny0)
    * [What if the source requires authentification?](https://www.phind.com/search?cache%3Dsosi2xj2u74wie4ci17udny0)
* [](https://medium.com/@seifeddinerajhi/the-sops-way-the-only-way-to-keep-your-secrets-safe-in-git-4a17e83ef6c6)
    * [The SOPS Way: The Only Way to Keep Your Secrets Safe in Git | by Seifeddine Rajhi | Medium](https://medium.com/@seifeddinerajhi/the-sops-way-the-only-way-to-keep-your-secrets-safe-in-git-4a17e83ef6c6)
* [](https://ubuntu.com/landscape/docs/managing-computers%23heading--access-information-about-computers)
    * [How to manage computers in Landscape | Ubuntu](https://ubuntu.com/landscape/docs/managing-computers%23heading--access-information-about-computers)
* [](https://nixified.ai/)
    * [https://nixified.ai/](https://nixified.ai/)
* [](https://www.reddit.com/user/matthew-croughan/)
    * [https://www.reddit.com/user/matthew-croughan/](https://www.reddit.com/user/matthew-croughan/)
* [](https://gitlab.com/MatthewCroughan/darkflake/-/tree/master)
    * [https://gitlab.com/MatthewCroughan/darkflake/-/tree/master](https://gitlab.com/MatthewCroughan/darkflake/-/tree/master)
* [](https://github.com/NixOS/nixos-hardware)
    * [https://github.com/NixOS/nixos-hardware](https://github.com/NixOS/nixos-hardware)
* [](https://ahoneybun.net/blog/)
    * [https://ahoneybun.net/blog/](https://ahoneybun.net/blog/)
    * [https://news.ycombinator.com/item?id=37105524](https://news.ycombinator.com/item?id%3D37105524)
* [https://www.nixhub.io/](https://www.nixhub.io/)
* [https://nix4noobs.com/](https://nix4noobs.com/)
* [https://github.com/haslersn/any-nix-shell](https://github.com/haslersn/any-nix-shell)


* sops [](https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/)
    * [https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/](https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/)
* [https://determinate.systems/posts/nuenv](https://determinate.systems/posts/nuenv)
* [https://github.com/mikeroyal/NixOS-Guide](https://github.com/mikeroyal/NixOS-Guide)


* nix and shellls -a /etc/skel [](https://nixos.wiki/wiki/Command_Shell)
    * [https://nixos.wiki/wiki/Command_Shell](https://nixos.wiki/wiki/Command_Shell)
* [](https://nix4noobs.com/flakes/devshells/)
    * [https://nix4noobs.com/flakes/devshells/](https://nix4noobs.com/flakes/devshells/)
* [](https://wiki.nikiv.dev/unix/shell/fish)
    * [https://wiki.nikiv.dev/unix/shell/fish](https://wiki.nikiv.dev/unix/shell/fish)
* [](https://stackoverflow.com/questions/61262216/configuring-fish-shell-prompt-inside-nix-shell)
    * [https://stackoverflow.com/questions/61262216/configuring-fish-shell-prompt-inside-nix-shell](https://stackoverflow.com/questions/61262216/configuring-fish-shell-prompt-inside-nix-shell)
* [](https://mjhart.netlify.app/posts/2020-03-14-nix-and-fish.html)
    * [https://mjhart.netlify.app/posts/2020-03-14-nix-and-fish.html](https://mjhart.netlify.app/posts/2020-03-14-nix-and-fish.html)
* [](https://www.nixhub.io/packages/nushell)
    * [https://www.nixhub.io/packages/nushell](https://www.nixhub.io/packages/nushell)
* [](https://www.reddit.com/r/NixOS/comments/fjbnhp/using_fish_with_nix/)
    * [https://www.reddit.com/r/NixOS/comments/fjbnhp/using_fish_with_nix/](https://www.reddit.com/r/NixOS/comments/fjbnhp/using_fish_with_nix/)
* [](https://nixos-and-flakes.thiscute.world/development/intro)
    * [https://nixos-and-flakes.thiscute.world/development/intro](https://nixos-and-flakes.thiscute.world/development/intro)
* [](https://www.nushell.sh/book/)
    * [https://www.nushell.sh/book/](https://www.nushell.sh/book/)
* [](https://elv.sh/learn/)
    * [https://elv.sh/learn/](https://elv.sh/learn/)
* [](https://nix.dev/tutorials/first-steps/ad-hoc-shell-environments.html)
    * [https://nix.dev/tutorials/first-steps/ad-hoc-shell-environments.html](https://nix.dev/tutorials/first-steps/ad-hoc-shell-environments.html)
* [](https://nix.dev/tutorials/first-steps/declarative-shell.html)
    * [https://nix.dev/tutorials/first-steps/declarative-shell.html](https://nix.dev/tutorials/first-steps/declarative-shell.html)
* [](https://github.com/search?q%3Drepo%253Anumtide%252Fsystem-manager)
    * [https://github.com/search?q=repo%3Anumtide%2Fsystem-manager](https://github.com/search?q%3Drepo%253Anumtide%252Fsystem-manager)
    * [https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/13](https://discourse.nixos.org/t/github-numtide-system-manager-manage-system-config-using-nix-on-any-distro/27064/13)
* [](https://superuser.com/questions/651308/whats-the-difference-between-chsh-s-and-export-shell)
    * [https://superuser.com/questions/651308/whats-the-difference-between-chsh-s-and-export-shell](https://superuser.com/questions/651308/whats-the-difference-between-chsh-s-and-export-shell)
* [https://discourse.nixos.org/t/home-manager-doesnt-seem-to-recognize-sessionvariables/8488/9](https://discourse.nixos.org/t/home-manager-doesnt-seem-to-recognize-sessionvariables/8488/9)
* [https://jameswillia.ms/posts/flake-line-by-line.html](https://jameswillia.ms/posts/flake-line-by-line.html)

make Github issue for bcrypt
* [https://github.com/corps/nix-kernel](https://github.com/corps/nix-kernel) - need to create
* [https://blog.eigenvalue.net/2023-nix-fetch-with-authentication/](https://blog.eigenvalue.net/2023-nix-fetch-with-authentication/)
* [https://blog.eigenvalue.net/2023-nix-s3-store-authentication/](https://blog.eigenvalue.net/2023-nix-s3-store-authentication/)
* [https://discourse.nixos.org/t/nix-authenticated-fetches-from-gitlab-reading-about-related-work/35708](https://discourse.nixos.org/t/nix-authenticated-fetches-from-gitlab-reading-about-related-work/35708)
* [https://duckduckgo.com/?q=pre-built+pytorch+for+nixos&ia=web](https://duckduckgo.com/?q%3Dpre-built%2Bpytorch%2Bfor%2Bnixos%26ia%3Dweb)

→ make script to pull relevant system-specific infor from output of nixos-generate-config command

sudo nixos-rebuild switch —extra-experimental-features “nix-command flakes” —flake .#hank

figure out audio config

remove all traces of snaps; raise issue on nix-snap

→ solve the mystery of $PATH

package landscape-client with nix → how to look inside .deb and .snap packages?

try landscape-client in distrobox?

→ build iridium browser for Nix

→ build waveterm for Nix


* Flake CLI QuestionHow can I add a CLI functionality to a Nix flake?ChatGPTChatGPT To add command-line interface (CLI) functionality to a Nix flake, you can use the programs attribute in the flake's outputs section. Here's a step-by-step guide:

Create a directory structure: In your flake's directory, create a directory for your CLI program. For example:plaintextCopy code

my-flake/

├── flake.nix

└── src/

└── my-cli/

└── Main.hs

1. 

Write your CLI program: Write your CLI program in the Main.hs file. For example:haskellCopy code


* - src/my-cli/Main.hs

module Main where

import System.Environment

main :: IO ()

main = do

args <- getArgs

putStrLn $ "Hello, CLI! Args: " ++ show args

1. 

Update your flake.nix file: Update your flake.nix file to include the programs attribute. Here's an example:nixCopy code

{

description = "My Flake with CLI";

inputs = {

nixpkgs.url = "github:nixos/nixpkgs/nixos-21.11";

};

outputs = { self, nixpkgs }: {

defaultPackage.x86_64-linux = self.packages.haskellPackages.callPackage ./src/my-cli {};

programs.hello-cli = {

enable = true;

package = self.defaultPackage.x86_64-linux;

};

};

}

1. In this example, hello-cli is the name of your CLI program. The package attribute points to the Haskell package generated from your source code.

Build and run your CLI program: Run the following commands to build and run your CLI program:bashCopy code

nix build

./result/bin/hello-cli

1. Replace hello-cli with the name you specified in your programs attribute.
* Now, your Nix flake includes a CLI program that can be easily built and run. You can customize the programs attribute further based on your specific requirements. [](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c)
    * [https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA=s96-c](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c) You What are the possible values for the atributes of the output of a flake?ChatGPTChatGPT In a Nix flake, the outputs attribute is used to specify the outputs that will be produced by the flake. Each output can have its own set of attributes. Here are some common attributes that can be used in the outputs section of a flake:

defaultPackage: This attribute specifies the default output for the flake. It usually points to the main result produced by the flake. For example:nixCopy code

outputs = { self, nixpkgs }: {

defaultPackage.x86_64-linux = self.packages.x86_64-linux.myPackage;

};

1. 

packages: This attribute is used to define one or more packages produced by the flake. Each package can have its own set of attributes like packagePrefix, meta, etc.nixCopy code

outputs = { self, nixpkgs }: {

packages.x86_64-linux.myPackage = self.packages.haskellPackages.myHaskellPackage;

};

1. 

programs: This attribute is used to define executable programs produced by the flake. It allows you to specify which packages to use and whether the program should be enabled or not.nixCopy code

outputs = { self, nixpkgs }: {

programs.myProgram = {

enable = true;

package = self.packages.x86_64-linux.myPackage;

};

};

1. 

documentation: This attribute is used to specify documentation generated by the flake. It can include attributes like html, man, etc.nixCopy code

outputs = { self, nixpkgs }: {

documentation.html = self.defaultPackage.x86_64-linux + "/share/doc/myPackage/html";

};

1. 

dev: This attribute is used to specify development files produced by the flake.nixCopy code

outputs = { self, nixpkgs }: {

dev = self.defaultPackage.x86_64-linux + "/lib/myPackage-dev";

};

1. 

These are just examples, and the actual attributes you use will depend on the nature of your flake and the kind of outputs you want to produce. The key is to define the outputs you need and customize their attributes accordingly. Always refer to the Nixpkgs manual or Nix documentation for the most up-to-date and detailed information on available attributes. [](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c)
    * [https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA=s96-c](https://lh3.googleusercontent.com/a/AEdFTp7iti-r88FvOL2bvykuZfqt0KtgKeReZeLGIIrZyA%3Ds96-c) You How could I print out a tree representation of the imports of a given output?ChatGPTChatGPT To print out a tree representation of the imports of a given output in a Nix flake, you can leverage the nixpkgs attribute set and the buildInputs attribute of the derivation for the specified output. You can create a recursive function to traverse the import tree and print it in a tree-like structure.Here's an example script in Nix that demonstrates how you can achieve this:nixCopy code


# tree.nix

{ lib, nixpkgs ? import <nixpkgs> {} }:

let


# Function to print a tree structure

printTree = prefix: node: tree:

if lib.isAttrs node

then

let

attrs = lib.attrValues node;

attrNames = lib.attrNames node;

lines = lib.mapAttrsToList (name: value: "${name}: ${value}") node;

subtree = lib.mapAttrsToList (name: value: printTree (prefix + "  ") value tree) node;

in

if lib.length attrs > 0

then "${prefix}${lib.concatStringsSep "\\n" (lib.mapAttrsToList (name: value: "${name}: ${value}") node)}"

else

"${prefix}${lib.concatStringsSep "\\n" (lib.mapAttrsToList (name: value: "${value}") node)}"

+ (lib.concatStringsSep "\\n" subtree)

else "${prefix}${node}";


# Function to build the import tree

buildImportTree = derivation:

let

buildTree = drv:

let

inputs = lib.foldl' (acc: input: acc + [input])
* [] drv.buildInputs;

in

{ ${lib.foldl' (acc: input: acc + [input]) "" inputs} } // (lib.foldl' (acc: input: acc + buildTree input) {} inputs);

importTree = buildTree derivation;

in

printTree "" importTree importTree;

in

{ buildImportTree, printTree }

This script defines two functions: printTree for printing the tree structure and buildImportTree for building the import tree. The example assumes you have the nixpkgs attribute set available.To use this script, you can import it into another Nix expression and call the buildImportTree function, passing the derivation for the desired output. For example:nixCopy code


# example.nix

{ lib, nixpkgs ? import <nixpkgs> {}, tree ? import ./tree.nix { nixpkgs = nixpkgs; } }:

let

myOutput = nixpkgs.myPackage.outputs.defaultPackage.x86_64-linux;

importTree = tree.buildImportTree myOutput;

in

tree.printTree "" importTree importTree


* Replace myPackage with the actual package name or output you want to inspect. Running the example.nix script should print the import tree structure for the specified output.

Ly:
* [https://github.com/the-argus/nixsys/tree/b234fe6f3bd71ce07725cf6b0ca0d46335858619](https://github.com/the-argus/nixsys/tree/b234fe6f3bd71ce07725cf6b0ca0d46335858619)
* [https://github.com/the-argus/nixsys/blob/b234fe6f3bd71ce07725cf6b0ca0d46335858619/modules/ly.nix#L11](https://github.com/the-argus/nixsys/blob/b234fe6f3bd71ce07725cf6b0ca0d46335858619/modules/ly.nix%23L11)
* [https://github.com/meatcar/dots/blob/26581bf4440fbc30db95cef57fc70d737cfc7cf4/modules/ly.nix#L8](https://github.com/meatcar/dots/blob/26581bf4440fbc30db95cef57fc70d737cfc7cf4/modules/ly.nix%23L8)
* [https://github.com/nix-community/nur-combined/blob/85ece5ad820302eaf1a541142942559deaa33ad7/repos/fgaz/modules/ly/default.nix#L120](https://github.com/nix-community/nur-combined/blob/85ece5ad820302eaf1a541142942559deaa33ad7/repos/fgaz/modules/ly/default.nix%23L120)
* [https://github.com/dmayle/dotfiles/blob/b67d63022cf3002bbc4c7eaa651c8625b1006dfc/nixos-backup/configuration_old.nix#L1176](https://github.com/dmayle/dotfiles/blob/b67d63022cf3002bbc4c7eaa651c8625b1006dfc/nixos-backup/configuration_old.nix%23L1176)

create script: nixos-report: like ls for all relevant directories, following all links to real file; also other important information

greetd config examples
* [https://github.com/iharh/nixcfg/tree/6fab8a06850f47df37bd3cb0f027ecf11782cff4/hw](https://github.com/iharh/nixcfg/tree/6fab8a06850f47df37bd3cb0f027ecf11782cff4/hw)
* [https://github.com/lokeshmohanty/nix-config/blob/main/nixos/desktop-environment.nix](https://github.com/lokeshmohanty/nix-config/blob/main/nixos/desktop-environment.nix)

use! [](https://github.com/zhaofengli/colmena)
    * [https://github.com/zhaofengli/colmena](https://github.com/zhaofengli/colmena)
    * [https://github.com/divnix/digga?)](https://github.com/divnix/digga?))

If you suspect a race condition, where kernel modules may not be loaded fast enough to start the display manager, you can take a few steps to investigate and potentially address the issue:

1. Delay Display Manager Start:
* One approach is to introduce a delay in the startup process of the display manager. This can be achieved by modifying the service or init script that launches the display manager. However, this is a workaround and not a definitive solution.

1. Check Module Loading:
* Examine the logs to see if there are any messages related to the loading of kernel modules. You can use the dmesg command or check specific log files for module loading information. Look for any errors or delays in loading the necessary modules.

1. Adjust Module Loading Configuration:
* Depending on your distribution, you may have a configuration file specifying which modules to load during the boot process. This file is often located in /etc/modules or /etc/modules-load.d/. Review the contents of these files to ensure that the required modules are listed.

1. Check Dependencies:
* Ensure that the display manager service has proper dependencies set, especially dependencies related to the availability of necessary kernel modules. Adjust the dependencies if needed.

1. Systemd Service Unit:
* If your system uses systemd, check the service unit for the display manager (lightdm.service, gdm.service, etc.). You can find these unit files in /etc/systemd/system/ or /lib/systemd/system/. Look for dependencies and ordering directives and adjust them if necessary.

1. Investigate Startup Scripts:
* Examine any scripts or systemd units responsible for the initialization of the system, display manager, or relevant components. Check if they explicitly wait for certain conditions before proceeding.

1. Kernel Module Auto-Loading:
* Ensure that the necessary kernel modules are set to load automatically during boot. This is often configured in files such as /etc/modules or /etc/modules-load.d/*.conf.

1. Check for Module Load Errors:
* Look for any errors related to module loading in the logs. Use commands like dmesg | grep -i 'error\\|module' to identify potential issues.

By investigating these areas, you may be able to identify the cause of the race condition and take appropriate measures to address it. If the issue persists, consider seeking assistance from your distribution's community forums or support channels, as they may have insights specific to the distribution and display manager you are using.

hyprland sddm config examples
* [https://github.com/eekrain/dotfiles/blob/7c948066821437f79521ba78e8e9042dfb090b13/nixos/hyprland/default.nix#L24](https://github.com/eekrain/dotfiles/blob/7c948066821437f79521ba78e8e9042dfb090b13/nixos/hyprland/default.nix%23L24) - may be the solution
* [https://github.com/paulcomte/dotfiles/blob/14419839ccea1a7bd495d9cd9ee4cee388df8403/nixos/services.nix#L44](https://github.com/paulcomte/dotfiles/blob/14419839ccea1a7bd495d9cd9ee4cee388df8403/nixos/services.nix%23L44) - look into logind extraConfig
* [https://github.com/elkebirmed/dotfiles_nixos/blob/main/hosts/optional/sddm.nix](https://github.com/elkebirmed/dotfiles_nixos/blob/main/hosts/optional/sddm.nix)
    * [https://github.com/elkebirmed/dotfiles_nixos/blob/main/hosts/optional/hyprland.nix](https://github.com/elkebirmed/dotfiles_nixos/blob/main/hosts/optional/hyprland.nix) good examples
* [https://github.com/Azeved00/.files/blob/5c00de90d9a770dd44a331a89bef03142ae22c03/nixos/modules/wayland.nix#L14](https://github.com/Azeved00/.files/blob/5c00de90d9a770dd44a331a89bef03142ae22c03/nixos/modules/wayland.nix%23L14) - simple config
* [https://github.com/mslxl/nix-config/tree/main/modules/nixos/desktop/desktop-env](https://github.com/mslxl/nix-config/tree/main/modules/nixos/desktop/desktop-env)
* [https://github.com/A7R7/nixos-config/blob/baae8a1be5566a8863aed2f9de897cfba0b6a538/host/configuration.nix](https://github.com/A7R7/nixos-config/blob/baae8a1be5566a8863aed2f9de897cfba0b6a538/host/configuration.nix)
* [https://github.com/GGORG0/nix-config/blob/9dd592385f632851a0ce825855638ac4105ffcb7/modules/nixos/sddm.nix](https://github.com/GGORG0/nix-config/blob/9dd592385f632851a0ce825855638ac4105ffcb7/modules/nixos/sddm.nix)
* [https://github.com/LichHunter/nixos-dotfiles/blob/f27d2e58cbacb59aad2ca4dbfa0e7be7b7bf1bc9/modules/rice/Frost-Phoenix/hyprland/hyprland.nix](https://github.com/LichHunter/nixos-dotfiles/blob/f27d2e58cbacb59aad2ca4dbfa0e7be7b7bf1bc9/modules/rice/Frost-Phoenix/hyprland/hyprland.nix)
* [https://github.com/richtigerkiko/nixos-hyprland/blob/main/nixos/configuration.nix](https://github.com/richtigerkiko/nixos-hyprland/blob/main/nixos/configuration.nix)
* [https://github.com/ryan4yin/nix-config/blob/77bd038f3295fee21f8f3842639e5b93fa9272ab/home/linux/desktop/hyprland/values/hyprland.nix#L9](https://github.com/ryan4yin/nix-config/blob/77bd038f3295fee21f8f3842639e5b93fa9272ab/home/linux/desktop/hyprland/values/hyprland.nix%23L9)
    * [https://github.com/ryan4yin/nix-config/blob/77bd038f3295fee21f8f3842639e5b93fa9272ab/modules/nixos/desktop.nix#L74](https://github.com/ryan4yin/nix-config/blob/77bd038f3295fee21f8f3842639e5b93fa9272ab/modules/nixos/desktop.nix%23L74)
* [https://github.com/simonrw/nix-config/blob/main/system/nixos/astoria/wm/hyprland.nix](https://github.com/simonrw/nix-config/blob/main/system/nixos/astoria/wm/hyprland.nix)
    * [https://github.com/simonrw/nix-config/blob/main/system/nixos/astoria/wm/sway.nix](https://github.com/simonrw/nix-config/blob/main/system/nixos/astoria/wm/sway.nix)
* [https://github.com/baracunatana/santuario/blob/main/flake.nix](https://github.com/baracunatana/santuario/blob/main/flake.nix)
* [https://github.com/darichey/my-nix-config/blob/4015b7f0d3724a2848fc2c6423a5df627be92d8c/system/common.nix#L52](https://github.com/darichey/my-nix-config/blob/4015b7f0d3724a2848fc2c6423a5df627be92d8c/system/common.nix%23L52)
* [https://github.com/Jan130/nixos-config/blob/main/system/wm/hyprland.nix](https://github.com/Jan130/nixos-config/blob/main/system/wm/hyprland.nix)
* [https://github.com/Builditluc/dotnix/blob/52ea85bbbbeddf3de5642cb9a8ee40c09762eaa7/system/wm/hyprland.nix#L4](https://github.com/Builditluc/dotnix/blob/52ea85bbbbeddf3de5642cb9a8ee40c09762eaa7/system/wm/hyprland.nix%23L4) nice and simple
* [https://github.com/deadendpl/dotfiles/blob/f0986be75c675397543afbc46e841021a1515d40/nixos/README.org#graphical-environment](https://github.com/deadendpl/dotfiles/blob/f0986be75c675397543afbc46e841021a1515d40/nixos/README.org%23graphical-environment)
* [https://github.com/Vagahbond/nix-config/blob/9ab6b278c1d0ebc7726421fcfa41a3f5e8cf7417/modules/desktop/hyprland/default.nix#L13](https://github.com/Vagahbond/nix-config/blob/9ab6b278c1d0ebc7726421fcfa41a3f5e8cf7417/modules/desktop/hyprland/default.nix%23L13)
* [https://github.com/michaelkeates/nixos-config/blob/1bb37ce52ab4e71743e7a07dfaed210941634ef7/templates/default/nixos/default.nix#L124](https://github.com/michaelkeates/nixos-config/blob/1bb37ce52ab4e71743e7a07dfaed210941634ef7/templates/default/nixos/default.nix%23L124)
* [https://github.com/mjschwenne/dotfiles/blob/main/system/graphical.nix](https://github.com/mjschwenne/dotfiles/blob/main/system/graphical.nix) - good example of custom config
* [https://github.com/nyawox/nixboxes/blob/2af52077059e9d38a327c42f3843d373a272668c/modules/nixos/desktop/sddm.nix#L23](https://github.com/nyawox/nixboxes/blob/2af52077059e9d38a327c42f3843d373a272668c/modules/nixos/desktop/sddm.nix%23L23)
* [https://github.com/iynaix/dotfiles/blob/5c2eca4e184df332b06373007248457ae4cb9d69/nixos/hyprland.nix#L7](https://github.com/iynaix/dotfiles/blob/5c2eca4e184df332b06373007248457ae4cb9d69/nixos/hyprland.nix%23L7)
* [https://github.com/vulpi/viperML-dotfiles/blob/0e0dacf03489596359d97fd8292da4921f902f29/modules/nixos/desktop-hyprland.nix#L9](https://github.com/vulpi/viperML-dotfiles/blob/0e0dacf03489596359d97fd8292da4921f902f29/modules/nixos/desktop-hyprland.nix%23L9)
* [https://github.com/owatta/dotfiles/blob/94bff267af7cd8b6e3342d7b586e6db622cdeaa5/nixos/licorice.nix#L18](https://github.com/owatta/dotfiles/blob/94bff267af7cd8b6e3342d7b586e6db622cdeaa5/nixos/licorice.nix%23L18)
* [https://github.com/mkeco/dotfile/blob/2783c3325a9459bedbdcaa36bbf60cee046e25c7/desk-nixos/configuration.nix#L23](https://github.com/mkeco/dotfile/blob/2783c3325a9459bedbdcaa36bbf60cee046e25c7/desk-nixos/configuration.nix%23L23)
* [https://github.com/Liberontissauri/NixOS-Config-/blob/e1c91582fbffc82bba0088ca06b9d2202635d8c1/modules/nixos/desktop.nix#L9](https://github.com/Liberontissauri/NixOS-Config-/blob/e1c91582fbffc82bba0088ca06b9d2202635d8c1/modules/nixos/desktop.nix%23L9)
* [https://github.com/benvonh/.snowflake/blob/9d617835ad63699259513a6ff784c038174966a3/systems/share/hyprland/default.nix#L4](https://github.com/benvonh/.snowflake/blob/9d617835ad63699259513a6ff784c038174966a3/systems/share/hyprland/default.nix%23L4)
* [https://github.com/gabyx/dotfiles/blob/6421270138b40c26a93011e7e20082ab965c253c/modules/nixos/windowing.nix#L13](https://github.com/gabyx/dotfiles/blob/6421270138b40c26a93011e7e20082ab965c253c/modules/nixos/windowing.nix%23L13)
* [](https://github.com/JosiahABrown/nixdots/blob/main/system/base.nix)
    * [https://github.com/JosiahABrown/nixdots/blob/main/system/base.nix](https://github.com/JosiahABrown/nixdots/blob/main/system/base.nix)
* [https://github.com/adamgoose/nixpkgs/blob/440e787cb769c44ed0ff0390c5010f9e29bc7f4f/nix/nixos/nixosModules/hyprland.nix#L17](https://github.com/adamgoose/nixpkgs/blob/440e787cb769c44ed0ff0390c5010f9e29bc7f4f/nix/nixos/nixosModules/hyprland.nix%23L17)

review gdm settings via dconf: [](https://github.com/search?q%3Dprograms.dconf.profiles%26type%3Dcode)
    * [https://github.com/search?q=programs.dconf.profiles&type=code](https://github.com/search?q%3Dprograms.dconf.profiles%26type%3Dcode)
* [https://unix.stackexchange.com/questions/517759/how-to-fix-service-start-request-repeated-too-quickly-on-custom-service](https://unix.stackexchange.com/questions/517759/how-to-fix-service-start-request-repeated-too-quickly-on-custom-service)
* [https://github.com/search?q=lightdm.enable+%3D+true&type=code](https://github.com/search?q%3Dlightdm.enable%2B%253D%2Btrue%26type%3Dcode)

Use greetd:
* [https://github.com/search?q=greetd+language%3Anix&type=code](https://github.com/search?q%3Dgreetd%2Blanguage%253Anix%26type%3Dcode)
