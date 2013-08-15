autoload -U compinit && compinit
autoload -U colors && colors

setopt correct
setopt ignoreeof
setopt noclobber
setopt prompt_subst

#
# Git auto-completion
#
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh $fpath)

#
# Prompt
#
source ~/.git-prompt.sh
PROMPT='%{$fg_bold[yellow]%}%m [%D{%I:%M %p}] <%~> -%n-%{$reset_color%}
%{$fg_bold[white]%}$(__git_ps1 "%s")$%{$reset_color%} '

#
# Aliases
#
alias cdg='cd "$(git rev-parse --show-toplevel)"'
alias cls='/usr/bin/clear'
alias cp='/bin/cp -i'
alias f='find'
alias g='git'
alias grep='grep --color=tty -d skip'
alias h='history'
alias ls='ls -F'
alias mv='/bin/mv -i'
alias r='rails'
alias rm='/bin/rm -i'
alias sr='screen -r'
alias v='vim'
alias vd='vimdiff'
alias vr='vim -R'

#
# Plugins
#
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
