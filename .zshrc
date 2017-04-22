# Path to oh-my-zsh installation.
export ZSH=/Users/owenchu/.oh-my-zsh

# Command execution time stamp shown in the history command output.
HIST_STAMPS='yyyy-mm-dd'

plugins=(gitfast)

# Initialize Oh My Zsh but do not use any of its predefined aliases.
save_aliases=$(alias -L)
source $ZSH/oh-my-zsh.sh
unalias -m '*'
eval $save_aliases
unset save_aliases

#
# User configuration
#

export EDITOR='/usr/local/bin/vim'

PROMPT='%{$fg_bold[yellow]%}%m [%D{%I:%M %p}] <%~> -%n-%{$reset_color%}
%{$fg_bold[white]%}$(__git_ps1 "%s")$%{$reset_color%} '

alias b='brew'
alias cdg='cd "$(git rev-parse --show-toplevel)"'
alias cls='/usr/bin/clear'
alias cp='/bin/cp -i'
alias f='find'
alias g='git'
alias h='history'
alias ls='ls -G'
alias mv='/bin/mv -i'
alias rm='/bin/rm -i'
alias v='vim'
alias vd='vimdiff'
