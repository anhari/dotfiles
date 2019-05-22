" Remap j and k to work on wrapping lines
nnoremap k gk
nnoremap j gj
" Remap escape to jk
inoremap jk <esc>
" Remap 0 to go to the first non-blank character
nnoremap 0 ^
" bind \ (backward slash) to grep shortcut
" command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
" bind K to grep the current word under the cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<cr>:cw<cr>
" Bind control-C to copy to clipboard
vnoremap <C-c> "*y"
" Reinstate arrow keys.  You can come on my lawn.
nnoremap <left> <left>
nnoremap <down> <down>
nnoremap <up> <up>
nnoremap <right> <right>
" Open tab
nnoremap <C-t> <esc>:tabnew<cr>
" Navigate to the beginning of a command
cnoremap <C-a> <home>
" Navigate to the end of a command
cnoremap <C-e> <end>
" Fix CTRL-H in neovim
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
