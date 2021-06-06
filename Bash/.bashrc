# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export PATH
export EDITOR=nvim
export TERM=alacritty
export VISUAL=nvim

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#Completion Plugin
if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion]; then
    source /etc/bash_completion
fi

#PS1 Prompt
AfterUsername=
OS_Icon=
PS1='\[\033[01;31m\]\u\[\033[1;36m\]$AfterUsername\[\033[1;35m\]\h\[\033[01;34m\] \W \$\[\033[1;32m\] '

#Man Pages Color
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# User specific aliases and functions
alias sdf='ssh citizensixtynine@tty.sdf.org'
alias ls='exa --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ..='cd ..'
alias mv='mv -i'
alias rm='rm -i'
alias gc='git clone'
