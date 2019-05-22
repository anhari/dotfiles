" In a Ruby project, it might be helpful to include tags for all your gems, too.
" You can give ctags multiple locations to index, so you could feed it a bunch
" of paths from Bundler.
nnoremap <leader>rt :VtrSendCommandToRunner! ctags --recurse . `bundle show --paths`<cr>
