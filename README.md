# dotfiles-local

My personal dotfiles used in conjunction with
[thoughtbot's](https://github.com/thoughtbot/dotfiles).

## Install

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install thoughtbot's dotfiles:

    git clone git://github.com/thoughtbot/dotfiles.git
    env RCRC=$HOME/dotfiles/rcrc rcup

Clone mine:

    g clone https://github.com/anhari/dotfiles-local.git ~/dotfiles-local

Re-run `rcup` to create symbolic links for my personal dotfiles.

    rcup

From there on out you can use `rcup` to create
[symlinks](https://en.wikipedia.org/wiki/Symbolic_link) for any new files.

## What's in here

Configurations for the following:

- git
- vim
- tmux
- vscode
- shell
- iTerm
