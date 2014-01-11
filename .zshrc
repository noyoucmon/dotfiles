## oh-my-zsh
ZSH=$HOME/.oh-my-zsh
BREW=/usr/local/Cellar/

## Theme
ZSH_THEME="example"

## Locale
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

## Plugins
plugins=(git)

## Sources
source $ZSH/oh-my-zsh.sh
source $HOME/.git-flow-completion.zsh

## Key bindings
bindkey "^W" beginning-of-line
bindkey "^E" end-of-line
bindkey -v

## Options
setopt NO_BEEP

## Aliases
alias h="cd $HOME"
alias l="ls -lah"
alias lg="l | grep -i $1"
alias reload="source $HOME/.zshrc"
alias vim="$BREW/vim/7.4.052/bin/vim"

## Apache
alias a2on="sudo /usr/sbin/apachectl -e info -k start"
alias a2off="sudo /usr/sbin/apachectl -e info -k stop"
alias a2re="sudo /usr/sbin/apachectl -e info -k restart"
alias a2gfl="sudo /usr/sbin/apachectl -e info -k graceful"

## MySQL
alias myon="mysql.server start"
alias myoff="mysql.server stop"

## Nginx
alias xon="nginx"
alias xre="nginx -s reload"
alias xoff="nginx -s stop"

## OrientDB
ORIENTDB_HOME="/usr/local/Cellar/orientdb/1.3.0/libexec"
alias odb-server-start="sh $ORIENTDB_HOME/bin/server.sh &"
alias odb-server-stop="sh $ORIENTDB_HOME/bin/shutdown.sh &"
alias odb-console="sh $ORIENTDB_HOME/bin/console.sh &"

## Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_06.jdk/Contents/Home"

## Paths
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/.noyoucmon/shell-tools/bin:$PATH"
export PATH="$HOME/Dev/composer/bin:$PATH"
export PATH="$HOME/Dev/MacVim:$PATH"

## Homebrew
export PATH="$BREW/php54/5.4.22/bin:$PATH"

## Android SDK
export PATH="$HOME/SDKs/android-sdk-macosx/tools:$PATH"
export PATH="$HOME/SDKs/android-sdk-macosx/platform-tools:$PATH"