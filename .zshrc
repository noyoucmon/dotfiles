# oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="example"

# Plugins
plugins=(git)

# Sources
source $ZSH/oh-my-zsh.sh
source $HOME/.cse-custom/.git-flow-completion.zsh

# Aliases
alias h="cd $HOME"
alias l="ls -lah"
alias lg="l | grep $1"
alias reload="source $HOME/.zshrc"
alias apre="sudo /usr/sbin/apachectl -e info -k restart"

# Paths
export PATH="/usr/local/Cellar/php54/5.4.14/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/Users/christianseidl/SDKs/android-sdk-macosx/tools:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/Private/Projects/noyoucmon/shell-tools/bin:$PATH"