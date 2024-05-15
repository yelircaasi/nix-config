{pkgs, ...}: {
    home.packages = with pkgs; [
        # calculation
        libqalculate
        programmer-calculator
        kalk
        eva

        # conversion
        units
        
        # miscellaneous dev tools
        dtool

        # date
        dateutils
        
        # binary calculation
        bitwise
        bcal
    ]
}