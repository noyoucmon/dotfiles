# oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh
DTF=$HOME/.dotfiles

# Theme
ZSH_THEME="example"

# Locale
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# Plugins
plugins=(git)

# Sources
source $ZSH/oh-my-zsh.sh
source $HOME/.git-flow-completion.zsh

# Aliases
alias h="cd $HOME"
alias l="ls -lah"
alias lg="l | grep -i $1"
alias reload="source $DTF/.zshrc"

## Apache
alias a2on="sudo /usr/sbin/apachectl -e info -k start"
alias a2off="sudo /usr/sbin/apachectl -e info -k stop"
alias a2re="sudo /usr/sbin/apachectl -e info -k restart"
alias a2gfl="sudo /usr/sbin/apachectl -e info -k graceful"

## OrientDB
ORIENTDB_HOME="/usr/local/Cellar/orientdb/1.3.0/libexec"
alias odb-server-start="sh $ORIENTDB_HOME/bin/server.sh &"
alias odb-server-stop="sh $ORIENTDB_HOME/bin/shutdown.sh &"
alias odb-console="sh $ORIENTDB_HOME/bin/console.sh &"

# Java
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home" 

# Paths
export PATH="/usr/local/Cellar/php54/5.4.20/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/Users/christianseidl/SDKs/android-sdk-macosx/tools:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/.noyoucmon/shell-tools/bin:$PATH"

