# oh-my-zsh
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="mrtazz"

# Constants
BREW_HOME=/usr/local/Cellar
ORIENTDB_HOME="/usr/local/Cellar/orientdb/2.0.8/libexec"

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Plugins
plugins=(brew bower composer git git-extras git-flow osx tmux)

# Includes
source $ZSH/oh-my-zsh.sh
source $HOME/.git-flow-completion.zsh

# Custom local includes
source $HOME/.projectsrc

# Options and settings
bindkey "^W" beginning-of-line
bindkey "^E" end-of-line
bindkey -v
setopt NO_BEEP

# General aliases
alias h="cd $HOME"
alias p="cd $HOME/Projects"
alias l="ls -lah"
alias lg="l | grep -i $1"
alias reload="source $HOME/.zshrc"

# Apache
alias a2on="sudo /usr/sbin/apachectl -e info -k start"
alias a2off="sudo /usr/sbin/apachectl -e info -k stop"
alias a2re="sudo /usr/sbin/apachectl -e info -k restart"
alias a2gfl="sudo /usr/sbin/apachectl -e info -k graceful"

# Nginx
alias xon="nginx"
alias xre="nginx -s reload"
alias xoff="nginx -s stop"

## PHP
export PATH="$BREW_HOME/php55/5.5.24/bin:$PATH"
alias fpmon="launchctl load -w ~/Library/LaunchAgents/homeBREW_HOME-php.josegonzalez.php55.plist"
alias fpmoff="launchctl unload -w ~/Library/LaunchAgents/homeBREW_HOME-php.josegonzalez.php55.plist"

# MySQL
alias myon="mysql.server start"
alias myoff="mysql.server stop"

# OrientDB
alias odb-server-start="sh $ORIENTDB_HOME/bin/server.sh &"
alias odb-server-stop="sh $ORIENTDB_HOME/bin/shutdown.sh &"
alias odb-console="sh $ORIENTDB_HOME/bin/console.sh &"

# node.js
export PATH="$HOME/.node/bin:$PATH"

## /bin paths
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/lib:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"

# Custom local paths
export PATH="$HOME/.noyoucmon/shell-tools/bin:$PATH"
export PATH="$HOME/Develop/tools/bin:$PATH"
