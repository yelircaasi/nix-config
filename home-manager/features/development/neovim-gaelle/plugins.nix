{ pkgs, lib }:

{
  vim-bepoptimist = pkgs.vimUtils.buildVimPlugin rec {
    pname = "vim-bepoptimist";
    version = "v2.1.1";
    src = pkgs.fetchFromGitHub {
        owner = "vegaelle";
        repo = "vim-bepoptimist";
        rev = "${version}";
        sha256 = "1nmpvnqlw4y2g1ki33nbj74vdnaxnaqshqv3238zxgvps44y3mw5";
    };
    meta.homepage = "https://github.com/sheoak/vim-bepoptimist";
    };

  nvim-base16 = pkgs.vimUtils.buildVimPlugin rec {
    pname = "nvim-base16";
    version = "2022-05-27";
    src = pkgs.fetchFromGitHub {
        owner = "RRethy";
        repo = "nvim-base16";
        rev = "d8c6c19d87b2d8489bb4bbc532c5036c843e2fd9";
        sha256 = "R0TAahwbCZW5PQiKw6kKv4xFAhp/KAaPV3xOVvrTqM4=";
    };
    meta.homepage = "https://github.com/norcalli/nvim-base16";
    }
;

  neoscroll-nvim = pkgs.vimUtils.buildVimPlugin rec {
    pname = "neoscroll-nvim";
    version = "2022-06-16";
    src = pkgs.fetchFromGitHub {
        owner = "karb94";
        repo = "neoscroll.nvim";
        rev = "71c8fadd60362383e5e817e95f64776f5e2737d8";
        sha256 = "0OaoqN9kmS2AAEKM+cfzLjPwgD0j5P+bmBlblmsbkvU=";
    };
    meta.homepage = "https://github.com/karb94/neoscroll.nvim";
    };

  zenmode-nvim = pkgs.vimUtils.buildVimPlugin rec {
    pname = "zenmode-nvim";
    version = "2021-11-07";
    src = pkgs.fetchFromGitHub {
        owner = "folke";
        repo = "zen-mode.nvim";
        rev = "f1cc53d32b49cf962fb89a2eb0a31b85bb270f7c";
        sha256 = "1fxkrny1xk69w8rlmz4x5msvqb8i8xvvl9csndpplxhkn8wzirdp";
    };
    meta.homepage = "https://github.com/folke/zen-mode.nvim";
    };

    indent-blankline-nvim = pkgs.vimUtils.buildVimPlugin rec {
      pname = "indent-blankline-nvim";
      version = "2.18.4";
      src = pkgs.fetchFromGitHub {
        owner = "lukas-reineke";
        repo = "indent-blankline.nvim";
        rev = "6177a59552e35dfb69e1493fd68194e673dc3ee2";
        sha256 = "V020Sd2AcbEUvlnXffCDFBgVZnHCVUO16bfKJNn6Xq8=";
      };
      meta.homepage = "https://github.com/lukas-reineke/indent-blankline.nvim";
    };

    keymap-layer-nvim = pkgs.vimUtils.buildVimPlugin rec {
      pname = "keymap-layer-nvim";
      version = "2022-06-23";
      src = pkgs.fetchFromGitHub {
        owner = "anuvyklack";
        repo = "keymap-layer.nvim";
        rev = "f45540bdc435a0627467cbf5255fb2eba416b732";
        sha256 = "RTY1CvqxjAOHWwuTRbV6MTQUnK58ppBeXQCobc5K/rk=";
      };
      meta.homepage = "https://github.com/anuvyklack/keymap-layer.nvim";
    };

    hydra-nvim = pkgs.vimUtils.buildVimPlugin rec {
      pname = "hydra-nvim";
      version = "2022-06-25";
      src = pkgs.fetchFromGitHub {
        owner = "anuvyklack";
        repo = "hydra.nvim";
        rev = "249a19a4c95b9d0602918623a476196bf6956d5f";
        sha256 = "zlbYKweWaERamQDJGX2sjiKd2DTCfbR9sbfjvRtmDBU=";
      };
      meta.homepage = "https://github.com/anuvyklack/hydra.nvim";
    };
}

