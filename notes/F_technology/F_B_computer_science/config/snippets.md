# Snippets

## Shell.nix

```nix
let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = with pkgs; [
      (python3.withPackages (
    ps: with ps; [
      numpy
      odfpy
      pandas
    ]
      ))
      jupyter
    ];
  }
```

```nix
neovim.package = neovim-nightly.override {
configure = {
packages.myPlugins = with pkgs.vimPlugins; {
start = [
vim-go # already packaged plugin

easygrep # custom package
];
opt = [];
};};

```
* snippet sudo docker run --runtime=nvidia --gpus all -it --rm --dns 8.8.8.8 --dns 8.8.4.4 \ --name nlq \ -v /home/isaac/repos:/root/repos \ -v /home/isaac/data:/root/data \ -v /home/isaac/.ssh:/root/.ssh \ -v /home/isaac/.config/pypoetry:/root/.config/pypoetry \ -v /home/isaac/.cache/torch:/root/.cache/torch \ -v /home/isaac/.cache/huggingface:/root/.cache/huggingface \ nvidia:poetry
snippet1 Dockerfile
snippet2 FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04
snippet3 RUN apt update && apt upgrade && apt install python3 python3-pip
snippet4 RUN python3 -m pip install poetry
snippet7 warning: The option services.xserver.xkbVariant' defined in /nix/store/jybfs22ypnkjqk9hrszazkns8l4kc3yp-source/nixos/hank-configuration.nix' has been renamed to services.xserver.xkb.variant'. trace: warning: The option services.xserver.layout' defined in /nix/store/jybfs22ypnkjqk9hrszazkns8l4kc3yp-source/nixos/hank-configuration.nix' has been renamed to services.xserver.xkb.layout'.
snippet: alias cudaenv="sudo docker run --runtime=nvidia --gpus all -it --rm --dns 8.8.8.8 --dns 8.8.4.4 \ --name 'nlq' \ -v $HOME/dockermounts/nlq-mnt:$HOME/dockermounts/nlq-mnt \ -v /home/isaac/repos:/root/repos \ -v /home/isaac/data:/root/data \ -v /home/isaac/.ssh:/root/.ssh \ -v /home/isaac/.config/pypoetry:/root/.config/pypoetry \ -v /home/isaac/.cache/torch:/root/.cache/torch \ -v /home/isaac/.cache/huggingface:/root/.cache/huggingface \ nvidia:poetry"
