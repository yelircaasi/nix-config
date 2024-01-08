# single-key aliases
alias c="clear"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# common commands
alias chog="sudo chown -R isaac . & sudo chgrp -R isaac . "

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias vim="nvim"
alias vi="/usr/bin/vimi.tiny"
alias rezsh="source ~/.zshrc"
alias zshrc="nvim ~/.zshrc"
alias i3c="nvim ~/.config/i3/config"
alias i3cc="code ~/.config/i3/config"
alias strshp="nvim ~/.config/starship.toml"
alias wztrm="nvim ~/.config/wezterm/wezterm.lua"
# docker aliases
alias dri="docker run $DOCKER_OPTS"
alias dric="docker run --runtime=nvidia --gpus=all $DOCKER_OPTS"
alias dockerlsi="docker image list -f \"dangling=false\""
alias dockerrmdi="docker rmi $(docker images -f "dangling=true" -q)"

alias py8env="docker run $DOCKER_OPTS \
    --name pybuntu8 \
    -v /home/isaac/Knecon:/root/Knecon \
    -v /home/isaac/.ssh:/root/.ssh \
    pybuntu:8"

alias py11env="docker run $DOCKER_OPTS \
    --name pybuntu11 \
    -v /home/isaac/Learning:/root/Learning \
    -v /home/isaac/.ssh:/root/.ssh \
    pybuntu:11"

alias notionenv="docker run $DOCKER_OPTS \
    --name notion \
    -v /home/isaac/Learning/notion-extensions:/root/notion-extensions \
    -v /home/isaac/.mozilla:/root/.mozilla \
    notion:latest"
# --rm --dns 8.8.8.8 --dns 8.8.4.4"

alias notionupdate="docker run $DOCKER_OPTS \
    --name notion \
    -v /home/isaac/Learning/notion-extensions:/root/notion-extensions \
    -v /home/isaac/.mozilla:/root/.mozilla \
    notion:latest bash -c '/root/notion-extensions/.venv/bin/python /root/notion-extensions/src/notion_extensions/schedule_automation/update.py'"

alias commonsenv="docker run $DOCKER_OPTS \
    --name 'commons' \
    -v $HOME/dockermounts/commonsenv-mnt:$HOME/dockermounts/commonsenv-mnt \
    -v /home/isaac/Knecon/commons:/root/Knecon/commons \
    -v /home/isaac/.config/pypoetry:/root/.config/pypoetry \
    pybuntu:8"

alias nlqenv="docker run --runtime=nvidia --gpus all $DOCKER_OPTS \
    --name 'nlq' \
    -v $HOME/dockermounts/nlqenv-mnt:$HOME/dockermounts/nlqenv-mnt \
    -v /home/isaac/Knecon/instantli/nlq:/root/nlq \
    -v /home/isaac/Knecon/data/nlq:/root/data \
    -v /home/isaac/.ssh:/root/.ssh \
    -v /home/isaac/.config/pypoetry:/root/.config/pypoetry \
    -v /home/isaac/.cache/torch:/root/.cache/torch \
    -v /home/isaac/.cache/huggingface:/root/.cache/huggingface \
    nlq-dev"

alias cvenv="docker run --runtime=nvidia --gpus all $DOCKER_OPTS \
    --name 'cv' \
    -v $HOME/dockermounts/cvenv-mnt:$HOME/dockermounts/cvenv-mnt \
    -v /home/isaac/Learning/document-image-deskewing:/root/deskew \
    -v /home/isaac/Knecon/commons:/root/commons \
    -v /home/isaac/Knecon/cv:/root/cv \
    -v /home/isaac/Knecon/data:/root/data \
    -v /home/isaac/.ssh:/root/.ssh \
    -v /home/isaac/.config/pypoetry:/root/.config/pypoetry \
    -v /home/isaac/.cache/torch:/root/.cache/torch \
    -v /home/isaac/.cache/huggingface:/root/.cache/huggingface \
    cv-base:latest"

alias tf2env="docker run --runtime=nvidia --gpus all $DOCKER_OPTS \
    --name ''tf' \
    -v $HOME/dockermounts/cvenv-mnt:$HOME/dockermounts/cvenv-mnt \
    -v /home/isaac/Learning/document-image-deskewing:/root/deskew \
    -v /home/isaac/Knecon/commons:/root/commons \
    -v /home/isaac/Knecon/cv:/root/cv \
    -v /home/isaac/Knecon/data:/root/data \
    -v /home/isaac/.ssh:/root/.ssh \
    -v /home/isaac/.config/pypoetry:/root/.config/pypoetry \
    -v /home/isaac/.cache/torch:/root/.cache/torch \
    -v /home/isaac/.cache/huggingface:/root/.cache/huggingface \
    tf2:latest"


alias nlqcode="nlqenv & ; code /home/isaac/Knecon/instantli/nlq/.vscode/nlq.code-workspace"
alias cudaenv="docker run --runtime=nvidia --gpus=all $DOCKER_OPTS \
    --name 'cuda' \
    -v /tmp/cudaenv-tmp:/tmp/cudaenv-tmp \
    -v /home/isaac/Knecon:/root/Knecon \
    nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04"
alias pycudaenv="docker run --runtime=nvidia --gpus=all $DOCKER_OPTS \
    --name 'pycuda' \
    -v $HOME/dockermounts/pycudaenv-mnt:/root/pycudaenv-mnt \
    -v /home/isaac/Knecon:/root/Knecon \
    pycuda"
#alias puenv="mkdir -p /tmp/puenv-tmp && docker run $DOCKER_OPTS -v /tmp/puenv-tmp:/tmp/puenv-tmp pybuntu"
alias zshalias="nvim $HOME/.config/zsh/aliases.zsh"
alias zshvar="nvim $HOME/.config/zsh/variables.zsh"
alias zshfunc="nvim $HOME/.config/zsh/functions.zsh"
alias zshprompt="nvim $HOME/.config/zsh/prompt.zsh"


~/.config isaac in 🌐 stellaris15 in 
❯ cacat zsh/functions.zsh 
cl() {
    cd $1 && ls $2 $3
}

nei() {
    nix-env -iA "nixpkgs.$1"
}

nei_() {
    nix-env -iA "$1"
}

greppath() {
  for x_ in $(echo $PATH | tr : '\n')
  do 
    found_=$(ls $x_ )
    [[ -n $found_ ]] && y_=$(echo $found_ | grep $1)
    [[ -n $y_ ]] && echo "\n\n\033[0;34m$x_ \033[0m"
    [[ -n $y_ ]] && echo "\t$y_" | sed -z 's/\n/\n\t/g'
  done
  echo ""
}

greppaths() {
  for x_ in $(echo $1 | tr : '\n')
  do 
    found_=$(ls $x_ )
    [[ -n $found_ ]] && y_=$(echo $found_ | grep $2)
    [[ -n $y_ ]] && echo "\n\n\033[0;34m$x_ \033[0m"
    [[ -n $y_ ]] && echo "\t$y_" | sed -z 's/\n/\n\t/g'
  done
  echo ""
}