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

export NODEJS_CHECK_SIGNATURES=no

CASE_SENSITIVE="false"

# set gruvbox colors
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

export PATH="$HOME/.bin:$PATH"

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# # Always be tmux'ing
# _not_inside_tmux() { [[ -z "$TMUX" ]] }
# ensure_tmux_is_running() {
#   if _not_inside_tmux; then
#     cd ~/dwarfcode && tat
#   fi
# }
# ensure_tmux_is_running

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship

export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
