code_extensions = `cat "$HOME"/dotfiles/code_extensions`.lines.sort
installed_extensions = `code --list-extensions`.lines.sort
uninstalled_extensions = code_extensions - installed_extensions

unless uninstalled_extensions.empty?
  puts 'Installing VSCode extensions:'

  uninstalled_extensions.each do |extension|
    puts "Installing #{extension}..."
    `code --install-extension #{extension}`
  end

  puts 'Done!'
end
