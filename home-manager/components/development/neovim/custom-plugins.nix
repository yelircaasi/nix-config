{pkgs}: {
  lazy-nix-helper-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "lazy-nix-helper.nvim";
    version = "v0.4.0";
    src = pkgs.fetchFromGitHub {
      owner = "b-src";
      repo = "lazy-nix-helper.nvim";
      rev = "63b20ed071647bb492ed3256fbda709e4bfedc45";
      sha256 = "sha256-TBDZGj0NXkWvJZJ5ngEqbhovf6RPm9N+Rmphz92CS3Q=";
    };
    meta.homepage = "https://github.com/b-src/lazy-nix-helper.nvim";
  };
  neorg = pkgs.vimUtils.buildVimPlugin {
    pname = "neorg";
    version = "v7.0.0";
    src = pkgs.fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "a6ec80f455f948e122e669ff6039bc977427b158";
      sha256 = "sha256-km3uiYm9kPhm1wZerXEIWpv6jO3zOQTIZAkiybNBpaA=";
    };
    meta.homepage = "https://github.com/HallerPatrick/py_lsp.nvim";
  };
  py-lsp-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "py_lsp.nvim";
    version = "v0.0.2";
    src = pkgs.fetchFromGitHub {
      owner = "HallerPatrick";
      repo = "py_lsp.nvim";
      rev = "de8a564d493050b62fe3ee080e128d177c332e96";
      sha256 = "sha256-8LcLDQp5Hi3zCCnZJPLbrMXF2KLmHLvMblyoiQ584P0=";
    };
    meta.homepage = "https://github.com/HallerPatrick/py_lsp.nvim";
  };
  gx-extended-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "gx-extended.nvim";
    version = "2023-11-22";
    src = pkgs.fetchFromGitHub {
      owner = "rmagatti";
      repo = "gx-extended.nvim";
      rev = "d16db818020a6695fef1423b470d9e54eed6c2a2";
      sha256 = "sha256-p5vT+6G5RX7puA9C5mO2P/fYSFzQ+BWMhWmMPGz7MDA=";
    };
    meta.homepage = "https://github.com/rmagatti/gx-extended.nvim";
  };
  neotest = pkgs.vimUtils.buildVimPlugin {
    pname = "neotest";
    version = "2024-01-15";
    src = pkgs.fetchFromGitHub {
      owner = "nvim-neotest";
      repo = "neotest";
      rev = "dcdb40ea48f9c7b67a5576f6bb2e5f63ec15f2c0";
      sha256 = "sha256-bHM+5NP4O1O6sbNdtYVB1ymfF1YZmL+OYNzxwPKoiVo=";
    };
    meta.homepage = "ihttps://github.com/nvim-neotest/neotest";
  };
  schwarzwald = pkgs.vimUtils.buildVimPlugin {
    pname = "schwarzwald.nvim";
    version = "v0.0.0";
    src = pkgs.fetchFromGitHub {
      owner = "yelircaasi";
      repo = "schwarzwald.nvim";
      rev = "fa299519a6144aec9cc9bcb5cbccf57f5d3346a8";
      sha256 = "sha256-ExkaZstOiGua9Cnpans3YQB91Ek7YxRSCtGYrVAU9yM=";
    };
    meta.homepage = "https://github.com/yelircaasi/schwarzwald.nvim";
  };
  marks-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "marks.nvim";
    version = "2024-01-07";
    src = pkgs.fetchFromGitHub {
      owner = "chentoast";
      repo = "marks.nvim";
      rev = "74e8d01b2a2131b6e46354cffc553aa7f81bcf5b";
      sha256 = "sha256-4nvOqDUvV9zga7OqJDsHYWxchC6qiFG5Fkb2l8bVJEI=";
    };
    meta.homepage = "https://github.com/chentoast/marks.nvim";
  };
  none-ls = pkgs.vimUtils.buildVimPlugin {
    pname = "none-ls.nvim";
    version = "2024-01-19";
    src = pkgs.fetchFromGitHub {
      owner = "nvimtools";
      repo = "none-ls.nvim";
      rev = "e64f03f3f77bd6854c3b3c5cfffcc806a0c0f66a";
      sha256 = "sha256-0aFJDvmGf9lJNNmSP/w/0tnq8ZANvAZhpYFgczswJho=";
    };
    meta.homepage = "https://github.com/nvimtools/none-ls.nvim/";
  };
  hlsearch-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "hlsearch.nvim";
    version = "2024-01-10";
    src = pkgs.fetchFromGitHub {
      owner = "nvimdev";
      repo = "hlsearch.nvim";
      rev = "fdeb60b890d15d9194e8600042e5232ef8c29b0e";
      sha256 = "sha256-ibizMO16T/SwZIcl+zckbpDHMYQovKPEB5iO2YBRj74=";
    };
    meta.homepage = "https://github.com/nvimdev/hlsearch.nvim";
  };
  harpoon2 = pkgs.vimUtils.buildVimPlugin {
    pname = "harpoon";
    version = "2024-01-06";
    src = pkgs.fetchFromGitHub {
      owner = "ThePrimeagen";
      repo = "harpoon";
      rev = "2cd4e03372f7ee5692c8caa220f479ea07970f17";
      sha256 = "sha256-r+D6537a3pTBH6OmoWW6+q3uhrZJT928qh1XDCLkE6U=";
    };
    meta.homepage = "https://github.com/ThePrimeagen/harpoon/tree/harpoon2";
  };
  popui-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "popui.nvim";
    version = "2023-11-26";
    src = pkgs.fetchFromGitHub {
      owner = "hood";
      repo = "popui.nvim";
      rev = "4d903e46fdb5eef25fa79ef1b598f5340a2674b0";
      sha256 = "sha256-cB50v71OFDbOqZ5SeZ5eYXBci8ZN7VRJzNnZs4dvXoI=";
    };
    meta.homepage = "https://github.com/hood/popui.nvim";
  };
  hawtkeys-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "hawtkeys.nvim";
    version = "2024-01-15";
    src = pkgs.fetchFromGitHub {
      owner = "tris203";
      repo = "hawtkeys.nvim";
      rev = "8bce74ca1de05554f031849482bccec42e9a16a0";
      sha256 = "sha256-bGpdetwx2tcFTV2X0AOar08xRkfnverw9Gm3Y/GokTk=";
    };
    meta.homepage = "https://github.com/tris203/hawtkeys.nvim";
  };
  nx-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nx.nvim";
    version = "2023-04-13";
    src = pkgs.fetchFromGitHub {
      owner = "tenxsoydev";
      repo = "nx.nvim";
      rev = "3ef35bcd8923f91b97b06a4d122b27744522e0f7";
      sha256 = "sha256-r+D6537a3pTBH6OmoWW6+q3uhrZJT928qh1XDCLkE6U=";
    };
    meta.homepage = "https://github.com/Equilibris/nx.nvim";
  };
  markdowny-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "markdowny.nvim";
    version = "2023-02-18";
    src = pkgs.fetchFromGitHub {
      owner = "antonk52";
      repo = "markdowny.nvim";
      rev = "083782f05e67cc08c6378affec9f55a913ac55f4";
      sha256 = "sha256-3A6V1sRnYf814SF4Q0FpY/EK7YeWRP17JiWr62DHBdA=";
    };
    meta.homepage = "https://github.com/antonk52/markdowny.nvim";
  };
  nvim-genghis = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-genghis";
    version = "2024-01-03";
    src = pkgs.fetchFromGitHub {
      owner = "chrisgrieser";
      repo = "nvim-genghis";
      rev = "46a851c92b3fb25e0d46d96a42f106b15525f149";
      sha256 = "sha256-DUdW57W8Micj4Mlfdeo6MFsc39IDn+ClgATru5AxJE4=";
    };
    meta.homepage = "https://github.com/chrisgrieser/nvim-genghis";
  };
  keymap-amend-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "keymap-amend.nvim";
    version = "2022-09-22";
    src = pkgs.fetchFromGitHub {
      owner = "anuvyklack";
      repo = "keymap-amend.nvim";
      rev = "b8bf9d820878d5497fdd11d6de55dea82872d98e";
      sha256 = "sha256-fjhZLetXo+chDywxukJtuMv15gJgi4c3lwYx+ubOUr4=";
    };
    meta.homepage = "https://github.com/anuvyklack/keymap-amend.nvim";
  };
  wezterm-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "wezterm.nvim";
    version = "2023-11-02";
    src = pkgs.fetchFromGitHub {
      owner = "willothy";
      repo = "wezterm.nvim";
      rev = "2aacd6405c52ef4b865a7baf2598fa3d7b0bc25c";
      sha256 = "sha256-ZWaDL614A9LpDHGydSpDE2TyyiP76FTmNvlVdpyHg7w=";
    };
    meta.homepage = "https://github.com/willothy/wezterm.nvim";
  };
  toggletasks-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "toggletasks.nvim";
    version = "2023-03-08";
    src = pkgs.fetchFromGitHub {
      owner = "jedrzejboczar";
      repo = "toggletasks.nvim";
      rev = "7138dda86bd4ec908ef5342e78c60bfbd23f4506";
      sha256 = "sha256-/WGoo6g5UCRnE+AzkAH1R/T2t2UuJNn9Fh49tGe+Jr4=";
    };
    meta.homepage = "https://github.com/jedrzejboczar/toggletasks.nvim";
  };
  code-runner-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "code_runner.nvim";
    version = "2023-11-18";
    src = pkgs.fetchFromGitHub {
      owner = "CRAG666";
      repo = "code_runner.nvim";
      rev = "701807c4f181cd00d4fad0280bbc821324cbe3c1";
      sha256 = "sha256-hF1G75vAHoqGoUonmsr00oFYjlQNGGrInn546S8OtU0=";
    };
    meta.homepage = "https://github.com/CRAG666/code_runner.nvim";
  };
  compiler-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "compiler.nvim";
    version = "2024-01-09";
    src = pkgs.fetchFromGitHub {
      owner = "Zeioth";
      repo = "compiler.nvim";
      rev = "e82a48e9528edc769b1329b753eb9e3926f25595";
      sha256 = "sha256-QvkbWGFFdPA2AmXMqok90V07HiVu3fUPTaKXJryHJ2U=";
    };
    meta.homepage = "https://github.com/Zeioth/compiler.nvim";
  };
  yarepl-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "yarepl.nvim";
    version = "2023-11-18";
    src = pkgs.fetchFromGitHub {
      owner = "milanglacier";
      repo = "yarepl.nvim";
      rev = "c0ec78ef10ba01ab841b3e870421c33b1bbd6292";
      sha256 = "sha256-2xBNIjv5sUbGMs8YGKNdfEmyEgfL8v0euExV9GAP9ek=";
    };
    meta.homepage = "https://github.com/milanglacier/yarepl.nvim";
  };
  iron-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "iron.nvim";
    version = "2023-07-13";
    src = pkgs.fetchFromGitHub {
      owner = "Vigemus";
      repo = "iron.nvim";
      rev = "7f876ee3e1f4ea1e5284b1b697cdad5b256e8046";
      sha256 = "sha256-dPPMh/8lpJKj6V9jFZaKKVc59IjVwcu/rX83M6fXx3k=";
    };
    meta.homepage = "https://github.com/Vigemus/iron.nvim";
  };
  zellij-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "zellij.nvim";
    version = "2023-12-03";
    src = pkgs.fetchFromGitHub {
      owner = "Lilja";
      repo = "zellij.nvim";
      rev = "483c855ab7a3aba60e522971991481807ea3a47b";
      sha256 = "sha256-z5wUoW2+KjW0LFyVNHF78xZJQN+3ATBPKZzaT4+7ip4=";
    };
    meta.homepage = "https://github.com/Lilja/zellij.nvim";
  };
  #zellij-nav-nvim = pkgs.vimUtils.buildVimPlugin {
  #  pname = "zellij-nav.nvim";
  #  version = "";
  #  src = pkgs.fetchFromSourcehut {
  #      owner = "~swaits";
  #      repo = "zellij-nav.nvim";
  #      rev = "c9f64ec7314509226889df6f61cd3b8a479e146b";
  #      sha256 = "sha256-0j9HEkLYjqwQJJ0wk75cixXdpN0xH2D7M//GWU06obg=";
  #  };
  #  meta.homepage = "https://git.sr.ht/~swaits/zellij-nav.nvim";
  #};
  windex-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "windex.nvim";
    version = "2022-07-13";
    src = pkgs.fetchFromGitHub {
      owner = "declancm";
      repo = "windex.nvim";
      rev = "1e86cba6f6f55ced60d17d6c6ebd51388a637b86";
      sha256 = "sha256-mkBfIrltEXw6o8eygg60cwcJyVfS5y8Hx7vtagvF3Vo=";
    };
    meta.homepage = "https://github.com/declancm/windex.nvim";
  };
  projectmgr-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "projectmgr.nvim";
    version = "2023-08-26";
    src = pkgs.fetchFromGitHub {
      owner = "charludo";
      repo = "projectmgr.nvim";
      rev = "2d29b21b5afefa7a1690854c56db9b43195d9a10";
      sha256 = "sha256-/H3rX8EjwCEM4/mtvzLqa0+LzMYTnE+il7R639/BJx4=";
    };
    meta.homepage = "https://github.com/charludo/projectmgr.nvim";
  };
  memento-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "memento.nvim";
    version = "2022-03-18";
    src = pkgs.fetchFromGitHub {
      owner = "gaborvecsei";
      repo = "memento.nvim";
      rev = "7e5e5a86ccaec2892fc2d8197fc01a25d1cf8951";
      sha256 = "sha256-PIK+ESmsMw/ttl4897hOnt56kFR+yQG8UBFo4LJM57s=";
    };
    meta.homepage = "https://github.com/gaborvecsei/memento.nvim";
  };
  hlargs-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "hlargs.nvim";
    version = "2024-01-07";
    src = pkgs.fetchFromGitHub {
      owner = "m-demare";
      repo = "hlargs.nvim";
      rev = "e45fd1f18f2fadf7d4ebe6f14ed1e70c7fca02da";
      sha256 = "sha256-WJMyYWlw4j3bGTX7iuQ3y6M+XKJkWtp+0zIkKyfKVRc=";
    };
    meta.homepage = "https://github.com/m-demare/hlargs.nvim";
  };
  agrolens-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "agrolens.nvim";
    version = "2024-01-12";
    src = pkgs.fetchFromGitHub {
      owner = "desdic";
      repo = "agrolens.nvim";
      rev = "40febb2f7467309245a8130cc8368cdb1a84ebb1";
      sha256 = "sha256-G7eoKJgwh7KFfllPkpF9KRNz7LgC/J7/GhRsiel1LRA=";
    };
    meta.homepage = "https://github.com/desdic/agrolens.nvim";
  };
  qfview-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "qfview.nvim";
    version = "2023-09-09";
    src = pkgs.fetchFromGitHub {
      owner = "ashfinal";
      repo = "qfview.nvim";
      rev = "f7a4fd8d700d02f6c1274f02115fa4e68e63aa54";
      sha256 = "sha256-a8htbp3o/QBvdLDOTt8k+O0JmjqczpaY0CkojfbZYG8=";
    };
    meta.homepage = "https://github.com/ashfinal/qfview.nvim";
  };
  neowell-lua = pkgs.vimUtils.buildVimPlugin {
    pname = "NeoWell.lua";
    version = "2023-05-11";
    src = pkgs.fetchFromGitHub {
      owner = "nyngwang";
      repo = "NeoWell.lua";
      rev = "48e8776c73644de1b77122c97d530a9364a3b2db";
      sha256 = "sha256-1BkCQrTF1Mku2zonFsLLKsWCAxmLxpXARAL4Ph3xcTw=";
    };
    meta.homepage = "https://github.com/nyngwang/NeoWell.lua";
  };
  git-sessions-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "git-sessions.nvim";
    version = "2023-02-01";
    src = pkgs.fetchFromGitHub {
      owner = "TimotheeSai";
      repo = "git-sessions.nvim";
      rev = "22020e9195fdd73d2c7b5dd0315a3d7cb373588d";
      sha256 = "sha256-D9Go8kT8WmZdG3zTlHi6kgyq/gtKopgr+JdU9CG0ubc=";
    };
    meta.homepage = "https://github.com/TimotheeSai/git-sessions.nvim";
  };
  yanky-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "yanky.nvim";
    version = "2023-11-27";
    src = pkgs.fetchFromGitHub {
      owner = "gbprod";
      repo = "yanky.nvim";
      rev = "6bb9ffd3cad4c9876bda54e19d0659de28a4f84f";
      sha256 = "sha256-/Ecclr/5zQH2NlNhrXdPlKgcjAUPoKmJ6gnyxF9P7QY=";
    };
    meta.homepage = "https://github.com/gbprod/yanky.nvim";
  };
  sibling-swap-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "sibling-swap.nvim";
    version = "2023-12-13";
    src = pkgs.fetchFromGitHub {
      owner = "Wansmer";
      repo = "sibling-swap.nvim";
      rev = "a9a0fbb734a8f767cd7cf4c99a78cb27aebe2f88";
      sha256 = "sha256-QPt+bBthMCNuML7pJYZKRrTfpZhsqQJCPDlqcU4rAOY=";
    };
    meta.homepage = "https://github.com/Wansmer/sibling-swap.nvim";
  };
  move-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "move.nvim";
    version = "2023-04-21";
    src = pkgs.fetchFromGitHub {
      owner = "fedepujol";
      repo = "move.nvim";
      rev = "d663b74b4e38f257aae757541c9076b8047844d6";
      sha256 = "sha256-t1JxAwFZb2IceaVfxgg1JeXYDVmPOFjSr2RMa+BoS1s=";
    };
    meta.homepage = "https://github.com/fedepujol/move.nvim";
  };
  #moveline-nvim = pkgs.vimUtils.buildVimPlugin {
  #  pname = "moveline.nvim";
  #  version = "2023-07-06";
  #  src = pkgs.fetchFromGitHub {
  #      owner = "willothy";
  #      repo = "moveline.nvim";
  #      rev = "570603637be8af20e97b91cf554fef29cab73ca6";
  #      sha256 = "sha256-hq/n48JC1EgJbmb6b/1jQ8MNhbcsJD3wIYaKE1UiU30=";
  #  };
  #  meta.homepage = "https://github.com/willothy/moveline.nvim";
  #};
  part-edit-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "part-edit.nvim";
    version = "2023-07-18";
    src = pkgs.fetchFromGitHub {
      owner = "niuiic";
      repo = "part-edit.nvim";
      rev = "45557dd188d93ec5c4a5486731f553f138a3cc96";
      sha256 = "sha256-pB54ElpTEM/xhhygUvh4f1eFTw4Ynd/fDDvzswQKWp0=";
    };
    meta.homepage = "https://github.com/niuiic/part-edit.nvim";
  };
  spaceport-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "spaceport.nvim";
    version = "2024-01-13";
    src = pkgs.fetchFromGitHub {
      owner = "CWood-sdf";
      repo = "spaceport.nvim";
      rev = "6dd525b282090ef825206bc1bc3df1386f5f2526";
      sha256 = "sha256-2FaAXfGGDhdcYP1HfDg4jk3z4/Eh77Z1oJaox/vnkUc=";
    };
    meta.homepage = "https://github.com/CWood-sdf/spaceport.nvim";
  };
  telescope-alternate-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "telescope-alternate.nvim";
    version = "2024-01-04";
    src = pkgs.fetchFromGitHub {
      owner = "otavioschwanck";
      repo = "telescope-alternate.nvim";
      rev = "89ca203921e4f9282f1e1b72d600077be87d3770";
      sha256 = "sha256-3+mUSYzAAn9XZ+98OdQob2lLNyL5Bh2o3zCn5DC1Gqo=";
    };
    meta.homepage = "https://github.com/otavioschwanck/telescope-alternate.nvim";
  };
  improved-search-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "improved-search.nvim";
    version = "2023-12-21";
    src = pkgs.fetchFromGitHub {
      owner = "backdround";
      repo = "improved-search.nvim";
      rev = "9480bfb0e05f990a1658464c1d349dd2acfb9c34";
      sha256 = "sha256-k35uJZfarjRskS9MgCjSQ3gfl57d+r8vWvw0Uq16Z30=";
    };
    meta.homepage = "https://github.com/backdround/improved-search.nvim";
  };
  highlight-current-n-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "highlight-current-n.nvim";
    version = "2023-06-26";
    src = pkgs.fetchFromGitHub {
      owner = "rktjmp";
      repo = "highlight-current-n.nvim";
      rev = "1225d1ad3fee74c3e6a6d258f25a1952b927cb76";
      sha256 = "sha256-Bel83ytJCgQ6MK4qWKU557b+OI/HdMSriFoqYoCgpzA=";
    };
    meta.homepage = "https://github.com/rktjmp/highlight-current-n.nvim";
  };
  search-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "search.nvim";
    version = "2023-12-04";
    src = pkgs.fetchFromGitHub {
      owner = "FabianWirth";
      repo = "search.nvim";
      rev = "860f7673744e139d00d416d11552533835bfdd2d";
      sha256 = "sha256-lEa7RMzqzGWOFC5mzT7J+HMYmYw12Xym+QhP7HXd2wY=";
    };
    meta.homepage = "https://github.com/FabianWirth/search.nvim";
  };
  nvim-alt-substitute = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-alt-substitute";
    version = "2023-07-28";
    src = pkgs.fetchFromGitHub {
      owner = "chrisgrieser";
      repo = "nvim-alt-substitute";
      rev = "e338393ad7fe742ddeedb3c19996d98707982fd7";
      sha256 = "sha256-tOmhUUG6t7TU49o53ArtFouj6yvujGf3eOHMK6NWT+Q=";
    };
    meta.homepage = "https://github.com/chrisgrieser/nvim-alt-substitute";
  };
  rgflow-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "rgflow.nvim";
    version = "2024-01-04";
    src = pkgs.fetchFromGitHub {
      owner = "mangelozzi";
      repo = "rgflow.nvim";
      rev = "626707af7abac54ac710a85a5a9d8131b2d9728b";
      sha256 = "sha256-6ZPGdlGALZf9q/nuyq3mzk60W/NNRRTyg7qERzRmp8c=";
    };
    meta.homepage = "https://github.com/mangelozzi/rgflow.nvim";
  };
  nvim-rg = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-rg";
    version = "2023-12-02";
    src = pkgs.fetchFromGitHub {
      owner = "duane9";
      repo = "nvim-rg";
      rev = "7774573d9d851145a0ee06116b9405552bd8d0e0";
      sha256 = "sha256-WHcQ4tYRt9jL11n7fTb6JP5Jm5Kfr7ao7Lkqwek0Vko=";
    };
    meta.homepage = "https://github.com/duane9/nvim-rg";
  };
  muren-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "muren.nvim";
    version = "2023-08-26";
    src = pkgs.fetchFromGitHub {
      owner = "AckslD";
      repo = "muren.nvim";
      rev = "818c09097dba1322b2ca099e35f7471feccfef93";
      sha256 = "sha256-KDXytsyvUQVZoKdr6ieoUE3e0v5NT2gf3M1d15aYVFs=";
    };
    meta.homepage = "https://github.com/AckslD/muren.nvim";
  };
  sad-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "sad.nvim";
    version = "2023-03-13";
    src = pkgs.fetchFromGitHub {
      owner = "ray-x";
      repo = "sad.nvim";
      rev = "869c7f3ca3dcd28fd78023db6a7e1bf8af0f4714";
      sha256 = "sha256-uwXldYA7JdZHqoB4qfCnZcQW9YBjlRWmiz8mKb9jHuI=";
    };
    meta.homepage = "https://github.com/ray-x/sad.nvim";
  };
  neocomposer-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "NeoComposer.nvim";
    version = "2023-11-26";
    src = pkgs.fetchFromGitHub {
      owner = "ecthelionvi";
      repo = "NeoComposer.nvim";
      rev = "10cb5b8f04650feb08245ec9bb3418d11dfa077c";
      sha256 = "sha256-7+yYSik0uCylYgu5jVQyvR6amZXXS+ikcYaNtX1MyE0=";
    };
    meta.homepage = "https://github.com/ecthelionvi/NeoComposer.nvim";
  };
  ultimate-autopair-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "ultimate-autopair.nvim";
    version = "2024-01-18";
    src = pkgs.fetchFromGitHub {
      owner = "altermo";
      repo = "ultimate-autopair.nvim";
      rev = "25c13e0ce167db0255456cac10158b27d2be30c0";
      sha256 = "sha256-jOjCAvj9guBPzpr8+GZ0ozsFGyyBbpGsTTE69Ix0XS8=";
    };
    meta.homepage = "https://github.com/altermo/ultimate-autopair.nvim";
  };
  nvim-various-textobjs = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-various-textobjs";
    version = "2024-01-14";
    src = pkgs.fetchFromGitHub {
      owner = "chrisgrieser";
      repo = "nvim-various-textobjs";
      rev = "ca9e6f290c25f6a3168c5dd64b9ef0a8000263d9";
      sha256 = "sha256-iQljtAgxQxef37hCDQIa0nNyLahjpeO8v5SYjVrtj34=";
    };
    meta.homepage = "https://github.com/chrisgrieser/nvim-various-textobjs";
  };
  sentiment-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "sentiment.nvim";
    version = "2023-04-21";
    src = pkgs.fetchFromGitHub {
      owner = "utilyre";
      repo = "sentiment.nvim";
      rev = "ecde8d877881bb78fdb90060c0991e76770dbdbc";
      sha256 = "sha256-0ZpqlaCIfFrcfxdp/9BVXYvwgBXsqazo0isrsYfUYyQ=";
    };
    meta.homepage = "https://github.com/utilyre/sentiment.nvim";
  };
  navigator-lua = pkgs.vimUtils.buildVimPlugin {
    pname = "navigator.lua";
    version = "2023-12-04";
    src = pkgs.fetchFromGitHub {
      owner = "ray-x";
      repo = "navigator.lua";
      rev = "29d5f05bf9094cd0770018e19a27da81c247c503";
      sha256 = "sha256-X4JcfMnnxQeHpOaM+AYFHyHDD0GataxfkNudyfQu7iU=";
    };
    meta.homepage = "https://github.com/ray-x/navigator.lua";
  };
  nvim-regexplainer = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-regexplainer";
    version = "2023-10-15";
    src = pkgs.fetchFromGitHub {
      owner = "bennypowers";
      repo = "nvim-regexplainer";
      rev = "78fff711edcb986a05a03253c28a90e32c4ce31f";
      sha256 = "sha256-B65k8i2gBPaXvZS1HiI3Mk4UuHbW0QQyYci7HLaPN6I=";
    };
    meta.homepage = "https://github.com/bennypowers/nvim-regexplainer";
  };
  quicknote-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "quicknote.nvim";
    version = "2023-10-13";
    src = pkgs.fetchFromGitHub {
      owner = "RutaTang";
      repo = "quicknote.nvim";
      rev = "530ee1f74b0ef191a3a8110b5f9d4bdffc7bfd6c";
      sha256 = "sha256-WVS7OUMeb2At+6THVvdbrW0JoKQaA7nIXg9JOaamUd4=";
    };
    meta.homepage = "https://github.com/RutaTang/quicknote.nvim";
  };
  carbon-now-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "carbon-now.nvim";
    version = "2023-11-11";
    src = pkgs.fetchFromGitHub {
      owner = "ellisonleao";
      repo = "carbon-now.nvim";
      rev = "16e843489ba00493466170919abfe144fc9aa158";
      sha256 = "sha256-f41SJMhHqc6Ttd9WWntuw1imE5XHMuVriAP65rVasqY=";
    };
    meta.homepage = "https://github.com/ellisonleao/carbon-now.nvim";
  };
  hydrovim = pkgs.vimUtils.buildVimPlugin {
    pname = "hydrovim";
    version = "2023-05-07";
    src = pkgs.fetchFromGitHub {
      owner = "smzm";
      repo = "hydrovim";
      rev = "509516bd99fa41f707f86e46f56e0d605290a6b5";
      sha256 = "sha256-n4CFY+VxbBAi26tmlITQqQkhdVmkBJdxXuxXEryuJgg=";
    };
    meta.homepage = "https://github.com/smzm/hydrovim";
  };
  jupyter-kernel-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "jupyter-kernel.nvim";
    version = "2023-10-24";
    src = pkgs.fetchFromGitHub {
      owner = "lkhphuc";
      repo = "jupyter-kernel.nvim";
      rev = "5772fa8932f2c73736a777082656f1bfe0287076";
      sha256 = "sha256-kixjgaAS6jk4DJw8EbG4aebtFxqp0Ibx3rtOCwO9Xi4=";
    };
    meta.homepage = "https://github.com/lkhphuc/jupyter-kernel.nvim";
  };
  jupytext-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "jupytext.nvim";
    version = "2024-01-03";
    src = pkgs.fetchFromGitHub {
      owner = "GCBallesteros";
      repo = "jupytext.nvim";
      rev = "6c9a8721bb24ffc3845632f22aa32b4cfe7ac814";
      sha256 = "sha256-8GSAjbABpVX+WSXVqVqrEY38rxlpFDmP3UNsVT/TKLg=";
    };
    meta.homepage = "https://github.com/GCBallesteros/jupytext.nvim";
  };
  /*
  nvim-ipy = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-ipy";
    version = "2021-09-23";
    src = pkgs.fetchFromGitHub {
        owner = "bfredl";
        repo = "nvim-ipy";
        rev = "50a938a7b24a327dd72284e11a5405875917f29b";
        sha256 = "sha256-/XI0O8RPwK/bRMldQ9HCcesmKg7bSsxYsTHaSWwn5eY=";
    };
    meta.homepage = "https://github.com/bfredl/nvim-ipy";
  };
  */
  swenv-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "swenv.nvim";
    version = "2023-12-13";
    src = pkgs.fetchFromGitHub {
      owner = "AckslD";
      repo = "swenv.nvim";
      rev = "a4414ba79a1c4fa6a205049a9b1ada42c2987d2c";
      sha256 = "sha256-+TGR+RyX3bk3ZZFjNOiB+kHDEAB3v7QfG7UGU11nqsU=";
    };
    meta.homepage = "https://github.com/AckslD/swenv.nvim";
  };
  f-string-toggle-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "f-string-toggle.nvim";
    version = "2023-09-09";
    src = pkgs.fetchFromGitHub {
      owner = "roobert";
      repo = "f-string-toggle.nvim";
      rev = "4e2ad79dfc5122dd65515ebbdd671e8ee01d157e";
      sha256 = "sha256-IMMq4cklHxrhfHALcCamMWT4ekBqOMtkiAUXh8YlaM0=";
    };
    meta.homepage = "https://github.com/roobert/f-string-toggle.nvim";
  };
  nvim-luaref = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-luareg";
    version = "2022-02-17";
    src = pkgs.fetchFromGitHub {
      owner = "milisims";
      repo = "nvim-luaref";
      rev = "9cd3ed50d5752ffd56d88dd9e395ddd3dc2c7127";
      sha256 = "sha256-nmsKg1Ah67fhGzevTFMlncwLX9gN0JkR7Woi0T5On34=";
    };
    meta.homepage = "https://github.com/milisims/nvim-luaref";
  };
  codegpt-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "codegpt.nvim";
    version = "2023-05-01";
    src = pkgs.fetchFromGitHub {
      owner = "dpayne";
      repo = "CodeGPT.nvim";
      rev = "6e3714e8d336aea4a205081d44ed8b2e3505dee2";
      sha256 = "sha256-JpZJz4ZmbL+tfYUSOQ9K7YUld7zTzAI11fw9sRaJzPA=";
    };
    meta.homepage = "https://github.com/dpayne/CodeGPT.nvim";
  };
  taskwarrior-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "taskwarrior.nvim";
    version = "2023-12-14";
    src = pkgs.fetchFromGitHub {
      owner = "ribelo";
      repo = "taskwarrior.nvim";
      rev = "d0a61b6d07fec0e187a4a788b85493af1cd7c455";
      sha256 = "sha256-znxx39dsHS4KPqNypnbefNDidpM5CSJE/HUYxLJth8w=";
    };
    meta.homepage = "https://github.com/ribelo/taskwarrior.nvim";
  };
  xit-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "xit.nvim";
    version = "2023-12-30";
    src = pkgs.fetchFromGitHub {
      owner = "synaptiko";
      repo = "xit.nvim";
      rev = "77efad3f6569790c8d3aad9a19a811dde8a96830";
      sha256 = "sha256-hlK1WaFe8dpSZGHO9w+TNdtfPCksTHLR17Q27+LH4bU=";
    };
    meta.homepage = "https://github.com/synaptiko/xit.nvim";
  };
  core-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "core.nvim";
    version = "2023-10-12";
    src = pkgs.fetchFromGitHub {
      owner = "niuiic";
      repo = "core.nvim";
      rev = "e6aeba879abb3026db26eca863858e3801c87e94";
      sha256 = "sha256-oIxsND49xgmGKas7Id3F7vdsd5abDuUnqu6V5SBItE4=";
    };
    meta.homepage = "https://github.com/niuiic/core.nvim";
  };
}
