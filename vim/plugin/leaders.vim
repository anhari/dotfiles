" Edit and source vimrc
nmap <silent> <leader>ev :Files ~/dotfiles<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>:runtime! plugin/**/*.vim<cr>:PlugInstall<cr>q

" Find git conflicts
nnoremap <leader>rb :GrepperRg ">>>>>>>"<cr>

" Find and replace
nnoremap <leader>rp :!replace<space>

" Uppercase an entire line
nnoremap <leader>uu gUU

" Open dotfiles
nnoremap <leader>df :VtrSendCommandToRunner! cd ~/dotfiles<cr>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<Space>
