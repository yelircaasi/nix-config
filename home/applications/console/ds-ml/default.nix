{
  pkgs,
  g,
  deviceConfig,
  ...
}: {
  home.packages = with pkgs.python313Packages; [
    torchWithCuda
    # transformers
    # tensorflowWithCuda # still need to build overnight
  ];
}
