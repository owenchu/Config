source ~/.git-completion.sh

bind '"\C-i": menu-complete'

#alias ls='ls -F --color=tty --show-control-chars --group-directories-first'
alias ls='ls -F'
alias cdg='cd "$(git rev-parse --show-toplevel)"'
alias cls='/usr/bin/clear'
alias cp='/bin/cp -i'
alias h='history 100'
alias mv='/bin/mv -i'
alias rm='/bin/rm -i'
alias sr='screen -r'
alias grep='grep --color=tty -d skip'

alias g='git'
alias m='meteor'
alias s='scons'
alias v='vim'
alias vr='vim -R'
alias vd='vimdiff'
alias f='find'
alias r='rails'

PATH=$PATH:~/Android/android-sdk-macosx/tools:~/Android/android-sdk-macosx/platform-tools
PATH=$PATH:/Users/owenchu/.apportable/SDK/bin
PATH=$PATH:/usr/local/share/npm/bin

export EDITOR='vim'

GITPS1='$(__git_ps1 "%s")'
export PS1="\[\e[1;33m\]\h [\@] <\w> -\u-\[\e[m\]\n\[\e[1;37m\]${GITPS1}$\[\e[m\] "

export MAKEOBJDIRPREFIX=$HOME/Source/globaltags
alias maketags='mkdir -p $MAKEOBJDIRPREFIX/$(pwd -P) && gtags -i $MAKEOBJDIRPREFIX/$(pwd -P)'
alias maketags_cpp='GTAGSFORCECPP=1 $(maketags)'

# Colorful man page
#export PAGER='less'
#export LESS_TERMCAP_mb=$'\E[0;32m'
#export LESS_TERMCAP_md=$'\E[0;32m'
#export LESS_TERMCAP_me=$'\E[0m'
#export LESS_TERMCAP_se=$'\E[0m'
#export LESS_TERMCAP_so=$'\E[0;44;33m'
#export LESS_TERMCAP_ue=$'\E[0m'
#export LESS_TERMCAP_us=$'\E[0;33m'

#export MANPAGER="/bin/sh -c \"unset PAGER;col -b -x | \
#                 vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
#                 -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
#                 -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

ulimit -c unlimited

### Added by the Heroku Toolbelt
export PATH="$PATH:/usr/local/heroku/bin"
