{pkgs, ...}: {
  home.packages = with pkgs.python312Packages; [
    torchWithCuda
    # transformers
    # tensorflowWithCuda # still need to build overnight
  ];
}
