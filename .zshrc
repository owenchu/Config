autoload -U compinit && compinit
autoload -U colors && colors
autoload -U zmv

setopt auto_cd
setopt correct
setopt hist_ignore_dups
setopt ignoreeof
setopt no_beep
setopt noclobber
setopt prompt_subst

export EDITOR=/usr/bin/vim
export PATH=$PATH:/usr/local/share/npm/bin:~/Android/sdk/platform-tools:~/Android/android-ndk-r10e

#
# Bazel auto-completion
#
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

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
