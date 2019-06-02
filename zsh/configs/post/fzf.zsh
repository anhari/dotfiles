export FZF_CTRL_T_COMMAND='rg --files --hidden'
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# Git branches
_fuzzy_git_branches() {
  zle -U "$(
  git branch --color=always | \
    grep -v '^* ' | \
    grep -v '^\s\+master' | \
    fzf-tmux --reverse --ansi --tac --select-1 | \
    sed -E 's/^[ \t]*//'
  )"
}
zle -N fuzzy-git-branches _fuzzy_git_branches
bindkey '^g^b' fuzzy-git-branches

# Git files
_fuzzy_git_shalector() {
  commit=$(
  git log --color=always --oneline --decorate --all | \
    fzf-tmux --ansi --reverse --no-sort
  )
  zle -U "$(echo $commit | cut -d ' ' -f 1)"
  zle -M "$commit"
}
zle -N fuzzy-git-shalector _fuzzy_git_shalector
bindkey '^g^g' fuzzy-git-shalector

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
