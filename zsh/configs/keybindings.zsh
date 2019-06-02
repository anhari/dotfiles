# give us access to ^Q
stty -ixon

# Use cat or Ctrl-V to find new bindings
# https://stackoverflow.com/questions/5314161/interpret-zsh-bindkey-escaped-sequences
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^K" kill-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey "^Q" push-line-or-edit
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"

# Remap Ctrl-G to Alt-C for using FZF for cd
# https://github.com/junegunn/fzf#installation
bindkey -s "^G" "^[c"
# Map Ctrl-O to jump back to the last directory
bindkey -s "^O" "cd -\n clear\n"
# Map Ctrl-Spacebar to clear the screen (tmux breaks cmd+k)
bindkey -s "^@" "clear\n"
