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
