# oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="example"

# Plugins
plugins=(git)

# Sources
source $ZSH/oh-my-zsh.sh
source ~/.cse-custom/.git-flow-completion.zsh

# Aliases
alias l='ls -lah'
alias lg='l | grep $1'

# Paths
export PATH="/usr/local/Cellar/php54/5.4.14/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/Users/christianseidl/SDKs/android-sdk-macosx/tools:$PATH"
export PATH="/usr/local/share/npm/bin/:$PATH"