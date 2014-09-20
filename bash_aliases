alias ls='ls --color=auto -X --group-directories-first'

function cs () {
    cd "$@" && ls
}

alias cl='clear && ls'
