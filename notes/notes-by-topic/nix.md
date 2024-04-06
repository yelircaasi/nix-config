# Nix

https://www.golem.de/news/redis-cloud-ki-javascript-nginx-ersatz-in-rust-und-container-ersatz-mit-nix-2403-183524.html 

pkgs.nix-tree 

https://www.reddit.com/r/NixOS/s/seSy4UDEuR 

https://t.me/nixos_en/114808?single

https://tinkering.xyz/installing-nixos/ 

go through all xdg options on mynixos

Create nand2tetris for NixOS → add to nixpkgs

amazing Nix videos (config and secrets) https://www.youtube.com/@Emergent_Mind 

https://search.nixos.org/packages?channel=23.11&show=nix-tree&from=0&size=50&sort=relevance&type=packages&query=nix-tree
```nix
{ lib, pkgs, neovimUtils, wrapNeovimUnstable, neovim-nightly-src, ... }:

let
  binpath = lib.makeBinPath (with pkgs; [
    lua-language-server
    stylua

    nodePackages.prettier
    nodePackages.pyright

    # I can't install this with the rest of the python packages b/c this needs to be in path
    python3Packages.jupytext
    lua
  ]);
  neovimConfig = pkgs.neovimUtils.makeNeovimConfig {
    extraLuaPackages = p: [ p.magick ];
    extraPython3Packages = p: with p; [
      pynvim
      jupyter-client
      cairosvg
      ipython
      nbformat
    ];
    extraPackages = p: with p; [
      imageMagick
    ];
    withNodeJs = true;
    withRuby = true;
    withPython3 = true;
    # https://github.com/NixOS/nixpkgs/issues/211998
    customRC = "luafile ~/.config/nvim/init.lua";
  };
in
{
  nixpkgs.overlays = [
    (_: super: {
      neovim-custom = pkgs.wrapNeovimUnstable
        # (neovim-nightly.overrideAttrs (oldAttrs: {
        (super.neovim-unwrapped.overrideAttrs (oldAttrs: {
          buildInputs = oldAttrs.buildInputs ++ [ super.tree-sitter ];
          src = neovim-nightly-src;
        }))
        (neovimConfig // {
          wrapperArgs = lib.escapeShellArgs neovimConfig.wrapperArgs
            + " --prefix PATH : ${binpath}";
        });
    })
  ];

  environment.systemPackages = with pkgs; [
    neovim-custom
  ];
}
```
nix [PureNix: Write PureScript and transpile it to Nix : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/sw3zpp/purenix_write_purescript_and_transpile_it_to_nix/)
nix [Add missing 'nix profile' subcommands by edolstra · Pull Request #5249 · NixOS/nix](ghttps://github.com/NixOS/nix/pull/5249)
nix [Building a Rust service with Nix](ghttps://fasterthanli.me/series/building-a-rust-service-with-nix)
nix [Can someone show me how to manage $HOME without home-manager? : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/j4uc0k/can_someone_show_me_how_to_manage_home_without/)
nix [Can't get rid of home-manager package - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/cant-get-rid-of-home-manager-package/8449/6)
nix [Changes after updating home-manager - Today I Learned](ghttps://fnordig.de/til/nix/package-changes.html)
nix [Deleting Old System Profiles - What am I Missing? : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/unwip2/deleting_old_system_profiles_what_am_i_missing/)
nix [Derivations (Nix From First Principles: Flake Edition #5) - Tony Finn](ghttps://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-5-derivation-intro/)
nix [Download Nix / NixOS | Nix & NixOS](ghttps://nixos.org/download)
nix [Home Manager - NixOS Wiki](ghttps://nixos.wiki/wiki/Home_Manager)
nix [How do you delete old generations and gc them automatically? : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/ejsdhb/how_do_you_delete_old_generations_and_gc_them/)
nix [How to (partially) compensate for the lack of static typing / type annotations? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations/40139)
nix [How to manage user configuration with flakes without home manager on nixos-21.05? - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/how-to-manage-user-configuration-with-flakes-without-home-manager-on-nixos-21-05/16102/11)
nix [How to remove old system generations? - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/how-to-remove-old-system-generations/6648)
nix [Julia Evans](https://jvns.ca/) (Nix)
nix [Julow/nix-workspaces: Reproducible workspaces using Nix modules.](ghttps://github.com/Julow/nix-workspaces)
nix [List and delete NixOS generations - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/list-and-delete-nixos-generations/29637)
nix [Managing OS and home configurations using nixos-flake – nixos-flake](https://community.flake.parts/nixos-flake)
nix [Module system deep dive — nix.dev documentation](https://nix.dev/tutorials/module-system/module-system)
nix [Nix By Example · Nix Cookbook](ghttps://ops.functionalalgebra.com/nix-by-example/)
nix [Nix Function to Validate Email Address - CodePal](https://codepal.ai/code-generator/query/5pPHhh0W/nix-function-validate-email)
nix [Nix-lite, or Nix without the store, for templating - NixOS Discourse](https://discourse.nixos.org/t/nix-lite-or-nix-without-the-store-for-templating/38577)
nix [NixOS - Das Linux mit ganz eigenen Herangehensweisen. Grundkonzept vorgestellt - YouTube](https://www.youtube.com/watch?app%3Ddesktop%26v%3Dl3HnhX4tmZc)
nix [NixOS 23.11 manual | Nix & NixOS](ghttps://nixos.org/manual/nixos/stable/index.html%23sec-changing-config)
nix [NixOS 23.11 manual | Nix & NixOS](ghttps://nixos.org/manual/nixos/stable/options%23opt-services.xserver.displayManager.autoLogin)
nix [NixOS Generations Trimmer - NixOS Wiki](ghttps://nixos.wiki/wiki/NixOS_Generations_Trimmer)
nix [NixOS Search - Options - nix.gc](ghttps://search.nixos.org/options?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dnix.gc)
nix [NixOS Search - Packages - spacefm](https://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dspacefm)
nix [NixOS Secrets Management | SOPS-NIX - YouTube](ghttps://www.youtube.com/watch?v%3DG5f6GC7SnhU)
nix [NixOS can automatically run non-installed programs on typing their name : r/NixOS](https://www.reddit.com/r/NixOS/comments/6a1z7f/nixos_can_automatically_run_noninstalled_programs/)
nix [NixOS/nixos-artwork: Nix related artwork](https://github.com/NixOS/nixos-artwork)
nix [NixOS: Everything Everywhere All At Once - YouTube](ghttps://www.youtube.com/watch?v%3DCwfKlX3rA6E)
nix [Repository search results](https://github.com/search?q%3Dags%2Blanguage%253ANix%2B%26type%3Drepositories)
nix [Say Goodbye to Containers - Ephemeral Environments with Nix Shell - YouTube](https://www.youtube.com/watch?v%3D0ulldVwZiKA)
nix [Switching non-NixOS Home Manager to flakes – dee.underscore.world](ghttps://dee.underscore.world/blog/home-manager-flakes/)
nix [Upgrading Nix - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/installation/upgrading)
nix [What are the options for hardware.nvidia.package? (docs seem out-of-date) : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/or7pvq/what_are_the_options_for_hardwarenvidiapackage/)
nix [[RFC 0137] Nix language versioning by fricklerhandwerk · Pull Request #137 · NixOS/rfcs](https://github.com/NixOS/rfcs/pull/137)
nix [community.flake.parts](https://community.flake.parts/)
nix [devenv.sh](http://devenv.sh) 
nix [flake.lock: Update by github-actions[bot] · Pull Request #3 · io12/nix-snapd](ghttps://github.com/io12/nix-snapd/pull/3/commits)
nix [home-manager/modules · main · Nick Hiebert / dotfiles · GitLab](https://gitlab.com/BRBWaffles/dotfiles/-/tree/main/home-manager/modules?ref_type%3Dheads)
nix [https://app.cachix.org/cache/nix-community](https://app.cachix.org/cache/nix-community) ***
nix [https://codeberg.org/SkelyToni/NixOS](https://codeberg.org/SkelyToni/NixOS)
nix [https://cybernews.com/editorial/the-sweet-fruits-of-hard-work-the-most-exquisite-custom-made-nix-designs/](https://cybernews.com/editorial/the-sweet-fruits-of-hard-work-the-most-exquisite-custom-made-nix-designs/)
nix [https://danth.github.io/stylix/index.html](https://danth.github.io/stylix/index.html)
nix [https://devenv.sh/blog/2024/03/20/devenv-10-rewrite-in-rust/#whats-new](https://devenv.sh/blog/2024/03/20/devenv-10-rewrite-in-rust/%23whats-new)
nix [https://discourse.nixos.org/t/accessing-gpus-inside-a-nix-generated-docker-container/21122](https://discourse.nixos.org/t/accessing-gpus-inside-a-nix-generated-docker-container/21122)
nix [https://discourse.nixos.org/t/gpu-enabled-docker-containers-in-nixos/23870](https://discourse.nixos.org/t/gpu-enabled-docker-containers-in-nixos/23870)
nix [https://discourse.nixos.org/t/home-manager-shell-nix-shell-for-your-home-manager-config/24632](https://discourse.nixos.org/t/home-manager-shell-nix-shell-for-your-home-manager-config/24632)
nix [https://discourse.nixos.org/t/how-are-you-keeping-devshell-dependencies-live-in-store/16730/2](https://discourse.nixos.org/t/how-are-you-keeping-devshell-dependencies-live-in-store/16730/2)
nix [https://discourse.nixos.org/t/how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations/40139](https://discourse.nixos.org/t/how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations/40139)
nix [https://discourse.nixos.org/t/nix-store-gc-equivalent-to-delete-older-than/31767/2](https://discourse.nixos.org/t/nix-store-gc-equivalent-to-delete-older-than/31767/2)
nix [https://discourse.nixos.org/t/nvidia-docker-seems-not-working/26665](https://discourse.nixos.org/t/nvidia-docker-seems-not-working/26665)
nix [https://discourse.nixos.org/t/using-a-private-gitlab-instance-with-fetchgit/28013/3](https://discourse.nixos.org/t/using-a-private-gitlab-instance-with-fetchgit/28013/3)
nix [https://discourse.nixos.org/t/using-nvidia-container-runtime-with-containerd-on-nixos/27865](https://discourse.nixos.org/t/using-nvidia-container-runtime-with-containerd-on-nixos/27865)
nix [https://discourse.nixos.org/t/what-do-i-need-to-know-to-use-nix-and-where-to-find-more-a-concise-overview-for-new-users/41656](https://discourse.nixos.org/t/what-do-i-need-to-know-to-use-nix-and-where-to-find-more-a-concise-overview-for-new-users/41656)
nix [https://drakerossman.com/blog/hackernews-userscript-in-rust-wasm](https://drakerossman.com/blog/hackernews-userscript-in-rust-wasm)
nix [https://drakerossman.com/blog/how-to-patch-a-package-source-on-nixos](https://drakerossman.com/blog/how-to-patch-a-package-source-on-nixos?utm_source%3Ddrakerossman%26utm_medium%3Demail%26utm_campaign%3Ddrakerossmancom-patching-package-source-on-nixos)
nix [https://drakerossman.com/blog/interview-with-cto-of-listenfield-agtech-introducing-nixos-to-organization](https://drakerossman.com/blog/interview-with-cto-of-listenfield-agtech-introducing-nixos-to-organization)
nix [https://drakerossman.com/blog/overview-of-nix-formatters-ecosystem](https://drakerossman.com/blog/overview-of-nix-formatters-ecosystem)
nix [https://drakerossman.com/blog/practical-nixos-the-book](https://drakerossman.com/blog/practical-nixos-the-book)
nix [https://drakerossman.com/blog/rust-development-on-nixos-bootstrapping-rust-nightly-via-flake](https://drakerossman.com/blog/rust-development-on-nixos-bootstrapping-rust-nightly-via-flake)
nix [https://freedomlibrary.hillsdale.edu/programs/cca-i-russia/russia-from-1696-1917-an-overview](https://freedomlibrary.hillsdale.edu/programs/cca-i-russia/russia-from-1696-1917-an-overview)
nix [https://functor.tokyo/blog/2022-01-10-why-purenix](https://functor.tokyo/blog/2022-01-10-why-purenix)
nix [https://github.com/Awan/nix](https://github.com/Awan/nix)
nix [https://github.com/FelixKratz/dotfiles/tree/0619040a8eebbf9896c5ce4fc9d312270426ed8f](ghttps://github.com/FelixKratz/dotfiles/tree/0619040a8eebbf9896c5ce4fc9d312270426ed8f)
nix [https://github.com/MasterofNull/nixos/](https://github.com/MasterofNull/nixos/)
nix [https://github.com/Mic92/nix-update](https://github.com/Mic92/nix-update)
nix [https://github.com/NixOS/nix/issues/8635](https://github.com/NixOS/nix/issues/8635)
nix [https://github.com/NixOS/nixpkgs/issues/280566#issuecomment-1925520721](https://github.com/NixOS/nixpkgs/issues/280566%23issuecomment-1925520721)
nix [https://github.com/NixOS/rfcs/pull/166](https://github.com/NixOS/rfcs/pull/166)
nix [https://github.com/avnibilgin/dotfiles](https://github.com/avnibilgin/dotfiles)
nix [https://github.com/emacs-twist/twist.nix](https://github.com/emacs-twist/twist.nix) (emacs twist)
nix [https://github.com/kbeerta/flake](https://github.com/kbeerta/flake)
nix [https://github.com/ksenia-portu/flake/blob/master/flake.nix](https://github.com/ksenia-portu/flake/blob/master/flake.nix)
nix [https://github.com/nix-community/dream2nix/tree/main/examples](https://github.com/nix-community/dream2nix/tree/main/examples)
nix [https://github.com/nix-community/haumea](https://github.com/nix-community/haumea)
nix [https://github.com/nix-community/robotnix](https://github.com/nix-community/robotnix)
nix [https://github.com/target/nix-fetchers](https://github.com/target/nix-fetchers)
nix [https://gitlab.com/nobodyinperson/flakes/-/blob/main/poetryFHS/flake.nix?ref_type=heads](https://gitlab.com/nobodyinperson/flakes/-/blob/main/poetryFHS/flake.nix?ref_type%3Dheads)
nix [https://gitlab.com/nobodyinperson/flakes/-/tree/main/poetry2nix](https://gitlab.com/nobodyinperson/flakes/-/tree/main/poetry2nix)
nix [https://gitlab.com/nobodyinperson/flakes](https://gitlab.com/nobodyinperson/flakes)
nix [https://haseebmajid.dev/posts/2023-10-26-how-to-setup-a-go-development-shell-with-nix-flakes/](https://haseebmajid.dev/posts/2023-10-26-how-to-setup-a-go-development-shell-with-nix-flakes/)
nix [https://jpetazzo.github.io/2020/04/01/quest-minimal-docker-images-part-3/](https://jpetazzo.github.io/2020/04/01/quest-minimal-docker-images-part-3/)
nix [https://news.ycombinator.com/item?id=30057287](https://news.ycombinator.com/item?id%3D30057287) curse of nixos
nix [https://newsletter.ruder.io/p/the-big-picture-of-ai-research](https://newsletter.ruder.io/p/the-big-picture-of-ai-research)
nix [https://nix.dev/tutorials/module-system/module-system](https://nix.dev/tutorials/module-system/module-system)
nix [https://nix4noobs.com/flakes/devshells/](https://nix4noobs.com/flakes/devshells/)
nix [https://nixos.org/guides/nix-pills/garbage-collector](https://nixos.org/guides/nix-pills/garbage-collector)
nix [https://nixos.org/manual/nix/stable/package-management/garbage-collection.html](https://nixos.org/manual/nix/stable/package-management/garbage-collection.html)
nix [https://nixos.org/manual/nix/stable/package-management/profiles](https://nixos.org/manual/nix/stable/package-management/profiles)
nix [https://nixos.org/manual/nixpkgs/stable/#fetchfromgitlab](https://nixos.org/manual/nixpkgs/stable/%23fetchfromgitlab)
nix [https://nixos.wiki/wiki/Ca-derivations](https://nixos.wiki/wiki/Ca-derivations)
nix [https://primamateria.github.io/blog/haumea-cheatsheet/](https://primamateria.github.io/blog/haumea-cheatsheet/)
nix [https://reflexivereflection.com/posts/2015-02-28-deb-installation-nixos.html](https://reflexivereflection.com/posts/2015-02-28-deb-installation-nixos.html)
nix [https://search.nixos.org/packages?channel=23.11&show=libgen-cli&from=0&size=50&sort=relevance&type=packages&query=libgen](https://search.nixos.org/packages?channel%3D23.11%26show%3Dlibgen-cli%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlibgen)
nix [https://search.nixos.org/packages?channel=23.11&show=runit&from=0&size=50&sort=relevance&type=packages&query=runit](https://search.nixos.org/packages?channel%3D23.11%26show%3Drunit%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Drunit) nixos runit
nix [https://summer.nixos.org/blog/callpackage-a-tool-for-the-lazy/](https://summer.nixos.org/blog/callpackage-a-tool-for-the-lazy/)
nix [https://thegradientpub.substack.com/p/ted-gibson-language-structure-communication-llms](https://thegradientpub.substack.com/p/ted-gibson-language-structure-communication-llms)
nix [https://tmp.bearblog.dev/minimal-containers-using-nix/](https://tmp.bearblog.dev/minimal-containers-using-nix/)
nix [https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
nix [https://unix.stackexchange.com/questions/522822/different-methods-to-run-a-non-nixos-executable-on-nixos/522823#522823](https://unix.stackexchange.com/questions/522822/different-methods-to-run-a-non-nixos-executable-on-nixos/522823%23522823)
nix [https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs/717169?noredirect=1#comment1464428_717169](https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs/717169?noredirect%3D1%23comment1464428_717169)
nix [https://www.reddit.com/r/NixOS/comments/129mdgp/gdm_only_showing_black_screen_and_white_cursor/](https://www.reddit.com/r/NixOS/comments/129mdgp/gdm_only_showing_black_screen_and_white_cursor/)
nix [https://www.reddit.com/r/NixOS/comments/bs4q2p/installing_deb_packages_in_nixos/?rdt=64360](https://www.reddit.com/r/NixOS/comments/bs4q2p/installing_deb_packages_in_nixos/?rdt%3D64360)
nix [https://www.reddit.com/r/NixOS/comments/wjskae/how_can_i_change_grub_theme_from_the/?rdt=48996](https://www.reddit.com/r/NixOS/comments/wjskae/how_can_i_change_grub_theme_from_the/?rdt%3D48996)
nix [https://www.reddit.com/r/NixOS/s/LhnKgqVscG](https://www.reddit.com/r/NixOS/s/LhnKgqVscG) protect flake shell used with nix develop from having their packages deleted by nix-collect-garbage
nix [https://www.reddit.com/r/NixOS/s/UhoOeQnx6T](https://www.reddit.com/r/NixOS/s/UhoOeQnx6T)
nix [https://www.reddit.com/r/NixOS/s/bUsuKtHM9W](https://www.reddit.com/r/NixOS/s/bUsuKtHM9W)
nix [https://www.reddit.com/r/NixOS/s/bytkKR3Tvq](https://www.reddit.com/r/NixOS/s/bytkKR3Tvq)
nix [https://www.reddit.com/r/NixOS/s/eq9BlQ1sRj](https://www.reddit.com/r/NixOS/s/eq9BlQ1sRj)
nix [https://www.reddit.com/r/NixOS/s/iNzCdcCZWj](https://www.reddit.com/r/NixOS/s/iNzCdcCZWj) folder structure feedback
nix [https://www.reddit.com/r/NixOS/s/s1yFBo1r44](ghttps://www.reddit.com/r/NixOS/s/s1yFBo1r44)
nix [https://yuanwang.ca/posts/getting-started-with-flakes.html](https://yuanwang.ca/posts/getting-started-with-flakes.html)
nix [juspay/nix-dev-home: A](https://github.com/juspay/nix-dev-home) [home-manager](https://github.com/juspay/nix-dev-home) [template providing useful tools & settings for Nix-based development (macOS & Linux supported)](https://github.com/juspay/nix-dev-home)
nix [nix flake - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html%23flake-references)
nix [nix flake lock - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake-lock)
nix [nix-collect-garbage - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/command-ref/nix-collect-garbage)
nix [nix-community/nixpkgs.lib: nixpkgs lib for cheap instantiation [maintainer=@github-action] (with initial help from @blaggacao)](ghttps://github.com/nix-community/nixpkgs.lib)
nix [nix-shorts/posts/inspecting-values-with-repl.md at master · alper/nix-shorts](ghttps://github.com/alper/nix-shorts/blob/master/posts/inspecting-values-with-repl.md)
nix [services - MyNixOS](https://mynixos.com/search?q%3Dservices)
nix [srid/nixos-flake: A flake-parts module to manage NixOS and macOS machines, along with home-manager support, in a unified fashion.](https://github.com/srid/nixos-flake)
nix [symphorien/nix-du: Visualise which gc-roots to delete to free some space in your nix store](ghttps://github.com/symphorien/nix-du)
nix [unimport nix plugin? at DuckDuckGo](ghttps://duckduckgo.com/?q%3Dunimport%2Bnix%2Bplugin%253F%26ia%3Dweb)
nix [yelircaasi | Cachix](ghttps://app.cachix.org/cache/yelircaasi%23pull)
nix add reasonably-minimal container CL environment to Nix flake
nix ai [Nixified AI](https://nixified.ai/)
nix cuda [https://gist.github.com/ChadSki/926e5633961c9b48131eabd32e57adb2](https://gist.github.com/ChadSki/926e5633961c9b48131eabd32e57adb2) nix with cuda
nix deploy = homeManager.makeModule { modules = [ config.nixos ]; };
nix ds [https://nixos.wiki/wiki/Tensorflow](https://nixos.wiki/wiki/Tensorflow) 
nix flakes explanation [reddit](https://www.reddit.com/r/NixOS/s/eq9BlQ1sRj)
nix landscape [Commits · yelircaasi/landscape-client-nixos](https://github.com/yelircaasi/landscape-client-nixos/commits/nixos/)
nix landscape [https://github.com/canonical/landscape-scripts](https://github.com/canonical/landscape-scripts) 
nix landscape [landscape-client/setup_client.py at master · canonical/landscape-client](https://github.com/canonical/landscape-client/blob/master/setup_client.py)
nix mobile  [https://nlnet.nl/project/mobile-nixos/](https://nlnet.nl/project/mobile-nixos/)
nix mobile [Installing Guix as a Complete GNU/Linux System - YouTube](https://www.youtube.com/watch?v%3DoSy-TmoxG_Y%26list%3DPLEoMzSkcN8oNxnj7jm5V2ZcGc52002pQU%26index%3D5%26pp%3DiAQB)
nix mobile [Nix Phone and the End of Android](https://www.youtube.com/watch?v%3D0UIpg19KECw)
nix mobile [https://calyxos.org/install/devices/FP4/linux/](https://calyxos.org/install/devices/FP4/linux/)
nix mobile [https://fosstodon.org/@GreyLinux](https://fosstodon.org/@GreyLinux)
nix mobile [https://github.com/turbo-muffin/ancap-catppuccin](https://github.com/turbo-muffin/ancap-catppuccin)
nix mobile [https://nixos.wiki/wiki/PinePhone](https://nixos.wiki/wiki/PinePhone)
nix mobile [https://pine64.com/product/pinephone-beta-edition-with-convergence-package/](https://pine64.com/product/pinephone-beta-edition-with-convergence-package/)
nix mobile [https://www.reddit.com/r/NixOS/comments/sgjksu/today_i_learned_that_you_can_run_nixos_on_a/](https://www.reddit.com/r/NixOS/comments/sgjksu/today_i_learned_that_you_can_run_nixos_on_a/) nixos on mobile
nix mobile search nixos-mobile on github
nix note: create different configuration expressions to wrap and manage window managers and widgets and login managers etc: hyprland-ags.nix  hyprland-basic.nix  sway.nix  swayfx.nix  riverwm.nix  popos.nix
nix nvidia [Impossible to initialize nvidia nvml : Driver/library version mismatch · Issue #98328 · NixOS/nixpkgs](ghttps://github.com/NixOS/nixpkgs/issues/98328)
nix nvidia [Syllo/nvtop: GPUs process monitoring for AMD, Intel and NVIDIA](ghttps://github.com/Syllo/nvtop%23gpu-support)
nix nvidia [What's a legacy driver? | NVIDIA](ghttps://www.nvidia.com/en-us/drivers/unix/legacy-gpu/)
nix nvidia docker [https://github.com/suvash/nixos-nvidia-cuda-python-docker-compose](https://github.com/suvash/nixos-nvidia-cuda-python-docker-compose)
nix nvidia docker [https://sebastian-staffa.eu/posts/nvidia-docker-with-nix/](https://sebastian-staffa.eu/posts/nvidia-docker-with-nix/)
nix nvidia docker [https://www.google.com/search?client=firefox-b-d&q=nvidia+docker+container+on+nixos#ip=1](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dnvidia%2Bdocker%2Bcontainer%2Bon%2Bnixos%23ip%3D1)
nix nvidia ml [https://www.reddit.com/r/NixOS/comments/tzlunt/deep_learning_on_nixos/](https://www.reddit.com/r/NixOS/comments/tzlunt/deep_learning_on_nixos/)
nix prog [hraban/cl-nix-lite: Common Lisp module for Nix, without Quicklisp](ghttps://github.com/hraban/cl-nix-lite)
nix rice  [the-argus/gtk-nix: A gtk theme that can be configured with nix](https://github.com/the-argus/gtk-nix/)
nix rice [https://github.com/danth/stylix](https://github.com/danth/stylix)
nix sops [https://blog.gitguardian.com/a-comprehensive-guide-to-sops/](https://blog.gitguardian.com/a-comprehensive-guide-to-sops/)
nix sops [https://github.com/Mic92/sops-nix](https://github.com/Mic92/sops-nix)
nix sops [https://github.imold.wang/lucidph3nx/nvim-sops](https://github.imold.wang/lucidph3nx/nvim-sops)
nix sops [https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/](https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/)
nix sops [https://www.youtube.com/watch?v=G5f6GC7SnhU](https://www.youtube.com/watch?v%3DG5f6GC7SnhU)
nix sw [https://news.ycombinator.com/item?id=33655542](https://news.ycombinator.com/item?id%3D33655542) 
nix: write insertIf function in Nix to interpolate string if some option is set, otherwise empty stringkeep in separate files and then bring together in Nix. Call files that are incorrect as standalone .luaPiece (for exampke) and in nvim turn on highlighting with false positive errors turned off



NixOS and Ubuntu are two different Linux distributions with distinct design philosophies and approaches to system management. While both have security features, NixOS incorporates certain design principles that contribute to its security posture. Here are some aspects in which NixOS might be considered more secure than Ubuntu:

Immutable System Configuration:
NixOS: NixOS follows an immutable infrastructure model, meaning that the system configuration is treated as a whole, and changes are applied by creating new configurations rather than modifying existing ones. This can reduce the risk of configuration drift and unintended changes that might introduce security vulnerabilities.
Ubuntu: In traditional Linux distributions like Ubuntu, system configurations are often modified directly, and changes can accumulate over time. This can potentially lead to a less predictable and more complex system state.
Declarative System Configuration:
NixOS: NixOS configurations are declarative and specify the desired state of the system. This approach can enhance system predictability and make it easier to audit and understand the system's configuration.
Ubuntu: While modern Ubuntu versions have introduced tools like Ansible and systemd for system configuration management, they may not enforce the same level of declarative and immutable principles as NixOS.
Atomic Upgrades and Rollbacks:
NixOS: NixOS supports atomic upgrades and rollbacks, allowing users to easily switch between different system configurations. This feature can be valuable for system recovery and provides a safety net in case an upgrade introduces unexpected issues.
Ubuntu: While Ubuntu provides package management tools for upgrading and downgrading individual packages, NixOS's approach extends this to the entire system configuration, including the kernel.
Package Management and Isolation:
NixOS: Nix, the package manager used by NixOS, provides a functional and isolated approach to package management. Each package is isolated from others, reducing the potential for conflicts and dependency issues.
Ubuntu: Ubuntu's package management system, based on APT (Advanced Package Tool), also isolates packages, but it may not enforce the same level of functional package management principles as Nix.
Enhanced Reproducibility:
NixOS: The declarative and functional nature of NixOS configurations contributes to enhanced reproducibility. Given the same configuration, a NixOS system can be replicated reliably across different environments.
Ubuntu: While Ubuntu strives for package consistency, NixOS's functional approach can offer more explicit control over the entire system's state.
It's important to note that security is a multifaceted aspect, and the effectiveness of security measures depends on various factors, including the specific use case, the user's expertise, and the threat landscape. Both NixOS and Ubuntu have security features, and the choice between them should consider factors beyond security alone, such as community support, package availability, and ease of use.

Are there, conversely, ways in which Ubuntu is more secure than NixOS?

ChatGPT

While NixOS and Ubuntu both prioritize security, they have different design philosophies and approaches to system management. Ubuntu, being one of the most widely used Linux distributions, has its own set of security features and advantages. Here are some aspects where Ubuntu might be considered more secure than NixOS:

AppArmor and Security Profiles:
Ubuntu: Ubuntu incorporates AppArmor, a mandatory access control (MAC) framework that restricts the capabilities of individual programs. AppArmor uses security profiles to define what actions specific programs are allowed to perform, enhancing the overall security of the system.
NixOS: While NixOS supports various security features, including SELinux integration, it might not have the same level of integration and community support for AppArmor as Ubuntu.
Wide Adoption and Community Support:
Ubuntu: Being one of the most popular Linux distributions, Ubuntu benefits from a large and active user and developer community. This means that security issues are often discovered and addressed promptly, and there is a wealth of community knowledge and support available.
NixOS: While NixOS has a dedicated and growing community, it may not be as large or mature as Ubuntu's community. The wider adoption of Ubuntu can contribute to a more extensive security-focused ecosystem.
Security Patching and Updates:
Ubuntu: Ubuntu has a well-established system for providing security updates and patches promptly. The Ubuntu Security Team actively monitors vulnerabilities and releases updates to address them in a timely manner.
NixOS: NixOS also emphasizes security updates, but the update process and release cycle may differ. Ubuntu's regular release schedule and Long-Term Support (LTS) versions provide predictable maintenance and support.
Ease of Use and User Base:
Ubuntu: Ubuntu is known for its user-friendly approach, making it accessible to a wide range of users, including those who may not have extensive Linux experience. A user-friendly environment can contribute to better security practices as users are more likely to follow best practices when the system is easy to use.
NixOS: NixOS has a unique configuration model that may have a steeper learning curve for users unfamiliar with functional programming and declarative configuration. While this design contributes to security, ease of use is also a security consideration.
Security Documentation and Resources:
Ubuntu: Ubuntu has extensive documentation, security guides, and community forums that provide resources for users to enhance the security of their systems. The availability of well-documented security practices contributes to overall system security.
NixOS: NixOS documentation is comprehensive, but the community resources and documentation may not be as extensive or user-friendly for security-related topics as those for Ubuntu.
It's essential to consider the specific security requirements, user expertise, and the overall ecosystem when choosing between Ubuntu and NixOS. Both distributions have their strengths, and the choice often depends on factors beyond security, including the intended use case, user preferences, and community support.

The security of software repositories, including Nixpkgs for NixOS and the repositories for Ubuntu and Debian, involves multiple factors, and it's not straightforward to declare one as universally more secure than the others. Each package management system has its own set of security features and practices. Here are some considerations for each:

Nixpkgs (NixOS):
Functional Package Management: Nixpkgs uses a functional approach to package management. Each package is built in isolation, and dependencies are explicitly defined. This can help reduce dependency issues and conflicts.
Reproducibility: Nixpkgs emphasizes reproducibility, meaning that given the same configuration, the build process for packages should produce identical results. This can enhance the trustworthiness of packages.
Immutable Infrastructure: NixOS follows an immutable infrastructure model, where the entire system configuration is treated as a whole. This can reduce the risk of configuration drift and unintended changes.
Ubuntu and Debian Repositories:
Wide Adoption and Community Scrutiny: Ubuntu and Debian have large user communities, and their repositories undergo significant scrutiny. Security vulnerabilities are actively monitored, and updates are provided promptly. The Debian Security Team and the Ubuntu Security Team play key roles in managing security updates.
Package Signing: Packages in Debian and Ubuntu repositories are signed with cryptographic keys, providing a mechanism to verify the authenticity and integrity of the packages. This helps prevent tampering during the download process.
Stable Release Process: Debian's stable release process is known for its focus on stability and security. Ubuntu, which is based on Debian, inherits many of these security practices, particularly in Long-Term Support (LTS) releases.
Ultimately, the security of a software repository depends on various factors, including the development and maintenance practices, community involvement, and the responsiveness to security vulnerabilities. It's crucial to note that security is a holistic concern, and no system is entirely immune to security issues. Regularly applying security updates, using package signing mechanisms, and following security best practices are critical regardless of the chosen distribution.

When evaluating the security of a system, users should consider their specific security requirements, the threat landscape, and their own expertise in maintaining and securing the system. Additionally, using additional security measures, such as intrusion detection systems and firewalls, can further enhance the security of any Linux distribution.

Between Nixpkgs and Ubuntu, which confirms more closely to ISO27001?

ChatGPT

ISO/IEC 27001 is a widely recognized international standard for information security management systems (ISMS). It provides a systematic approach to managing sensitive company information, ensuring its confidentiality, integrity, and availability. ISO 27001 doesn't prescribe specific technical measures but focuses on establishing a framework for information security governance.

Comparing Nixpkgs (NixOS) and Ubuntu in the context of ISO 27001 compliance involves considering how each aligns with the standard's principles and practices. Here are some considerations:

ISO 27001 Framework:
Nixpkgs (NixOS): NixOS and Nixpkgs provide a unique approach to system configuration and package management with a focus on immutability and declarative specifications. While the ISO 27001 standard doesn't prescribe specific technical solutions, the principles of transparency, traceability, and accountability can align well with Nixpkgs's functional and reproducible system configuration.
Ubuntu: Ubuntu, as a widely used Linux distribution, has a broad user base and established security practices. It offers tools and features that can be integrated into an ISO 27001 compliant environment. Additionally, Ubuntu's Long-Term Support (LTS) releases may align well with the stability and reliability requirements of ISO 27001.
Security Updates and Patch Management:
Nixpkgs (NixOS): Nixpkgs has a strong emphasis on reproducibility and the ability to roll back changes. Security updates can be systematically applied, and the functional package management model allows for clear tracking of changes.
Ubuntu: Ubuntu has well-defined processes for security updates and patch management. The Ubuntu Security Team actively monitors vulnerabilities and releases timely updates. The Ubuntu ecosystem benefits from widespread adoption and community scrutiny.
Auditability and Compliance:
Nixpkgs (NixOS): The functional and declarative nature of Nixpkgs allows for clear specification of system configurations. This can contribute to auditability and compliance efforts, aligning with ISO 27001 principles.
Ubuntu: Ubuntu's popularity and wide usage contribute to the availability of tools, documentation, and community knowledge, which can facilitate auditability and compliance checks.
Documentation and Reporting:
Nixpkgs (NixOS): Nixpkgs and NixOS documentation provide insights into the system's configuration and package management. Clear documentation is essential for ISO 27001 compliance.
Ubuntu: Ubuntu has extensive documentation and resources that can aid in understanding and implementing security best practices. This can be valuable for documentation and reporting requirements.
Ultimately, both Nixpkgs (NixOS) and Ubuntu can be used in environments seeking ISO 27001 compliance. The choice depends on factors beyond security alone, such as the specific needs of the organization, the expertise of the team, and the desired system configuration and management model. Organizations should conduct their own risk assessments and carefully consider their unique security and compliance requirements when choosing an operating system and configuration management approach.

How could one convince his or her supervisors that NixOS is suitable for use in a business context with sensitive data? Currently only Ubuntu and Devian are allowed.

ChatGPT

Convincing supervisors to consider NixOS in a business context, especially when Ubuntu and Debian are already established, may require a thoughtful approach that addresses specific concerns related to security, manageability, and business needs. Here are some points and strategies you might consider:

Security and Reproducibility:
Emphasize the functional and declarative nature of NixOS, which allows for reproducible system configurations. This can enhance security and traceability, aligning with best practices for managing sensitive data.
Immutable Infrastructure:
Highlight the benefits of an immutable infrastructure model, where system configurations are treated as a whole and changes are made by creating new configurations. This can reduce the risk of configuration drift and unauthorized changes.
Rollback and Recovery:
Showcase NixOS's ability to perform atomic upgrades and rollbacks, providing a safety net for system changes. This feature can be crucial in ensuring system stability and recovery from unexpected issues.
Documentation and Auditability:
Point out the clear documentation provided by NixOS and Nixpkgs. The functional and declarative configuration model makes it easier to document and understand the system state, contributing to auditability.
Community Support:
Discuss the growing and active community around NixOS. While Ubuntu and Debian have established communities, NixOS's community is enthusiastic and supportive, and it actively contributes to the development and improvement of the system.
Integration with Existing Infrastructure:
Demonstrate how NixOS can integrate with existing infrastructure and tools. Showcase compatibility with standard Linux software and services to reassure that the migration would not disrupt current workflows.
Pilot Project:
Propose a pilot project or proof-of-concept to evaluate NixOS in a controlled environment. This can help mitigate concerns, demonstrate the benefits, and provide tangible evidence of NixOS's suitability.
Educational Resources:
Provide educational resources and training opportunities for team members to learn about NixOS. Familiarity with the system can alleviate concerns and build confidence in its use.
Risk Mitigation and Contingency Planning:
Address concerns about potential risks by discussing mitigation strategies and contingency plans. Explain how NixOS's features contribute to a more resilient and manageable infrastructure.
Cost and Resource Considerations:
Highlight any potential cost savings or resource efficiency gained by using NixOS. This might include reduced maintenance efforts, faster system recovery, or improved development workflows.
Remember to tailor your communication to your supervisors' priorities and concerns. Providing concrete examples, case studies, or success stories of organizations using NixOS for sensitive data can further strengthen your case. Additionally, being open to feedback and collaborating with relevant stakeholders can foster a more inclusive decision-making process.

Are there any known security risks in NixOS and its packaging system?

ChatGPT

As of my last knowledge update in January 2022, NixOS has generally been considered a secure and well-designed Linux distribution, and the Nix package manager is known for its unique and functional approach to package management. However, it's important to note that no software system is entirely immune to security risks, and vulnerabilities can be discovered or addressed over time.

Here are some considerations regarding security in NixOS and its packaging system:

Security Practices:
NixOS follows certain security practices, such as isolating packages and providing a functional and declarative approach to system configuration. This can contribute to a more secure and auditable system.
Reproducibility:
NixOS emphasizes reproducibility in package builds. The ability to reproduce builds ensures that the same source code and dependencies result in identical binaries, reducing the risk of tampering and providing transparency in the build process.
Community Scrutiny:
NixOS benefits from an active and growing community. Community scrutiny is an essential factor in discovering and addressing security issues. The larger the community, the more eyes are on the codebase, which can contribute to early detection of vulnerabilities.
Security Updates:
Like any Linux distribution, NixOS provides security updates for its packages. Regularly applying these updates is crucial for addressing known vulnerabilities. Users should stay informed about security advisories and apply updates promptly.
Limited Attack Surface:
Nix's functional approach to package management can potentially limit the attack surface by isolating packages and dependencies. Each package is built in its own environment, reducing the risk of conflicts and shared library vulnerabilities.
Centralized Configuration:
NixOS's centralized and declarative system configuration can contribute to better security by providing a clear overview of the system state. This can facilitate auditing and compliance efforts.
While NixOS has its security strengths, it's essential to stay informed about the latest developments, security advisories, and updates in the NixOS community. Regularly checking the official NixOS Security page, participating in community discussions, and monitoring security mailing lists are good practices for staying informed about security-related matters.

Additionally, the security landscape can evolve, and new information may have emerged since my last update in January 2022. Therefore, it's advisable to check the latest sources and security advisories for the most up-to-date information regarding NixOS security.



