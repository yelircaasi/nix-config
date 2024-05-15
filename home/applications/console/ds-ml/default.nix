{pkgs, ...}: {
  home.packages = with pkgs.python311Packages; [
    torchWithCuda
    # transformers
    # tensorflowWithCuda # still need to build overnight
  ];
}
