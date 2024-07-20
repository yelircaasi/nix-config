{pkgs, ...}: {
  home.packages = with pkgs; [
    pandoc
    remarshal
    dasel
    
    toml2nix
    regex2json
    
  ];
}
