nvim --headless -c "redir > $1" -c "verbose com" -c "redir END" -c "q"

#:redir > ~/nixos-config/keybindings/nvim-mappings.txt!
#:verbose map
#:redir END

