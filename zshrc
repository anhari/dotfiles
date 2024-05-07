export PATH=/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export HOMEBREW_PREFIX=/opt/homebrew
fpath=( "$HOMEBREW_PREFIX/share/zsh/site-functions" $fpath );

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

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

export PATH="$HOME/.bin:$PATH"

# zsh-syntax-highlighting
source $HOMEBREW_PREFIX/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-autosuggestions
source $HOMEBREW_PREFIX/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# # Always be tmux'ing
_not_inside_tmux() { [[ -z "$TMUX" ]] }
ensure_tmux_is_running() {
  if _not_inside_tmux; then
    cd ~/patch_monkey/datawarehouse && tat
  fi
}
ensure_tmux_is_running

source /opt/homebrew/opt/spaceship/spaceship.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f $HOMEBREW_PREFIX/etc/profile.d/autojump.sh ] && . $HOMEBREW_PREFIX/etc/profile.d/autojump.sh

export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/opt/openssl@3/lib/pkgconfig"
export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/opt/postgresql@13/lib/pkgconfig"
export PKG_CONFIG_PATH="$HOMEBREW_PREFIX/opt/libpq/lib/pkgconfig"
fpath=($fpath "$HOMEBREW_PREFIX/.zfunctions")

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/michaelanhari/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
