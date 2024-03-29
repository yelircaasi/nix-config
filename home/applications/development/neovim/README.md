# Neovim Notes

Migrating to a structure built around languages and features.

```bash
neovim
 |- default.nix
 |- languages/
 |- features/
```

Roadmap

- [ ] sort plugins into language and feature folders, including custom plugin packages
- [ ] get building - minimal viable refactor
- [ ] move to import-list-based system instead of one tight and Procrustean function? maybe leave it for now and keep the option option to allow for more complexity and variation
- [ ] read through nixCats source code
- [ ] write down questions on nixCats source code
- [ ] answer all questions on nixCats source code
- [ ] try out nixCats by running it as a flake
- [ ] implement lazy loading: "so, for lazy loading, the plugins can be in pack/*/opt/
      and then you vim.cmd([[packadd! plugindirname]]) 
      on an autocommand"
      https://github.com/BirdeeHub/nixCats-nvim/blob/main/nix/builder/vim-pack-dir.nix
      https://neovim.io/doc/user/repeat.html#packages

      !!!!!! https://ryantm.github.io/nixpkgs/languages-frameworks/vim/
      https://nixos.org/manual/nixpkgs/unstable/#managing-plugins-with-vim-packages
      https://github.com/NixOS/nixpkgs/blob/master/pkgs/applications/editors/vim/plugins/vim-utils.nix#L173

      use xdg.dataDir to add plugins to ~/.local/share/nvim/site? nah ->
      HOME/.config/nvim/pack/languages/opt/haskell/plugin/init.lua

      see also :help packages

      https://www.lazyvim.org/extras/lang/markdown
      read through: https://www.lazyvim.org/extras

        packpath=
        /etc/profiles/per-user/isaac/etc/xdg/nvim
        /etc/profiles/per-user/isaac/etc/xdg/nvim/after
        /etc/profiles/per-user/isaac/share/nvim/site
        /etc/profiles/per-user/isaac/share/nvim/site/after
        /etc/xdg/nvim
        /etc/xdg/nvim/after
        HOME/.config/nvim
        HOME/.local/share/nvim/site
        HOME/.local/share/nvim/site/after
        HOME/.local/state/nix/profile/etc/xdg/nvim
        HOME/.local/state/nix/profile/etc/xdg/nvim/after
        HOME/.local/state/nix/profile/share/nvim/site
        HOME/.local/state/nix/profile/share/nvim/site/after
        HOME/.nix-profile/etc/xdg/nvim
        HOME/.nix-profile/etc/xdg/nvim/after
        HOME/.nix-profile/share/nvim/site
        $HOME/.nix-profile/share/nvim/site/after
        /nix/profile/share/nvim/site/after
        /nix/profile/share/nvim/site
        /nix/profile/etc/xdg/nvim
        /nix/profile/etc/xdg/nvim/after
        /nix/store/pnw7xz8c69lxmivz8n2l1430wfy48v0g-neovim-unwrapped-ce7c51a/lib/nvim
        /nix/store/pnw7xz8c69lxmivz8n2l1430wfy48v0g-neovim-unwrapped-ce7c51a/share/nvim/runtime
        /nix/store/xcyqj8sdz0x2rlf3q5mmwmdwzmj1k2ls-desktops/share/nvim/site
        /nix/store/xcyqj8sdz0x2rlf3q5mmwmdwzmj1k2ls-desktops/share/nvim/site/after
        /nix/store/yfswsxhqv7zzmsqlcdcx17dwdsbqlb7v-vim-pack-dir
        /nix/var/nix/profiles/default/etc/xdg/nvim
        /nix/var/nix/profiles/default/etc/xdg/nvim/after
        /nix/var/nix/profiles/default/share/nvim/site
        /nix/var/nix/profiles/default/share/nvim/site/after
        /run/current-system/sw/etc/xdg/nvim
        /run/current-system/sw/etc/xdg/nvim/after
        /run/current-system/sw/share/nvim/site
        /run/current-system/sw/share/nvim/site/after

        runtimepath = 

        /etc/profiles/per-user/isaac/etc/xdg/nvim
        /etc/profiles/per-user/isaac/etc/xdg/nvim/after
        /etc/profiles/per-user/isaac/share/nvim/site
        /etc/profiles/per-user/isaac/share/nvim/site/after
        /etc/xdg/nvim
        /etc/xdg/nvim/after
        /nix/profile/etc/xdg/nvim
        /nix/profile/etc/xdg/nvim/after
        /nix/profile/share/nvim/site
        /nix/profile/share/nvim/site/after
        /nix/store/pnw7xz8c69lxmivz8n2l1430wfy48v0g-neovim-unwrapped-ce7c51a/lib/nvim
        /nix/store/pnw7xz8c69lxmivz8n2l1430wfy48v0g-neovim-unwrapped-ce7c51a/share/nvim/runtime
        /nix/store/pnw7xz8c69lxmivz8n2l1430wfy48v0g-neovim-unwrapped-ce7c51a/share/nvim/runtime/pack/dist/opt/matchit
        /nix/store/xcyqj8sdz0x2rlf3q5mmwmdwzmj1k2ls-desktops/share/nvim/site
        /nix/store/xcyqj8sdz0x2rlf3q5mmwmdwzmj1k2ls-desktops/share/nvim/site/after
        /nix/store/yfswsxhqv7zzmsqlcdcx17dwdsbqlb7v-vim-pack-dir
        /nix/store/yfswsxhqv7zzmsqlcdcx17dwdsbqlb7v-vim-pack-dir/pack/*/start/*
        /nix/store/yfswsxhqv7zzmsqlcdcx17dwdsbqlb7v-vim-pack-dir/pack/*/start/*/after
        /nix/var/nix/profiles/default/etc/xdg/nvim
        /nix/var/nix/profiles/default/etc/xdg/nvim/after
        /nix/var/nix/profiles/default/share/nvim/site
        /nix/var/nix/profiles/default/share/nvim/site/after
        /run/current-system/sw/etc/xdg/nvim
        /run/current-system/sw/etc/xdg/nvim/after
        /run/current-system/sw/share/nvim/site
        /run/current-system/sw/share/nvim/site/after
        HOME/.config/nvim
        HOME/.config/nvim/after
        HOME/.local/share/nvim/site
        HOME/.local/share/nvim/site/after
        HOME/.local/state/nix/profile/etc/xdg/nvim
        HOME/.local/state/nix/profile/etc/xdg/nvim/after
        HOME/.local/state/nix/profile/share/nvim/site
        HOME/.local/state/nix/profile/share/nvim/site/after
        HOME/.nix-profile/etc/xdg/nvim
        HOME/.nix-profile/etc/xdg/nvim/after
        HOME/.nix-profile/share/nvim/site
        HOME/.nix-profile/share/nvim/site/after
      - [ ] make neovim docker container (from nixos/nix)
      - [ ] try out command- and autocommand-based loading in neovim docker container
- [ ] 
