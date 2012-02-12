bind '"\C-i": menu-complete'

alias ls='ls -F --color=tty --show-control-chars'
alias cls='/usr/bin/clear'
alias h='history 100'
alias cp='/bin/cp -i'
alias mv='/bin/mv -i'
alias rm='/bin/rm -i'
alias sr='screen -r'
alias grep='grep --color=tty -d skip'

alias g='git'
alias s='ssh'
alias v='vim'
alias vd='vimdiff'
alias c='cvs'
alias f='find'

alias st='exec /opt/setup_toolchain.sh'

export EDITOR='vim'
export PAGER='less'
export PS1="\[\e[1;33m\]\h [\@] <\w> -\u-\[\e[m\]\n\[\e[1;37m\]$\[\e[m\] "

# Colorful man page
export LESS_TERMCAP_mb=$'\E[0;32m'
export LESS_TERMCAP_md=$'\E[0;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[0;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[0;33m'

ulimit -c unlimited
