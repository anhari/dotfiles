# #!/bin/bash
#
# (cd ~/dotfiles; git clone https://github.com/anhari/dotfiles)
#
# # install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#
# # Brew bundle
(cd ~/dotfiles; brew bundle)
#
# # Create symlinks using RCM
(cd ~/dotfiles; rcup)
#
# Install programming environments
declare -a languages=(
  "elixir"
  "erlang"
  "haskell"
  "nodejs"
  "perl"
  "postgres"
  "python"
  "redis"
  "ruby"
  "rust"
  "yarn"
)

for language in "${languages[@]}"
do
  asdf plugin add $language
  asdf install $language latest
  asdf global $language $(asdf list $language)
done

# Install neovim dependencies
asdf exec gem install neovim
asdf exec npm install -g neovim
asdf exec cpan App::cpanminus
asdf exec pip3 install --upgrade --force-reinstall --no-cache-dir neovim

# Install NPM global packages
npm install -g npm-check-updates
npm install -g prettier

# # Install apps from the App store
# mas install 424389933    # Final Cut Pro
# mas install 1423210932   # Flow.app
# mas install 1515022667   # HandyPalette
# mas install 1459809092   # Accelerate for Safari
# mas install 424390742    # Compressor
# mas install 1160435653   # AutoMounter
# mas install 1573461917   # SponsorBlock for YouTube
