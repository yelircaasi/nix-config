{ pkgs, lib }:
{
  py-lsp-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "py-lsp-nvim";
    version = "v0.0.2";
    src = pkgs.fetchFromGitHub {
        owner = "HallerPatrick";
        repo = "py_lsp.nvim";
        rev = "5b2bd6433a2dbab76d54d58ccc1d1e89b220091c";
        sha256 = "sha256-YOYrumIYlWcZBL1LSeBWseb/0G4n8obcll6wPwaXqpM=";
    };
    meta.homepage = "https://github.com/sheoak/vim-bepoptimist";
    };
  schwarzwald = pkgs.vimUtils.buildVimPlugin {
    pname = "schwarzwald";
    version = "v0.0.0";
    src = pkgs.fetchFromGitHub {
        owner = "yelircaasi";
        repo = "schwarzwald.nvim";
        rev = "fa299519a6144aec9cc9bcb5cbccf57f5d3346a8";
        sha256 = "sha256-ExkaZstOiGua9Cnpans3YQB91Ek7YxRSCtGYrVAU9yM=";
  };
    meta.homepage = "https://github.com/yelircaasi/schwarzwald.nvim";
    };
  bamboo = pkgs.vimUtils.buildVimPlugin {
    pname = "bamboo";
    version = "v0.0.0";
    src = pkgs.fetchFromGitHub {
        owner = "ribru17";
        repo = "bamboo.nvim";
        rev = "934d2224f60ed61820a35f091f35486fca4f529f";
        sha256 = "sha256-7u+vLrFkK5Ck7hTt6By5TsdmR7d/HLfp9cU+h1qINyM=";
    };
    meta.homepage = "https://github.com/ribru17/bamboo.nvim";
  };
  none-ls = pkgs.vimUtils.buildVimPlugin {
    pname = "none-ls.nvim";
    version = "2023-12-22";
    src = pkgs.fetchFromGitHub {
        owner = "nvimtools";
        repo = "none-ls.nvim";
        rev = "e7382de51b4cf629e56f1fa18192e716e5ba8145";
        sha256 = "sha256-XvOLC4N/fcoKQcpQXecwDJSAfF4z9pkszMjoMtWldNY=";
    };
    meta.homepage = "https://github.com/nvimtools/none-ls.nvim/";
  };
#   XXX = pkgs.vimUtils.buildVimPlugin {
#     pname = "";
#     version = "";
#     src = pkgs.fetchFromGitHub {
#         owner = "";
#         repo = "";
#         rev = "";
#         sha256 = "";
#     };
#     meta.homepage = "";
#   };
}
# {
#   vim-bepoptimist = pkgs.vimUtils.buildVimPlugin rec {
#     pname = "vim-bepoptimist";
#     version = "v2.1.1";
#     src = pkgs.fetchFromGitHub {
#         owner = "vegaelle";
#         repo = "vim-bepoptimist";
#         rev = "${version}";
#         sha256 = "1nmpvnqlw4y2g1ki33nbj74vdnaxnaqshqv3238zxgvps44y3mw5";
#     };
#     meta.homepage = "https://github.com/sheoak/vim-bepoptimist";
#     };

#   nvim-base16 = pkgs.vimUtils.buildVimPlugin rec {
#     pname = "nvim-base16";
#     version = "2022-05-27";
#     src = pkgs.fetchFromGitHub {
#         owner = "RRethy";
#         repo = "nvim-base16";
#         rev = "d8c6c19d87b2d8489bb4bbc532c5036c843e2fd9";
#         sha256 = "R0TAahwbCZW5PQiKw6kKv4xFAhp/KAaPV3xOVvrTqM4=";
#     };
#     meta.homepage = "https://github.com/norcalli/nvim-base16";
#     }
# ;

#   neoscroll-nvim = pkgs.vimUtils.buildVimPlugin rec {
#     pname = "neoscroll-nvim";
#     version = "2022-06-16";
#     src = pkgs.fetchFromGitHub {
#         owner = "karb94";
#         repo = "neoscroll.nvim";
#         rev = "71c8fadd60362383e5e817e95f64776f5e2737d8";
#         sha256 = "0OaoqN9kmS2AAEKM+cfzLjPwgD0j5P+bmBlblmsbkvU=";
#     };
#     meta.homepage = "https://github.com/karb94/neoscroll.nvim";
#     };

#   zenmode-nvim = pkgs.vimUtils.buildVimPlugin rec {
#     pname = "zenmode-nvim";
#     version = "2021-11-07";
#     src = pkgs.fetchFromGitHub {
#         owner = "folke";
#         repo = "zen-mode.nvim";
#         rev = "f1cc53d32b49cf962fb89a2eb0a31b85bb270f7c";
#         sha256 = "1fxkrny1xk69w8rlmz4x5msvqb8i8xvvl9csndpplxhkn8wzirdp";
#     };
#     meta.homepage = "https://github.com/folke/zen-mode.nvim";
#     };

#     indent-blankline-nvim = pkgs.vimUtils.buildVimPlugin rec {
#       pname = "indent-blankline-nvim";
#       version = "2.18.4";
#       src = pkgs.fetchFromGitHub {
#         owner = "lukas-reineke";
#         repo = "indent-blankline.nvim";
#         rev = "6177a59552e35dfb69e1493fd68194e673dc3ee2";
#         sha256 = "V020Sd2AcbEUvlnXffCDFBgVZnHCVUO16bfKJNn6Xq8=";
#       };
#       meta.homepage = "https://github.com/lukas-reineke/indent-blankline.nvim";
#     };

#     keymap-layer-nvim = pkgs.vimUtils.buildVimPlugin rec {
#       pname = "keymap-layer-nvim";
#       version = "2022-06-23";
#       src = pkgs.fetchFromGitHub {
#         owner = "anuvyklack";
#         repo = "keymap-layer.nvim";
#         rev = "f45540bdc435a0627467cbf5255fb2eba416b732";
#         sha256 = "RTY1CvqxjAOHWwuTRbV6MTQUnK58ppBeXQCobc5K/rk=";
#       };
#       meta.homepage = "https://github.com/anuvyklack/keymap-layer.nvim";
#     };

#     hydra-nvim = pkgs.vimUtils.buildVimPlugin rec {
#       pname = "hydra-nvim";
#       version = "2022-06-25";
#       src = pkgs.fetchFromGitHub {
#         owner = "anuvyklack";
#         repo = "hydra.nvim";
#         rev = "249a19a4c95b9d0602918623a476196bf6956d5f";
#         sha256 = "zlbYKweWaERamQDJGX2sjiKd2DTCfbR9sbfjvRtmDBU=";
#       };
#       meta.homepage = "https://github.com/anuvyklack/hydra.nvim";
#     };
# }

