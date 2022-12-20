[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_CTRL_T_COMMAND='rg --files --hidden'
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPTS='-0 -1'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# Git branches
_fuzzy_git_branches() {
  zle -U "$(
  git branch --color=always --sort=committerdate | \
    grep -v '^* ' | \
    grep -v '^\s\+master' | \
    fzf-tmux --reverse --ansi --tac --select-1 | \
    sed -E 's/^[ \t]*//'
  )"
}
zle -N fuzzy-git-branches _fuzzy_git_branches
bindkey '^g^b' fuzzy-git-branches

# Rails migrations
_fuzzy_rails_migrations() {
  migration=$(bin/rails db:migrate:status | fzf-tmux --reverse)
  version=$(echo $migration | grep -oE '[0-9]{14}')
  zle -U "$(echo $version | pbcopy)"
  zle -U "$(echo $version)"
  zle -M "$migration"
}
zle -N fuzzy-rails-migrations _fuzzy_rails_migrations
bindkey '^g^m' fuzzy-rails-migrations

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

_fuzzy_pivotal_tracker_story_id() {
  story=$(
    pt mywork | \
      fzf-tmux --ansi --reverse --no-sort | \
      grep -oE '[0-9]{9}'
  )
  zle -U "$(echo $story | pbcopy)"
  zle -U "$(echo $story)"
  zle -M "$story"
}
zle -N fuzzy-pivotal-tracker-story-id _fuzzy_pivotal_tracker_story_id
bindkey '^g^s' fuzzy-pivotal-tracker-story-id
