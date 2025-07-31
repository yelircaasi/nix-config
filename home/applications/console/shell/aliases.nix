{
  lib,
  g,
  deviceConfig,
}: let
  git = "{pkgs.git}";
in
  g.selectSetsViaConsoleSet deviceConfig {
    minimal = rec {
      ls = "${pkgs.eza}/bin/eza";
      ll = "${ls} -l";

      ls-legacy = "${pkgs.coreutils}/bin/ls";

      c = "clear";
      cs = "/home/isaac/consilium/.venv/bin/consilium";
      # consilium = "/home/isaac/consilium/.venv/bin/consilium";
      g = "git status";
      ga = "git add .";
      gs = "git status";
      gcm = "git commit -m";
      alej = "alejandra .";

      py = "${pkgs.python313}/bin/python313";

      # cudaenv = "docker run --gpus all -it --rm --dns 8.8.8.8 --dns 8.8.4.4 --name nlq -v /home/isaac/repos:/root/repos -v /home/isaac/data:/root/data -v /home/isaac/.ssh:/root/.ssh -v /home/isaac/.config/pypoetry:/root/.config/pypoetry -v /home/isaac/.cache/torch:/root/.cache/torch -v /home/isaac/.cache/huggingface:/root/.cache/huggingface nvidia:poetry";
    };
    core = {
      julia = "${pkgs.julia}/bin/julia";
    };
    extended = {
      raku = "${pkgs.raku}/bin/raku";
    };
  }
