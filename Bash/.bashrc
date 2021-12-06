# .bashrc

# Kris's .bashrc file - part of the Dotto collection!

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# ECP (Exit Confirm Prompt)
exit() {
    read -t5 -n1 -p "Are you SURE that you want to quit? [y/n] " exitYes || exitYes=y
    case $exitYes in
        [yes] ) builtin exit $1 ;;
    * ) printf "\n" ;;
    esac
}

# Exports and PATH shit
export PATH
export EDITOR="nvim"
export TERM="gnome-terminal"
export VISUAL="nvim"

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# Bash Completion Integration
if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi


# PS1 Prompt (too lazy to fix and i use starship so suck it)
PS1=" \[\033[1;34m\][\033[0m\] "

# Man Pages Colours
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# General Aliases
alias ls='exa --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ..='cd ..'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias ex='exit'

# Git Aliases (although I use GitKraken)
alias gl='git pull'
alias gc='git clone'
alias gp='git push'
alias gcm='git commit -m'

# Misc Aliases
alias vim='nvim'

# Starship Init
eval "$(starship init bash)"