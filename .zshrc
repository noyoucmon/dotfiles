# oh-my-zsh
ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="spaceship"
SPACESHIP_NVM_SHOW=false
SPACESHIP_RUBY_SHOW=false

# Paths
BREW_HOME=/usr/local/Cellar

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Plugins
plugins=(brew git git-extras node npm osx yarn)

# Includes
source $ZSH/oh-my-zsh.sh

# Custom local includes
source $HOME/.projectsrc

# Options and settings
bindkey "^R" history-incremental-search-backward
bindkey "^W" beginning-of-line
bindkey "^E" end-of-line
bindkey -v
setopt NO_BEEP

# Basic aliases
alias h="cd $HOME"
alias hw="cd $HOME/Workspaces"
alias l="ls -lah"
alias llg="ls -lah | grep -i $1"
alias psg="ps aux | grep $1"
alias reload="source $HOME/.zshrc"

# Git
alias gs="git status"

# Apache
alias a2on="sudo /usr/sbin/apachectl -e info -k start"
alias a2off="sudo /usr/sbin/apachectl -e info -k stop"
alias a2re="sudo /usr/sbin/apachectl -e info -k restart"
alias a2gfl="sudo /usr/sbin/apachectl -e info -k graceful"

# Nginx
alias xon="sudo nginx"
alias xre="sudo nginx -s reload"
alias xoff="sudo nginx -s stop"

# MySQL
alias myon="mysql.server start"
alias myoff="mysql.server stop"

# node
path=("$HOME/.node/bin" $path)
export NODE_ENV=development

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# /[s]bin paths
path=("/usr/bin" $path)
path=("/usr/local/bin" $path)
path=("/usr/local/sbin" $path)

path=($^path(N))
typeset -U path
