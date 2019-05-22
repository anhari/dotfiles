" gist-vim
" vimscript for gists
" https://github.com/mattn/gist-vim

" Settings
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

" Post current file to gist
nnoremap <silent> <leader>gi :Gist<cr>

" Post current file to public gist
nnoremap <silent> <leader>gip :Gist -P<cr>

" Post all open buffers to gist
nnoremap <silent> <leader>ga :Gist -m<cr>

" Post all open buffers to public gist
nnoremap <silent> <leader>gap :Gist -m -P<cr>
