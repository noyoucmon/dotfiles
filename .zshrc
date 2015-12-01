# oh-my-zsh
ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="bullet-train"

# Paths
BREW_HOME=/usr/local/Cellar

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Plugins
plugins=(brew bower composer git git-extras git-flow osx tmux git-flow-completion)

# Includes
source $ZSH/oh-my-zsh.sh

# Custom local includes
source $HOME/.projectsrc

# Options and settings
bindkey "^W" beginning-of-line
bindkey "^E" end-of-line
bindkey -v
setopt NO_BEEP

# Basic aliases
alias h="cd $HOME"
alias p="cd $HOME/Projects"
alias d="cd $HOME/Develop"
alias l="ls -lah"
alias lg="l | grep -i $1"
alias reload="source $HOME/.zshrc"

# Apache
alias a2on="sudo /usr/sbin/apachectl -e info -k start"
alias a2off="sudo /usr/sbin/apachectl -e info -k stop"
alias a2re="sudo /usr/sbin/apachectl -e info -k restart"
alias a2gfl="sudo /usr/sbin/apachectl -e info -k graceful"

# Nginx
alias xon="sudo nginx"
alias xre="sudo nginx -s reload"
alias xoff="sudo nginx -s stop"

## PHP
export PATH="$BREW_HOME/php55/5.6.16/bin:$PATH"

# MySQL
alias myon="mysql.server start"
alias myoff="mysql.server stop"

# node.js
export PATH="$HOME/.node/bin:$PATH"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

## /bin paths
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/lib:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"

# Custom local paths
export PATH="$HOME/.noyoucmon/shell-tools/bin:$PATH"

# jenv
export PATH="$HOME/.jenv/shims:$PATH"
source "$BREW_HOME/jenv/0.4.3/libexec/libexec/../completions/jenv.zsh"
jenv rehash 2>/dev/null
export JENV_LOADED=1
unset JAVA_HOME
jenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}
