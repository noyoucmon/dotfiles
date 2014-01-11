dotfiles
========

## ZSH
* .zshrc

Symlink your `~/.zshrc` to wherever you cloned `dotfiles/.zshrc` and reload your zsh config.

## Git
* .gitconfig
* .gitignore

Symlink your `~/.gitconfig` to wherever you cloned `dotfiles/.gitconfig`.
An additional `/.local-additions/git.config` and `/.gituser` are expected to exist. `/.gituser` will typically hold your git user preferences like username and email address. `/.local-additions/git.config` is supposed to hold some additional local configuration you don't wanna share across machines but can also be empty &mdash; so you may just cretae that file and leave it blank.
