## oh-my-zsh
ZSH=$HOME/.oh-my-zsh
BREW=/usr/local/Cellar

## Theme
ZSH_THEME="candy"

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

## Apache
alias a2on="sudo /usr/sbin/apachectl -e info -k start"
alias a2off="sudo /usr/sbin/apachectl -e info -k stop"
alias a2re="sudo /usr/sbin/apachectl -e info -k restart"
alias a2gfl="sudo /usr/sbin/apachectl -e info -k graceful"

## Nginx
alias xon="nginx"
alias xre="nginx -s reload"
alias xoff="nginx -s stop"

## MySQL
alias myon="mysql.server start"
alias myoff="mysql.server stop"

## OrientDB
ORIENTDB_HOME="/usr/local/Cellar/orientdb/1.7.9/libexec"
alias odb-server-start="sh $ORIENTDB_HOME/bin/server.sh &"
alias odb-server-stop="sh $ORIENTDB_HOME/bin/shutdown.sh &"
alias odb-console="sh $ORIENTDB_HOME/bin/console.sh &"

## Paths
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/.noyoucmon/shell-tools/bin:$PATH"
export PATH="$HOME/Dev/protractor/bin:$PATH"
#export PATH="$BREW/curl/7.38.0/bin:$PATH"

## PHP
export PATH="$BREW/php54/5.4.33/bin:$PATH"
alias fpmon="launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist"
alias fpmoff="launchctl unload -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist"

## Android SDK
export PATH="$HOME/SDKs/android-sdk-macosx/tools:$PATH"
export PATH="$HOME/SDKs/android-sdk-macosx/platform-tools:$PATH"

### Heroku
export PATH="/usr/local/heroku/bin:$PATH"
