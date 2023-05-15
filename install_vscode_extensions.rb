unless `which code`.empty?
  code_extensions = `cat "$HOME"/dotfiles/code_extensions`.lines.sort
  installed_extensions = `code --list-extensions`.lines.sort
  uninstalled_extensions = code_extensions - installed_extensions

  print "Checking for uninstalled VSCode extensions..."

  if uninstalled_extensions.empty?
    print "all good!\r\n"
  else
    print "found #{uninstalled_extensions.count}.\r\n"

    uninstalled_extensions.each do |extension|
      puts "Installing #{extension}..."
      `code --install-extension #{extension}`
    end

    puts "Done!"
  end
end
