dotfiles
========

Symlink your `~/.whatever-config-file` to wherever you cloned `dotfiles/.whatever-config-file`. You might have to reload your editor or shell configuration afterwards for the new configuration to take effect. Also, be sure to back up your original config files before overwriting or deleting them.

## ZSH
* .zshrc

## Git
* .gitconfig
* .gitignore

An additional `/.local-additions/git.config` and `/.gituser` are expected to exist. `/.gituser` will typically hold your git user preferences like username and email address. `/.local-additions/git.config` is supposed to hold some additional local configuration you don't wanna share across machines but can also be empty &mdash; so you may just cretae that file and leave it blank.

## tmux
* .tmux.conf

## VIM
* .vimrc
