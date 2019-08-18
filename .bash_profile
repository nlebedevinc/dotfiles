# Run tmux for each terminal inctance
[[ $TERM != "screen" ]] && exec tmux

# set ll command for mac os
alias ll='ls -lG'

# Terminal colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'