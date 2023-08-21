# dotfiles

My personal dotfiles. *Heavily* inspired by/built from
[thoughtbot's](https://github.com/thoughtbot/dotfiles).

## Install

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install dotfiles:

    git clone git://github.com/anhari/dotfiles.git
    env RCRC=$HOME/dotfiles/rcrc rcup

Install homebrew things:

    cd ~/dotfiles
    brew bundle

Install neovim dependencies:

    pip2 install pynvim
    pip3 install pynvim
    gem install neovim
    npm install -g neovim

Install tmux plugins:

- Load a tmux session
- Install plugins using [tpm] (`CTRL+f` then `I`)

From there on out you can use `rcup` to create
[symlinks](https://en.wikipedia.org/wiki/Symbolic_link) for any new files.

## What's in here

Configurations for the following:

- [asdf](https://github.com/asdf-vm/asdf)
- [bundler](https://bundler.io/)
- [ember](https://emberjs.com/)
- [eslint](https://eslint.org/)
- [exuberant ctags](http://ctags.sourceforge.net/)
- [git](https://git-scm.com/)
- [iTerm](https://www.iterm2.com/)
- [irb](https://en.wikipedia.org/wiki/Interactive_Ruby_Shell)
- [neovim](https://neovim.io/)
- [postgres](https://www.postgresql.org/)
- [pry](http://pryrepl.org/)
- [rails](https://rubyonrails.org/)
- [rcm](http://thoughtbot.github.io/rcm/rcm.7.html)
- [rspec](https://rspec.info/)
- [tmux](https://github.com/tmux/tmux)
- [tpm](https://github.com/tmux-plugins/tpm)
- [vscode](https://code.visualstudio.com/)
- [zsh](https://www.zsh.org/)
