{pkgs, ...}: {
    home.packages = with pkgs; [
        # adhoc.file-sorter-x
        # adhoc.antidot
        xdg-ninja

        # deduplication, linting
        backdown
        fclones
        rmlint

        # metadata cleanup
        mat2

        # file sorting
        # adhoc.organize-rt

        # symbolic links
        symlinks

        # file tagging
        tmsu
    ]
}