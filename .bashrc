source ~/.git-completion.sh

bind '"\C-i": menu-complete'

alias ls='ls -F --color=tty --show-control-chars --group-directories-first'
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
alias vr='vim -R'
alias vd='vimdiff'
alias c='cvs'
alias f='find'

# TODO: add ~/bin to $PATH
alias gj='~/bin/gj'
alias check_dep='~/bin/check_dep.py'

alias st='exec /opt/setup_toolchain.sh'

export EDITOR='vim'

GITPS1='$(__git_ps1 "%s")'
export PS1="\[\e[1;33m\]\h [\@] <\w> -\u-\[\e[m\]\n\[\e[1;37m\]${GITPS1}$\[\e[m\] "

# Colorful man page
#export PAGER='less'
#export LESS_TERMCAP_mb=$'\E[0;32m'
#export LESS_TERMCAP_md=$'\E[0;32m'
#export LESS_TERMCAP_me=$'\E[0m'
#export LESS_TERMCAP_se=$'\E[0m'
#export LESS_TERMCAP_so=$'\E[0;44;33m'
#export LESS_TERMCAP_ue=$'\E[0m'
#export LESS_TERMCAP_us=$'\E[0;33m'

export MANPAGER="/bin/sh -c \"unset PAGER;col -b -x | \
                 vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
                 -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
                 -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

ulimit -c unlimited
