# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# extra files in ~/.zsh/configs/pre , ~/.zsh/configs , and ~/.zsh/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*~*.zwc(N-.); do
        . $config
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/(pre|post)/*|*.zwc)
          :
          ;;
        *)
          . $config
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*~*.zwc(N-.); do
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.zsh/configs"

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

eval "$(hub alias -s)"
CASE_SENSITIVE="false"
export NODEJS_CHECK_SIGNATURES=no

# Setup git branch in prompt
function git_prompt_info {
local ref=$(=git symbolic-ref HEAD 2> /dev/null)
local gitst="$(=git status 2> /dev/null)"

if [[ -f .git/MERGE_HEAD ]]; then
  if [[ ${gitst} =~ "unmerged" ]]; then
    gitstatus=" %{$fg[red]%}unmerged%{$reset_color%}"
  else
    gitstatus=" %{$fg[green]%}merged%{$reset_color%}"
  fi
elif [[ ${gitst} =~ "Changes to be committed" ]]; then
  gitstatus=" %{$fg[blue]%}+%{$reset_color%}"
elif [[ ${gitst} =~ "use \"git add" ]]; then
  gitstatus=" %{$fg[red]%}!%{$reset_color%}"
elif [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then
  gitstatus=" %{$fg[cyan]%}* %{$reset_color%}"
else
  gitstatus=''
fi

if [[ -n $ref ]]; then
  echo "%{$fg_bold[orange]%} ${ref#refs/heads/}%{$reset_color%}$gitstatus"
fi
}

# Prompt
# precmd () { PS1="%{%F{4}%}%~%{%F{010}%}$(git_prompt_info) %{%f%}% %% "; }

# Tomorrow Night Prompt
precmd () { PS1="%{%F{4}%}%~%{%F{002}%}$(git_prompt_info) %{%f%}% %% "; }

# set gruvbox colors
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

export FZF_DEFAULT_COMMAND='ag -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.bin:$PATH"

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/michaelanhari/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Use cat or Ctrl-V to find new bindings
# https://stackoverflow.com/questions/5314161/interpret-zsh-bindkey-escaped-sequences

# Remap Ctrl-G to Alt-C for using FZF for cd
# https://github.com/junegunn/fzf#installation
bindkey -s "^G" "^[c"

# Map Ctrl-O to jump back to the last directory
bindkey -s "^O" "cd -\n clear\n"

# Map Ctrl-Spacebar to clear the screen (tmux breaks cmd+k)
bindkey -s "^@" "clear\n"

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
# _fuzzy_git_shalector() {
#   commit=$(
#   git log --color=always --oneline --decorate --all | \
#     fzf-tmux --ansi --reverse --no-sort
#   )
#   zle -U "$(echo $commit | cut -d ' ' -f 1)"
#   zle -M "$commit"
# }
# zle -N fuzzy-git-shalector _fuzzy_git_shalector
# bindkey '^g^g' fuzzy-git-shalector

# Non-tmux version (VSCode)
_fuzzy_git_shalector() {
  commit=$(
  git log --color=always --oneline --decorate --all | \
    fzf --ansi --reverse --no-sort
  )
  zle -U "$(echo $commit | cut -d ' ' -f 1)"
  zle -M "$commit"
}
zle -N fuzzy-git-shalector _fuzzy_git_shalector
bindkey '^g^g' fuzzy-git-shalector
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig
