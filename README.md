# System Configuration
A work in progress method of managing my common system configuration.

## Usage
### Adding to a new machine

Clone into a bare repository in `$HOME`:

> git clone --bare https://github.com/ChezCrawford/config.git $HOME/.cfg

Add the alias to the current shell scope:

> alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

Checkout the actual content into `$HOME`:

> config checkout

Hide all the untracked files:

> config config --local status.showUntrackedFiles no

## Further Reading
Heavily inspired by (copied from) [durdn/cfg](https://bitbucket.org/durdn/cfg/).  
The tutorial can be found at [Atlassian Dotfiles Tutorial](https://www.atlassian.com/git/tutorials/dotfiles).
