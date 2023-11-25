#export PATH="$PATH:/home/isaac/.local/bin"
#source /home/isaac/.local/bin/twoscreen 

if [ -f "$HOME/.config/zsh/variables.zsh" ]; then
    source "$HOME/.config/zsh/variables.zsh"
fi

if [ -f "$HOME/.config/zsh/aliases.zsh" ]; then
    source "$HOME/.config/zsh/aliases.zsh"
fi

if [ -f "$HOME/.config/zsh/functions.zsh" ]; then
    source "$HOME/.config/zsh/functions.zsh"
fi


if [ -f "$HOME/.config/zsh/prompt.zsh" ]; then
    source "$HOME/.config/zsh/prompt.zsh"
fi

# Lines configured by zsh-newuser-install
setopt autocd nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/isaac/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#mkdir -p /tmp/nlqenv-tmp
#mkdir -p /tmp/cudaenv-tmp

if [ -e /home/isaac/.nix-profile/etc/profile.d/nix.sh ]; then . /home/isaac/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

eval "$(starship init zsh)"

if command -v zoxide > /dev/null; then
  eval "$(zoxide init zsh)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# Source the Lazyman shell initialization for aliases and nvims selector
# shellcheck source=.config/nvim-Lazyman/.lazymanrc
[ -f ~/.config/nvim-Lazyman/.lazymanrc ] && source ~/.config/nvim-Lazyman/.lazymanrc
# Source the Lazyman .nvimsbind for nvims key binding
# shellcheck source=.config/nvim-Lazyman/.nvimsbind
[ -f ~/.config/nvim-Lazyman/.nvimsbind ] && source ~/.config/nvim-Lazyman/.nvimsbind

# vi
alias vi="/usr/bin/vim.tiny"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Restart your shell for the changes to take effect.

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:

eval "$(pyenv virtualenv-init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/isaac/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/isaac/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/isaac/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/isaac/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/isaac/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/home/isaac/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<
conda config --set changeps1 False