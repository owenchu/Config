# Path to your oh-my-zsh installation.
export ZSH="/Users/owenchu/.oh-my-zsh"

# Set name of the theme to load.
ZSH_THEME="owenchu"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git yarn)

source $ZSH/oh-my-zsh.sh

#
# User configuration.
#

# Paths.
export GOPATH=$HOME/Source/go
export PATH=$PATH:$(go env GOPATH)/bin

# Preferred editor.
export EDITOR='vim'

# Aliases.
alias k=kubectl
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias tl='tmux ls'

# Options.
setopt no_sharehistory

# NVM settings.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Shell completions.
source <(kompose completion zsh)
source <(minikube completion zsh)

# Google Cloud SDK settings.
# Update PATH for the Google Cloud SDK.
if [ -f '/Users/owenchu/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/owenchu/google-cloud-sdk/path.zsh.inc'; fi
# Enable shell command completion for gcloud.
if [ -f '/Users/owenchu/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/owenchu/google-cloud-sdk/completion.zsh.inc'; fi
