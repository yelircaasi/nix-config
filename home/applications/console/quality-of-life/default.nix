{pkgs, ...}: {
    home.packages = with pkgs; [
        # dashboard
        wtf

        # help
        thefuck
        
    ]
}