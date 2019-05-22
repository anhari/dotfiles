" bundler.vim
" Lightweight support for Ruby's Bundler
" https://github.com/tpope/vim-bundler

" nnoremap <leader>bi :Bundle<cr>
nnoremap <leader>bi :VtrSendCommandToRunner! bundle install<cr>
